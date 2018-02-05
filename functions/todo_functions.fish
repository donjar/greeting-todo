function addtodo
  set new_todo (echo $argv | string join ' ')

  if test -z $TODOS
    set -U TODOS $new_todo
  else
    set -U TODOS $TODOS\n$new_todo
  end

  echo Todo added: \"$new_todo\"
end

function cleartodo
  set -U TODOS
  echo All todos cleared
end

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

funcsave addtodo
funcsave cleartodo
funcsave deletetodo
