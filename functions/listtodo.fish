function listtodo
  echo Todos:
  cat ~/.todos | nl -s '. ' -w2
end
