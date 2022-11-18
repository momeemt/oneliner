grep "\.exe$" $(find shellgei160/ | grep files)

echo ---

cat $(find shellgei160/ | grep files) | grep "\.exe$"
