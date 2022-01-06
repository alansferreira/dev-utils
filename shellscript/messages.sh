## Add dependencies from relative dir
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
if [[ $1 ]]
then
  . $1
else 
  . $SCRIPTPATH/colors.sh
fi

INPUT(){ echo -e "$(bgreen "INPUT"): $1\c" ; }
INFO(){ echo -e "$(bblue "INFO"): $1\c" ; }
WARN(){ echo -e "$(byellow "WARN"): $1\c" ; }
ERROR(){ echo -e "$(bred "INFO"): $1\c" ; }

