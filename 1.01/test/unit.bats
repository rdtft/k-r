#!/usr/bin/env bats

load test_helper

@test "hello world" {
  run 1.01
  [ "$output" = "hello, world" ]
  [ "$status" -eq 0 ]
}
