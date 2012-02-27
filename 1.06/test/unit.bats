#!/usr/bin/env bats

load test_helper

@test "return zero" {
  result="$(1.06 < /dev/null)"
  [ "$result" = "0" ]
}

@test "return one" {
  result="$(printf "bar" | 1.06)"
  [ "$result" = "1110" ]
}
