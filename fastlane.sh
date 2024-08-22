#!/bin/zsh

local option_list=(
	"bundle exec fastlane prebuild"
	"bundle exec fastlane set_version"
	"bundle exec fastlane bump_version"
	"bundle exec fastlane test_all"
	"bundle exec fastlane lint_spm"
	"bundle exec fastlane build_carthage"
	"bundle exec fastlane lint_cocoapods"
	"bundle exec fastlane push_cocoapods"
)

if ! command -v fzf &> /dev/null; then
    tput setaf 1; echo "fzf is not installed."; tput sgr0
    exit 1
fi


local command=$(printf "%s\n" "${option_list[@]}" | fzf --ansi --prompt="Select a fastlane command > ")

if [ -z "$command" ]; then
	echo "No command selected"
	exit 1
fi

echo "\n$command\n"
eval $command

exit 0