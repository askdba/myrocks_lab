for s in `seq 2018 2019`
do
for m in `seq 1 12`
do
cd data
wget https://transtats.bts.gov/PREZIP/On_Time_Reporting_Carrier_On_Time_Performance_1987_present_${s}_${m}.zip
done
done
