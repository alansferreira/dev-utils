## Add dependencies from relative dir
SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

. $SCRIPTPATH/../colors.sh
. $SCRIPTPATH/../messages.sh $SCRIPTPATH/../colors.sh

## Begin script body

# check if current repo have pending changes first
. $SCRIPTPATH/git-check-stage-state.sh

# read -p "$(bgreen "INPUT"): Enter $(bred "source git") ssh uri: " old_source
read -p "$(INPUT "Enter $(byellow "destination git") ssh uri : ")" new_destination

git_root_path=$(git rev-parse --show-toplevel)
current_origin=$(git remote get-url origin)
current_folder=$(basename $git_root_path)
new_folder_name=$(basename $new_destination)
new_folder_name=${new_folder_name%.*}
new_git_root_path=$(readlink --canonicalize $git_root_path/../$new_folder_name)

echo -e "$(INFO "Repository will be mirrored from \"$(bred $current_origin)\" to \"$(byellow $new_destination)\".")"
echo -e "$(INFO "Current git directory \"$(bred $git_root_path)\" and")"
echo -e "         will be renamed to \"$(byellow $new_git_root_path)\"."

echo 
echo -e "$(WARN "From this point the confirmation of nexts actions $(bred "CAN NOT BE UNDONE"), then: ")"
echo -e "      * check previous messages."
echo -e "      * check if \"source\" and \"destination\" repositories are correct."
echo 

read -p "$(INPUT "Are you sure to proceded [y or n]? ")" -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    # do dangerous stuff
    echo -e "$(INFO "Operation canceled!")"
    exit 0
fi

echo -e "$(INFO "Begin operations...")"

# git fetch origin
# # # git branch -a
# git remote add new-origin $new_destination
# git push --all new-origin 
# git push --tags new-origin
# git remote rm origin
# git remote rename new-origin origin
# cd $git_root_path/..
# mv $git_root_path $git_root_path

echo -e "$(INFO "Finish")"
