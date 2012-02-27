#!/usr/bin/env bats

load test_helper

@test "EOF should be equal -1" {
  run 1.07
  [ "$output" = "-1" ]
}
