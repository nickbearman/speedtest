#speed test using wget
wget --output-document=/dev/null --report-speed=bits http://speedtest.wdc01.softlayer.com/downloads/test10.zip 2>&1 | grep ') -' >> /home/pi/speedtest/speedtest-results.txt

#run R script to output summary.txt
#Rscript /home/pi/speedtest/script.R
#moved to speedtest-upload.sh
