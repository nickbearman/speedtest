#original speed test
wget --output-document=/dev/null --report-speed=bits http://speedtest.wdc01.softlayer.com/downloads/test10.zip 2>&1 | grep ') -' >> /home/pi/speedtest/speedtest-results.txt

#new speedtest 
#date >> speedtest-results.txt
#speedtest-cli --simple >> speedtest-results.txt

#speedtest script
#speedtest-cli-extras/bin/speedtest-csv >> speedtest-results.csv
#echo "" >> speedtest-results.csv

#run R script
Rscript ~/speedtest/script.R

