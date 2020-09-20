


for i in `ls *dehumanized.fastq.gz`; do
	b=`basename $i fastq.gz `sarscov2.bam
	echo "generating $b"
	minimap2 -cax splice -t 10 ../cov2refgenome.fa $i   |samtools view -bSh - > $b
done


