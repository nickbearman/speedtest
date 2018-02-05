#run R script to output summary.txt
Rscript /home/pi/speedtest/script.R

#upload speedtest file
/home/pi/Dropbox-Uploader/dropbox_uploader.sh upload /home/pi/speedtest/speedtest-results.txt speedtest-results.txt
#upload summary file
/home/pi/Dropbox-Uploader/dropbox_uploader.sh upload /home/pi/speedtest/summary.txt summary.txt

