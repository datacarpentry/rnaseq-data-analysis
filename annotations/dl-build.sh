#!/bin/bash
for i in `seq 1 22`;
do
	wget ftp://ftp.ensembl.org/pub/release-77/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.chromosome.$i.fa.gz
	gunzip Homo_sapiens.GRCh38.dna.chromosome.$i.fa.gz
	/opt/RNA-Seq/bin/bowtie2-2.2.1/bowtie2-build Homo_sapiens.GRCh38.dna.chromosome.$i.fa chr$i
done
