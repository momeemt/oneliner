seq 4 | awk '{printf("mkdir %s_%d\n", $1%2 ? "odd" : "even", $1)}' | bash