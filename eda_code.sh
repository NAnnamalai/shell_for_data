# DATA: https://raw.githubusercontent.com/fivethirtyeight/data/master/cousin-marriage/cousin-marriage-data.csv
# headers
# Country,Percent

LIGHT_GREEN='\033[1;32m'
NC='\033[0m'

printf "=================================================================================== \n"
printf " ${LIGHT_GREEN} first 3 rows ${NC}\n"
head -3 cousin_marriage_data.csv
printf "=================================================================================== \n"

printf "=================================================================================== \n"
printf " ${LIGHT_GREEN} end 3 rows ${NC}\n"
tail -3 cousin_marriage_data.csv
printf " \n"
printf "=================================================================================== \n"

printf "=================================================================================== \n"
printf " ${LIGHT_GREEN} no of rows ${NC}\n"
wc -l cousin_marriage_data.csv
printf "=================================================================================== \n"

printf "=================================================================================== \n"
printf " ${LIGHT_GREEN} search for a particular string ${NC}\n"
grep "India\|Sri Lanka" cousin_marriage_data.csv | head
printf "=================================================================================== \n"

printf "=================================================================================== \n"
printf " ${LIGHT_GREEN} top 5 countries by percentage in descending order ${NC}\n"
sort -t "," cousin_marriage_data.csv -k 2 -n -r | head -5
printf "=================================================================================== \n"

printf "=================================================================================== \n"
printf " ${LIGHT_GREEN} top 5 countries by percentage in ascending order ${NC}\n"
sort -t "," cousin_marriage_data.csv -k 2 -n | head -5
printf "=================================================================================== \n"

printf "=================================================================================== \n"
printf " ${LIGHT_GREEN} replacing comma to tab delimeter ${NC}\n"
cat cousin_marriage_data.csv | tr "," "|" | head -5
printf "=================================================================================== \n"
