

ref_hg38="../hg38/hg38.mmi"
for i in `ls *fastq.gz`; do
	s=`basename $i .fastq.gz`
	echo "$i $s"
	minimap2 -t 48 -cax splice $ref_hg38 $i | samtools view -bSh - > ${s}.hg38.bam
	samtools view -u -f 4 ${s}.hg38.bam | samtools bam2fq - | pigz -9 > ${s}.dehumanized.fastq.gz
done

