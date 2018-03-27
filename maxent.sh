#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N EcuadorBats
#$ -o $JOB_NAME.o$JOB_ID
#$ -e $JOB_NAME.e$JOB_ID
#$ -q omni
#$ -pe mpi 36
#$ -P quanah

module load java

java -Xms1G -Xmx4G -jar /home/sbalague/Maxent-master/ArchivedReleases/3.3.3k/maxent.jar nowarnings noprefixes -E "" -E EcuadorBats responsecurves outputformat=raw outputdirectory=/lustre/work/sbalague/ebresults outputfiletype=asc  samplesfile=/home/sbalague/projects/EcuadorBats/bats_double_apostrophe.csv perspeciesresults=true environmentallayers=/home/sbalague/projects/EcuadorBats/ASCII randomseed nowarnings notooltips noaskoverwrite autorun randomtestpoints=0 jackknife=true biasfile=/home/sbalague/projects/EcuadorBats/BiasFile/Bias_File.asc replicates=100 replicatetype=crossvalidate nothreshold nohinge noautofeature nodoclamp maximumiterations=10000 biastype=3 beta_lqp=.95
