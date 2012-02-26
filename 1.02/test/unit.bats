#!/usr/bin/env bats

load test_helper

@test "sescape sequence" {
  run 1.02
  [ "$(echo $output | expand -2)" = "hello, world  " ]
}
