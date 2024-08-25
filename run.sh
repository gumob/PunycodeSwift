#!/bin/zsh

# Check if the 'fzf' command is available in the system
if ! command -v fzf &> /dev/null; then
    tput setaf 1; echo "fzf is not installed."; tput sgr0
    exit 1
fi

local option_list=(
	"fastlane prebuild"
	"fastlane test_all"
	"fastlane build_spm"
	"fastlane build_carthage"
	"fastlane lint_cocoapods"
	"fastlane push_cocoapods"
	"fastlane set_version"
	"fastlane bump_version"
	" "
	"gem install bundler"
	"gem update bundler"
	"bundle install"
	"bundle update"
	"bundle list"
	"bundle outdated"
	"bundle clean"
)

local command=$(printf "%s\n" "${option_list[@]}" | fzf --ansi --prompt="Select a fastlane command > ")

if [ -z "$command" ]; then
	echo "No command selected"
	exit 1
elif [[ "$command" == fastlane* ]]; then
	command="bundle exec $command"
elif [[ "$command" == bundle* ]]; then
    bundle config set --local clean 'true'
    bundle config set --local path '.bundle'
fi

# command="bundle exec $command"
echo "\n$command\n"
eval $command

exit 0