PATH=$PATH:$(pwd)/bin:.

function assert {
  local input="$1"
  local expected="$2"
  local actual="$(printf "$input\n" | 1.13)"

  [ "$expected" = "$actual" ]
}
