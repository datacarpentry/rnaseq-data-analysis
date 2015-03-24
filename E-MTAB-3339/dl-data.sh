#!/bin/bash
for i in `seq 10 15`;
do
	wget ftp.sra.ebi.ac.uk/vol1/fastq/ERR762/ERR7625$i/ERR7625$i.fastq.gz
done
