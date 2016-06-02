#! /bin/bash
# qsub -cwd -N JOB_ID -S /bin/bash scriptname

DensityFiles=(http://www.uwencode.org/proj/ForDavide/density/A549-DS14289.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/AG10803-DS12374.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/AoAF-DS13513.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/CD14-DS17215.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/CD19-DS17186.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/CD20-DS18208.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/CD34-DS12274.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/CD3_CordBlood-DS17706.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/CD3-DS17198.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/CD4-DS17212.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/CD4pos_N-DS14108.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/CD56-DS17189.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/CD8-DS17203.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/fBrain-DS11872.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/fHeart-DS12531.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/fIntestine_Lg-DS17313.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/fKidney-DS20786.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/fLung-DS14724.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/fMuscle_leg-DS20239.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/fPlacenta-DS20346.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/fSkin_fibro_leg_R_quad-DS19943.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/fSpinal_cord-DS20351.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/fStomach-DS17878.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/fThymus-DS20341.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/GM06990-DS7748.75.20.uniques-density.27.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/GM12865-DS12436.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HAEpiC-DS12663.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HAh-DS15192.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HAsp-DS14790.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HCFaa-DS13480.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HCF-DS12501.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HCM-DS12599.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HCPEpiC-DS12447.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HEEpiC-DS12763.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HepG2-DS7764.75.20.uniques-density.27.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/hESCT0-DS11909.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HFF-DS15115.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HGF-DS11752.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HIPEpiC-DS12684.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HMF-DS13368.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HMVEC_dBlAd-DS13337.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HMVEC_dBlNeo-DS13242.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HMVEC_dLyNeo-DS13150.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HMVEC_LBl-DS13372.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HMVEC_LLy-DS13185.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HPAF-DS13411.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HPdLF-DS13573.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HPF-DS13390.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HRCE-DS10666.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HSMM-DS14426.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/hTH17-DS11039.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/hTH1-DS7840.75.20.uniques-density.27.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/hTH2-DS17597.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/hTR-DS14702.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HUVEC-DS10060.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/HVMF-DS13981.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/IMR90-DS13219.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/iPS_19_11-DS15153.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/iTH1-DS18018.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/iTH2-DS17603.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/K562-DS9767.75.20.uniques-density.27.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/LHCN_M2-DS20548.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/M059J-DS20493.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/Mesendoderm-DS19310.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/MSC-DS21042.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/NB4-DS12543.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/NHA-DS12800.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/NHDF_Ad-DS12863.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/NHDF_Neo-DS11923.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/NHLF-DS12829.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/Psoas_Muscle-DS20325.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/RPMI_7951-DS20909.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/SAEC-DS10518.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/Skin_Fibroblasts-DS18224.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/Skin_Keratinocytes-DS18692.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/Skin_Melanocytes-DS18590.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/SkMC-DS11949.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/SKNSH-DS8482.75.20.uniques-density.27.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/Small_Bowel_Mucosa-DS20770.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/T_47D-DS19794.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/Trophoblast-DS19317.75.20.uniques-density.36.hg19.bed.jarch
http://www.uwencode.org/proj/ForDavide/density/vHMEC-DS18406.75.20.uniques-density.36.hg19.bed.jarch)

# this can also be broken up into multiple jobs on a cluster,
# so you can download multiple files simultaneously

for file in ${DensityFiles[*]}
do
    wget $file
done

PeakFiles=(http://www.uwencode.org/proj/ForDavide/peaks/A549-DS14289.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/AG10803-DS12374.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/AoAF-DS13513.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/CD14-DS17215.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/CD19-DS17186.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/CD20-DS18208.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/CD34-DS12274.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/CD3_CordBlood-DS17706.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/CD3-DS17198.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/CD4-DS17212.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/CD4pos_N-DS14108.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/CD56-DS17189.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/CD8-DS17203.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/fBrain-DS11872.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/fHeart-DS12531.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/fIntestine_Lg-DS17313.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/fKidney-DS20786.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/fLung-DS14724.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/fMuscle_leg-DS20239.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/fPlacenta-DS20346.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/fSkin_fibro_leg_R_quad-DS19943.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/fSpinal_cord-DS20351.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/fStomach-DS17878.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/fThymus-DS20341.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/GM06990-DS7748.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/GM12865-DS12436.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HAEpiC-DS12663.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HAh-DS15192.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HAsp-DS14790.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HCFaa-DS13480.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HCF-DS12501.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HCM-DS12599.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HCPEpiC-DS12447.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HEEpiC-DS12763.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HepG2-DS7764.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/hESCT0-DS11909.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HFF-DS15115.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HGF-DS11752.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HIPEpiC-DS12684.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HMF-DS13368.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HMVEC_dBlAd-DS13337.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HMVEC_dBlNeo-DS13242.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HMVEC_dLyNeo-DS13150.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HMVEC_LBl-DS13372.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HMVEC_LLy-DS13185.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HPAF-DS13411.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HPdLF-DS13573.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HPF-DS13390.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HRCE-DS10666.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HSMM-DS14426.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/hTH17-DS11039.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/hTH1-DS7840.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/hTH2-DS17597.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/hTR-DS14702.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HUVEC-DS10060.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/HVMF-DS13981.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/IMR90-DS13219.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/iPS_19_11-DS15153.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/iTH1-DS18018.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/iTH2-DS17603.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/K562-DS9767.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/LHCN_M2-DS20548.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/M059J-DS20493.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/Mesendoderm-DS19310.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/MSC-DS21042.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/NB4-DS12543.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/NHA-DS12800.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/NHDF_Ad-DS12863.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/NHDF_Neo-DS11923.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/NHLF-DS12829.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/Psoas_Muscle-DS20325.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/RPMI_7951-DS20909.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/SAEC-DS10518.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/Skin_Fibroblasts-DS18224.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/Skin_Keratinocytes-DS18692.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/Skin_Melanocytes-DS18590.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/SkMC-DS11949.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/SKNSH-DS8482.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/Small_Bowel_Mucosa-DS20770.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/T_47D-DS19794.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/Trophoblast-DS19317.peaks.fdr0.01.hg19.bed.gz
http://www.uwencode.org/proj/ForDavide/peaks/vHMEC-DS18406.peaks.fdr0.01.hg19.bed.gz)

for file in "${PeakFiles[@]}"
do
    wget "$file"
done

exit
