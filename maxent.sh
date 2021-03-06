#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N EcuadorBats
#$ -o $JOB_NAME.o$JOB_ID
#$ -e $JOB_NAME.e$JOB_ID
#$ -q omni
#$ -pe mpi 144
#$ -P quanah

module load java

java -mx700G -jar /home/sbalague/Maxent-master/ArchivedReleases/3.3.3k/maxent.jar nowarnings noprefixes -E responsecurves jackknife=true  outputformat=raw outputfiletype=asc outputdirectory=/lustre/work/sbalague/ebresults_CD samplesfile=/home/sbalague/projects/EcuadorBats/Bats_rarefied_points.csv environmentallayers=/home/sbalague/projects/EcuadorBats/ASCII_F randomseed nowarnings notooltips noaskoverwrite autorun randomtestpoints=0 betamultiplier=1 biasfile=/home/sbalague/projects/EcuadorBats/Bias_File/bias_file.asc replicates=100 replicatetype=crossvalidate visible=false toggleslayertype=lctype nothreshold nohinge noautofeature nodoclamp maximumiterations=10000 biastype=3 threads=144 beta_lqp=.95
