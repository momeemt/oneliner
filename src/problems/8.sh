cat shellgei160/qdata/8/access.log \
| awk '{ print $4 }' \
| sed -E 's/\[..\/...\/....:(..):..:..$/\1/' \
| awk 'BEGIN{am=0; pm=0} $1<=12 { am++ } $1>=13 { pm++ } END{print "午前", am; print "午後", pm}'

# awk -F: '{print $(NF-2)}' shellgei160/qdata/8/access.log \
# | awk '$1<"12"{print "午前"} $1>=12{print "午後"}' \
# | sort | uniq -c

# sed -r 's@.*\[|\]|/@@g;s/:/ /' shellgei160/qdata/8/access.log \
# | date -f- +%p \
# | sort | uniq -c