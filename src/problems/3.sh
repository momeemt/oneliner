find tmp -type f | grep "^tmp/.$" | sed "s/tmp\///" | xargs -P2 -I@ mv ./tmp/@ ./out/00000@
find tmp -type f | grep "^tmp/..$" | sed "s/tmp\///" | xargs -P2 -I@ mv ./tmp/@ ./out/0000@
find tmp -type f | grep "^tmp/...$" | sed "s/tmp\///" | xargs -P2 -I@ mv ./tmp/@ ./out/000@
find tmp -type f | grep "^tmp/....$" | sed "s/tmp\///" | xargs -P2 -I@ mv ./tmp/@ ./out/00@
find tmp -type f | grep "^tmp/.....$" | sed "s/tmp\///" | xargs -P2 -I@ mv ./tmp/@ ./out/0@

# --- 解答 ---

time ls -U | xargs -P2 rename 's/^/000000/;s/0*([0-9]{7})/$1/' # これめっちゃ賢い...
