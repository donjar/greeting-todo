# Defined in /home/donjar/.config/fish/functions/deletetodo.fish @ line 1
function deletetodo
	if not echo $argv | grep -q '^[0-9]\+$'
    echo "Usage: deletetodo (number)"
    echo "Example: `deletetodo 2`"
    exit 1
  end

  # https://stackoverflow.com/questions/29512897
  set old_ifs $IFS
  set IFS

  set old_todo (echo $TODOS | sed -n $argv"p")
  set -U TODOS (echo $TODOS | sed $argv"d")
  echo Todo deleted: \"$old_todo\"

  set IFS $old_ifs
end
