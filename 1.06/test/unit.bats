#!/usr/bin/env bats

load test_helper

@test "return one" {
  result="$(1.06 < /dev/null)"
  [ "$result" = "0" ]
}

@test "return zero" {
  result="$(printf "bar" | 1.06)"
  [ "$result" = "1110" ]
}
