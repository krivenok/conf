# Simple calculator.
function calc {
    awk "BEGIN{ print $* }";
}

# Repeats the command until it returned 0.
# May be useful in case of soft errors (network timeouts, etc).
doit ()
{ 
  CMD=$@
  STATUS=1
  while [ $STATUS != 0 ]
  do
    $CMD
    STATUS=$?
  done
}

# Pacman color search.
pacs() {
	local CL='\\e['
	local RS='\\e[0;0m'

	echo -e "$(pacman -Ss "$@" | sed "
		/^core/		s,.*,${CL}1;31m&${RS},
		/^extra/	s,.*,${CL}0;32m&${RS},
		/^community/	s,.*,${CL}1;35m&${RS},
		/^[^[:space:]]/	s,.*,${CL}0;36m&${RS},
	")"
}
