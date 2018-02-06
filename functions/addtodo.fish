function addtodo
  echo "$argv" >> ~/.todos
  echo "Todo added: \"$argv\""
end
