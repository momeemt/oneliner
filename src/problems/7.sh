cat shellgei160/qdata/7/kakeibo.txt | \
awk 'BEGIN{sum=0} { sum += $2 ~ /^*/ || $1 < "20191001" ? int($3 * 1.08) : int($3 * 1.1) } END{print sum}'

# cat shellgei160/qdata/7/kakeibo.txt | \
# awk '{tax=($1<"20191001"||$2~"^*") ? 1.08 : 1.1; print $0, tax}' | \
# awk '{print int($3*$4)}' | numsum