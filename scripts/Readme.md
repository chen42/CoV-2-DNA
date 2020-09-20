## Ananlyze nanopore SARS-Cov-2 data 

0. remove reads mapped to hg38
```
$bash 0_dehumanize.sh
```

1. map reads to the reference genome
```
$bash 1_minimap2_sarscov2.sh
```

2. generate mapping stats
```
$bash 2_flagstat.sh
```

3. use [clair](https://github.com/chen42/SARS-CoV-2) to find SNPs
```
$bash 3_clair_snps.sh
```

