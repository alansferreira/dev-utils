_=$(readlink -f "$0")
__dir=$(dirname "$0")
__dir=$(readlink -f "$__dir")

. $__dir/../colors.sh

if ! [ -z "$(git status --porcelain)" ]; then
  git status
  echo -e "$(byellow "This git repository is not clean, commit or stash changes and retry!")"
  kill 0
fi
