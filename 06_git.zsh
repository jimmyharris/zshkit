if [[ -x `which git` ]]; then
	alias g=git
	function git-branch-name () {
		git branch 2> /dev/null | grep '^\*' | sed 's/^\*\ //'
	}
	function git-dirty () {
		git status 2> /dev/null | grep "nothing to commit (working directory clean)"
		echo $?
	}
	function gsrb () {
		branch=$(git-branch-name) 
		git checkout master
		git svn rebase
		git checkout "${branch}"
		git rebase master
	}
	function git-scoreboard () {
		git log | grep '^Author' | sort | uniq -ci | sort -r
	}
	function git-track () {
		branch=$(git-branch-name)
		git config branch.$branch.remote origin
		git config branch.$branch.merge refs/heads/$branch
		echo "tracking origin/$tracking"
	}
fi
