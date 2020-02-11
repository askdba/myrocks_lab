# SET GLOBAL rocksdb_bulk_load = 1
# SET GLOBAL local_infile = 1;
dir=/home/ec2-user/scripts/data
mysql_password=S3cre3t!
cd $dir
ls -1 | while read line
do
echo $line
gzip --stdout -d $line | mysql --local-infile innodb_test -e "LOAD DATA LOCAL INFILE '/dev/stdin' INTO TABLE ontime_innodb FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"';"  --user=root -p$mysql_password
done
