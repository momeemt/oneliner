grep '^pool' shellgei160/qdata/5/ntp.conf | awk '{print $2}'

# cat shellgei160/qdata/5/ntp.conf | awk '$1=="pool"' | awk '{print $2}'