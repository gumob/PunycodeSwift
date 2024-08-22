#!/bin/zsh

local option_list=(
	"bundle exec fastlane ios prebuild"
	"bundle exec fastlane ios set_version"
	"bundle exec fastlane ios bump_version"
	"bundle exec fastlane ios tests"
	"bundle exec fastlane ios lint_spm"
	"bundle exec fastlane ios build_carthage"
	"bundle exec fastlane ios lint_cocoapods"
	"bundle exec fastlane ios push_cocoapods"
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