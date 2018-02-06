function fish_greeting
  echo Todos:
  cat ~/.todos | nl -s '. ' -w2
end
