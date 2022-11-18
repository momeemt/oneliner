chmod -r tmp/a
cat tmp/a

chmod -w tmp/a
echo 1 > tmp/a

chmod +rw tmp/a
cat tmp/a
echo 2 > tmp/a

whoami

# 6 -> 110 = rw-
# 4 -> 100 = r--
# 0 -> 000 = ---
chmod 640 tmp/a