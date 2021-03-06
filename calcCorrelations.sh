#! /bin/bash
# qsub -cwd -N JOB_ID -S /bin/bash calcCorrelations.sh

if [ "$1" == "" ] || [ "$2" == "" ] || [ "$3" == "" ] || [ "$4" == "" ] || [ "$5" == "" ] || [ "$6" == "" ]; then
    echo -e "Usage:  $0 infile THRESHOLD outfile_all_promotersFirst.bed8 outfile_aboveTHRESHOLD_promotersFirst.bed8 outfile_all_distalsFirst.bed8 outfile_aboveTHRESHOLD_distalsFirst.bed8"
    echo -e "\twhere THRESHOLD is traditionally 0.7"
    exit
fi

INFILE=$1
THRESHOLD=$2
OUTFILE_ALL_PROM_FIRST=$3
OUTFILE_THRESHOLDED_PROM_FIRST=$4
OUTFILE_ALL_DISTAL_FIRST=$5
OUTFILE_THRESHOLDED_DISTAL_FIRST=$6

EXE=correlate_dhs

if ! which "$EXE" 2>&1 >/dev/null ; then
    echo -e "Error:  Unable to find required file $EXE."
    exit
fi
if [ ! -s "$INFILE" ]; then
    echo -e "Error:  Unable to find required input file $INFILE."
    exit
fi

"$EXE" "$INFILE" "$OUTFILE_ALL_PROM_FIRST"

if [ -s "$OUTFILE_ALL_PROM_FIRST" ]; then
    awk -v threshold="$THRESHOLD" '{if($8>=threshold){print;}}' "$OUTFILE_ALL_PROM_FIRST" > "$OUTFILE_THRESHOLDED_PROM_FIRST"
    awk 'BEGIN{OFS="\t"}{print $5,$6,$7,$4,$1,$2,$3,$8;}' "$OUTFILE_ALL_PROM_FIRST" \
        | sort-bed - \
        > "$OUTFILE_ALL_DISTAL_FIRST"
    awk -v threshold="$THRESHOLD" '{if($8>=threshold){print;}}' "$OUTFILE_ALL_DISTAL_FIRST" > "$OUTFILE_THRESHOLDED_DISTAL_FIRST"
fi

exit
