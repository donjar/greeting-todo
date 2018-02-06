# Defined in /home/donjar/.config/fish/functions/addtodo.fish @ line 1
function addtodo
	set new_todo (echo $argv | string join ' ')

  if test -z $TODOS
    set -U TODOS $new_todo
  else
    set -U TODOS $TODOS\n$new_todo
  end

  echo Todo added: \"$new_todo\"
end
