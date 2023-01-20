#! /bin/bash
# format_files.sh

DATASET="test"
OUTDIR="data/mothur/process"
FINALDIR="data/mothur/final"
LOGS="data/mothur/logs"
OTUANALYSIS="${OUTDIR}"/otu_analysis/
ERRORDIR="${FINALDIR}"/error_analysis/

echo PROGRESS: Formating file for downstream analysis

mkdir -p "${OUTDIR}"  "${LOGS}" "${FINALDIR}" "${ERRORDIR}"

mothur "#set.logfile(name=${LOGS}/reformat_files.logfile);"

# Renaming output files for use later
# For error analysis
cp "${OUTDIR}"/*.vsearch.pick.pick.fasta "${ERRORDIR}"/errorinput.fasta
cp "${OUTDIR}"/*.vsearch.pick.count_table "${ERRORDIR}"/errorinput.count_table

# For downstream OTU analysis
cp "${OUTDIR}"/*.opti_mcc.list "${FINALDIR}"/final.list
cp "${OUTDIR}"/*.opti_mcc.steps "${FINALDIR}"/final.steps
cp "${OUTDIR}"/*.opti_mcc.sensspec "${FINALDIR}"/final.sensspec
cp "${OUTDIR}"/*.opti_mcc.shared "${FINALDIR}"/final.shared
cp "${OUTDIR}"/*.0.03.cons.taxonomy "${FINALDIR}"/final.cons.taxonomy
cp "${OUTDIR}"/*.0.03.cons.tax.summary "${FINALDIR}"/final.cons.tax.summary
cp "${OUTDIR}"/*.0.03.rep.fasta "${FINALDIR}"/final.rep.fasta
cp "${OUTDIR}"/*.0.03.rep.count_table "${FINALDIR}"/final.rep.count_table
cp "${OUTDIR}"/*.0.03.lefse "${FINALDIR}"/final.lefse
cp "${OUTDIR}"/*.0.03.biom "${FINALDIR}"/final.biom

# ###############
# # Cleaning Up #
# ###############

# echo PROGRESS: Cleaning up working directory.

# # Making dir for storing intermediate files (can be deleted later)
# mkdir -p "${OUTDIR}"/intermediate/

# # Moving all remaining intermediate files to the intermediate dir
# mv "${OUTDIR}"/${DATASET}* "${OUTDIR}"/intermediate/
