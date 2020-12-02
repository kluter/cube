#!/bin/bash

# normaler bash Befehl um sen2cor auszuführen:
# Sen2Cor-02.08.00-Linux64/bin/L2A_Process /media/pak44ck/4e59e129-3a08-43a9-9890-45d3981b0af6/data_sat_download/sentinel2/

printf "\n"
echo "==============================="
echo "=== | Sen2Core | 02.08.00 | ==="
echo "==============================="

printf "\n\nEnter path to your input directory (all Sentinel.SAFE files): \n"
read input_dir
#input_dir="/media/pak44ck/4e59e129-3a08-43a9-9890-45d3981b0af6/data_sat_download/sentinel2"

printf "\n\nEnter path to your output directory (for L2A processed data): \n"
read output_dir
#output_dir="/media/pak44ck/4e59e129-3a08-43a9-9890-45d3981b0af6/data_sat_processed/sen2cor_output/"

cd $input_dir

sub=".SAFE"
counter=1
# als Loop durch Ordnerstruktur
for d in *; do
    str=$input_dir/$d
        if [[ "$str" == *"$sub" ]]; 
        then bash $HOME/Sen2Cor-02.08.00-Linux64/bin/L2A_Process --output_dir $output_dir $input_dir/$d/ 
        printf "\n"
        echo "==============================="
        echo " ===== File $counter processed ===== "
        echo "==============================="
        ((counter++))
        fi
done

printf "\n\n"
echo "==============================="
echo "===== Processing finished ====="
echo "==============================="