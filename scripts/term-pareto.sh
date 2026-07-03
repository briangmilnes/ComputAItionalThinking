#!/usr/bin/env bash
# term-pareto.sh — Pareto of vocabulary-term usage in a source corpus.
#
# Counts how often each vocabulary headword actually occurs in the extracted
# source text (materials/**.txt) of one or more classes, ranks terms by
# frequency, and reports the cumulative distribution (the high-usage head vs
# the long tail).
#
# Usage:
#   scripts/term-pareto.sh <class-dir> [<class-dir> ...]
#     one dir   -> that class's Pareto
#     many dirs -> a pooled corpus-wide Pareto over all of them
#   e.g.  scripts/term-pareto.sh products/UWCSE/cse505
#         scripts/term-pareto.sh products/*/*/            # every class, aggregate
#
# Normalization (light): each headword drops a trailing "(...)" qualifier and
# takes the first of "a / b" alternatives; an uppercase acronym inside the
# parentheses (e.g. "(SSA)") is counted as an alternate surface form. Matching
# is whole-word and folds regular plurals (+s, +es, y->ies). Counts stay
# approximate — irregular plurals and rare alternate spellings are not folded.

set -euo pipefail
[ "$#" -ge 1 ] || { echo "usage: term-pareto.sh <class-dir> [<class-dir> ...]" >&2; exit 1; }

corpus="$(mktemp)"; raw="$(mktemp)"; norm="$(mktemp)"; counts="$(mktemp)"
trap 'rm -f "$corpus" "$raw" "$norm" "$counts"' EXIT

# --- Pool corpus text and raw headwords from every given class dir ----------
for dir in "$@"; do
  dir="${dir%/}"
  [ -f "$dir/vocabulary.md" ] || continue
  grep -oE '^\*\*[^*]+\*\*' "$dir/vocabulary.md" | sed -E 's/^\*\*//; s/\*\*$//' >> "$raw" || true
  if [ -d "$dir/materials" ]; then
    find "$dir/materials" -type f -name '*.txt' -print0 2>/dev/null \
      | xargs -0 cat -- 2>/dev/null >> "$corpus" || true
  fi
done
tr '[:upper:]' '[:lower:]' < "$corpus" > "$corpus.lc" && mv "$corpus.lc" "$corpus"
[ -s "$corpus" ] || { echo "empty corpus (no materials/*.txt on disk for given dirs)" >&2; exit 1; }

# --- Normalize headwords -> unique "base<TAB>abbr" --------------------------
while IFS= read -r r; do
  [ -n "$r" ] || continue
  abbr=$(printf '%s' "$r" | grep -oE '\([A-Z0-9][A-Z0-9./+-]{1,7}\)' | head -1 | tr -d '()' | tr '[:upper:]' '[:lower:]' || true)
  base=$(printf '%s' "$r" | sed -E 's/\([^)]*\)//g; s# / .*##; s/[[:space:]]+/ /g; s/^ //; s/ $//' | tr '[:upper:]' '[:lower:]')
  [ "${#base}" -gt 1 ] || continue
  printf '%s\t%s\n' "$base" "$abbr"
done < "$raw" | sort -u -t"$(printf '\t')" -k1,1 > "$norm"

# --- Count whole-word occurrences (with plural folding) per term ------------
while IFS="$(printf '\t')" read -r base abbr; do
  vs=$(printf '%s\n%ss\n%ses\n' "$base" "$base" "$base")
  case "$base" in *y) vs+=$'\n'"${base%y}ies";; esac
  [ -n "$abbr" ] && vs+=$'\n'"$abbr"$'\n'"${abbr}s"
  mapfile -t variants < <(printf '%s\n' "$vs" | awk 'length>1' | sort -u)
  args=(); for v in "${variants[@]}"; do args+=(-e "$v"); done
  c=$(grep -owF "${args[@]}" -- "$corpus" 2>/dev/null | wc -l || true)
  printf '%s\t%s\n' "$c" "$base"
done < "$norm" | sort -rn -k1,1 > "$counts"

# --- Pareto table + summary -------------------------------------------------
total=$(awk -F'\t' '{s+=$1} END{print s+0}' "$counts")
awk -F'\t' -v tot="$total" '
  BEGIN{ printf "%-5s %-8s %-7s %s\n","RANK","COUNT","CUM%","TERM" }
  { cum+=$1; pct=(tot?100*cum/tot:0);
    printf "%-5d %-8d %-6.1f  %s\n", NR, $1, pct, $2;
    if(!r50 && pct>=50) r50=NR; if(!r80 && pct>=80) r80=NR;
    if($1==0) z++; n=NR }
  END{ printf "\n# %d terms, %d total occurrences\n", n, tot;
       printf "# %d terms (%.0f%%) cover 50%% of usage; %d terms (%.0f%%) cover 80%%\n", r50,(n?100*r50/n:0), r80,(n?100*r80/n:0);
       printf "# %d terms (%.0f%%) never appear in the corpus\n", z+0,(n?100*(z+0)/n:0) }
' "$counts"
