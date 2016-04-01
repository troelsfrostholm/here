_here_locations()
{
local cur prev opts
COMPREPLY=()
cur="${COMP_WORDS[COMP_CWORD]}"
prev="${COMP_WORDS[COMP_CWORD-1]}"
opts=$(grep -o "^[^:\ ]\{1,\}[\ ]" ~/.here)

if [ "$COMP_CWORD" -lt "2" ] ; then
COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
return 0
fi
}
complete -F _here_locations go
complete -F _here_locations where
complete -F _here_locations del