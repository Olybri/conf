;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .

g=git $*
gl=git log --oneline --all --graph --decorate $*
gf=git fetch $*
gm=git merge $*
gfm=git pull $*
gs=git status -s $*
gd=git diff *$**
gc=git commit -m "$*"
gca=git commit -am "$*"
gp=git push $*
ga=git add *$**
gamend=git commit --amend --no-edit $*
gtrack=git update-index --no-assume-unchanged $*
guntrack=git update-index --assume-unchanged $*

pwd=cd
clear=cls
history=cat %CMDER_ROOT%\config\.history
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
ls=ls --show-control-chars --color -F $*
ll=ls --show-control-chars --group-directories-first --color -Flhv $*
la=ls --show-control-chars --group-directories-first --color -FlAhv $*

select=mysql -u root -e "select $*"
show=mysql -u root -e "show $*"
drop=mysql -u root -e "drop $*"
update=mysql -u root -e "update $*"
create=mysql -u root -e "create $*"
insert=mysql -u root -e "insert $*"
delete=mysql -u root -e "delete $*"

config=atom %CMDER_ROOT%\config\user-aliases.cmd
