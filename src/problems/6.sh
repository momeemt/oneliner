echo | awk '{ for (i=4; i>=0; i--) { for (j=0; j<5; j++) { printf("%s", i==j ? "x" : " ") } printf("\n") } }'

# seq 5 | awk '{ for (i=1; i<$1; i++) { printf " "} print "x" }' | tac
# echo -e "    x\n   x\n  x\n x\nx"
# printf "%*s\n" 5 x 4 x 3 x 2 x 1 x