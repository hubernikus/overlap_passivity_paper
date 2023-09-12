main_folder="../obstacle_aware_passivity"
old_folder="../obstacle_aware_passivity_v1"

file="main.tex"
# local_path = ""

# Bash function to compare to latex files
function compare_latex_files {
	file_name=$1
	local_path=$2

	# Get the old file
	old_file=$old_folder/$local_path/$file_name
	# Get the new file
	new_file=$main_folder/$local_path/$file_name
	# Compare the files
	latexdiff --math-markup=whole $old_file $new_file > $local_path/$file_name
   # latexdiff "${$1}/${file}" "${old_folder}/${file}" > "${file}"
}


compare_latex_files "main.tex" "."