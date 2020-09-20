

for i in `ls s*sarscov2.bam`; do
	s=`basename $i .bam`
	v=${s}.vcf
	echo "$i --> $s --> $v"
	samtools sort $i >${s}_sorted.bam
	samtools index ${s}_sorted.bam 
	clair.py callVarBam  --chkpnt_fn "./ont/model"  --ref_fn "../cov2refgenome.fa"  --bam_fn "${s}_sorted.bam"  --ctgName "NC_045512.2"  --sampleName "$s" --thread 10 --call_fn "$v" 

done
