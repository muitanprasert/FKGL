
sysdir=./dress/all-system-output/WikiLarge/test/lower
input=./simplification/data/turkcorpus/test.8turkers.tok.norm
ref=./simplification/data/turkcorpus/test.8turkers.tok.turk

for sysout in `ls $sysdir`
do
	./star $sysdir/$sysout $ref $input
	echo "====================="
	echo $sysout
	echo "\n\n\n"
done
