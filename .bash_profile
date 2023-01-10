alias jj='mkdir -p /Users/mac/ray/docs/$(date +%Y)/$(date +%Y-%m)/; vim /Users/mac/ray/docs/$(date +%Y)/$(date +%Y-%m)/week-$(date +%w).md'

alias ll='ls -la'
alias cr='cd /Users/mac/src'
alias cry='cd /Users/mac/src/py'
alias crg='cd /Users/mac/src/go'
alias python='python3'


# git 配置
alias gg='git log'
alias ggg='git log --oneline --graph'

alias gc='git_checkout'
alias gcn='git_checkout_new'

alias gs='git status'
alias gsl='git stash list'
alias gsp='git stash pop'
# alias gpull='pull'
# alias gpush='push'
alias gb='git branch'
alias grmod='git restore go.mod'

alias gss='gss() { git stash save "$1"; }; gss'
alias gd='diff() { git diff "$1"; }; diff'
alias ga='add() { git add "$1"; }; add'
alias gm='commit() { git commit -m "$1"; }; commit'
alias gmok='gok() { git add . && git commit -m ok; }; gok'
# alias gclone='clone() { git clone ssh://git@xxx/"$1".git; }; clone'

# go
alias td='go mod tidy'
alias glint='golangci-lint run -v --config ./.golangci.yaml --new-from-rev=origin/master'

# kratos
alias k='kratos'

# function
git_checkout() {
	if [ "$1" = "m" ]; then
		git checkout master;
	elif [ "$1" = "d" ]; then
	 	git checkout dev;
	elif [ "$1" = "t" ]; then
	 	git checkout test;
	else
		git checkout "$1";
	fi
}

git_checkout_new() {
    git checkout -b "$1" origin/"$1";
}

pull() {
	if [ "$1" = "m" ]; then
		git pull origin master;
	elif [ "$1" = "d" ]; then
	 	git pull origin dev;
	elif [ "$1" = "t" ]; then
	 	git pull origin test;
	else
		git pull origin "$1";
	fi
}

push() {
	if [ "$1" = "m" ]; then
		git push origin master:master;
	elif [ "$1" = "d" ]; then
	 	git push origin dev:dev;
	elif [ "$1" = "t" ]; then
	 	git push origin test:test;
	else
		git push origin "$1";
	fi
}

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
