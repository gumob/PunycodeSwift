#!/usr/bin/env zsh

executeCommand () {
	local cmd=$1
	echo "$ $cmd"
    eval $cmd
	echo
}

function confirmCommand () {
    msg=$1
	id_start=$2
	id_end=$3
	re="^[0-9]+$"
	while true; do
		echo -en "${msg}"
		read input
		if [[ ${input} =~ $re ]] ; then
		    if (( ${id_start} <= ${input} && ${input} <= ${id_end} )); then
                return ${input}
            fi
		else
		    echo -e "\nPlease input valid id."
		fi
	done
}

########################
# Variable
########################

local -a command_items=(
"install:bundle install"
"update:bundle update:Update gems"
)
command_items_id_start=1
command_items_id_end=$((${#command_items[@]}))

########################
# Main
########################

bundle config set --local clean 'true'
bundle config set --local path '.bundle'

tput setaf 4;

echo "\nSelect fastlane command\n";

for ((i=1; i <= ${#command_items}; i++)); do
    command_item=${command_items[$i]}
    IFS=':' read -r -A ret <<< "$command_item"
    id=${ret[0]}
    command=${ret[1]}
    description=${ret[2]}
    printf "%4s $ %-50s %-60s" "[${i}]" "${command}" "${description}"
    echo
done

# Print input dialog
msg="\nInput id to execute. [${command_items_id_start}-${command_items_id_end}]: "
confirmCommand "${msg}" ${command_items_id_start} ${command_items_id_end}
index_to_execute=$?

selected_command_item=${command_items[$index_to_execute]}
IFS=':' read -r -A selected_command_item <<< "$selected_command_item"
selected_command_id=${selected_command_item[1]}
selected_command=${selected_command_item[2]}

# Execute command
echo
executeCommand "${selected_command}"

echo "\nAll done.\n";

tput sgr0