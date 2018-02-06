function deletetodo
  if not echo $argv | grep -q '^[0-9]\+$'
    echo "Usage: deletetodo (number)"
    echo "Example: `deletetodo 2`"
    exit 1
  end

  set old_todo (cat ~/.todos | sed -n $argv"p")
  sed -i $argv"d" ~/.todos
  echo "Todo deleted: \"$old_todo\""
end
