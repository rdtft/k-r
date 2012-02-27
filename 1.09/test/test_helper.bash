PATH=$PATH:$(pwd)/bin:.

function assert {
  local input="$1"
  local expected="$2"
  local actual="$(printf "$input" | 1.09)"

  [ "$expected" = "$actual" ]
}
