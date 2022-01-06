SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

. $SCRIPTPATH/../colors.sh

if ! [ -z "$(git status --porcelain)" ]; then
  git status
  echo -e "$(byellow "This git repository is not clean, commit or stash changes and retry!")"
  kill 0
fi
