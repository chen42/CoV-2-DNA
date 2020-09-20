

for i in `ls *dehumanized.sarscov2_sorted.bam  `; do
	echo $i
	echo "==============================================";
	samtools flagstat $i 
	echo ""
	echo ""
done
