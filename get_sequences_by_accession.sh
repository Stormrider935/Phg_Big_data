mkdir -p Phg_acc_meta_data_files
while IFS= read -r acc; do
                echo "Processing Accessionnumber: $acc"
                efetch -db nuccore -id $acc -format fasta > Phg_acc_meta_data_files/$acc.fasta
		efetch -db nuccore -id $acc -format gb > Phg_acc_meta_data_files/$acc.gb
                echo "Wrote $acc to file"
                sleep "1"
        done < Phg_Big_data_acc_numbers

