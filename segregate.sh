cd photos
for entry in `ls *.jpg`
do
	file=${entry%.*}
	year=${file%%-*}
	x=${file#*-}
	month=${x%-*}
	mkdir -p $year/$month
	mv $entry $year/$month
done
echo "Successfully Segregated all the photos"