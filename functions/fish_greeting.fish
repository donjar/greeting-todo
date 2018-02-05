# Defined in /home/donjar/.config/fish/functions/fish_greeting.fish @ line 1
function fish_greeting
	echo Todos:
  echo $TODOS | nl -s '. ' -w2
end
