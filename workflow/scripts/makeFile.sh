#! /bin/bash

# Creating basic variables
# SAMPLEDIR="data/reads"
SAMPLEDIR="data/test"
OUTDIR="data/mothur/process"
LOGS="data/mothur/logs"

###############################
echo PROGRESS: Making mothur-based sample mapping file.
###############################

mkdir -p "${OUTDIR}"  "${LOGS}"

mothur "#set.logfile(name=${LOGS}/makeMiles.logfile);
      make.file(type=gz, inputdir="${SAMPLEDIR}", outputdir="${OUTDIR}", prefix=test);"
