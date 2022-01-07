## Add dependencies from relative dir
_=$(readlink -f "$0")
__dir=$(dirname "$0")
__dir=$(readlink -f "$__dir")

. $__dir/../colors.sh

INPUT(){ echo -e "$(bgreen "INPUT"): $1\c" ; }
INFO(){ echo -e "$(bblue "INFO"): $1\c" ; }
WARN(){ echo -e "$(byellow "WARN"): $1\c" ; }
ERROR(){ echo -e "$(bred "INFO"): $1\c" ; }

