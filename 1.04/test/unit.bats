#!/usr/bin/env bats

load test_helper

@test "convert 60 celcius to 140 farenheit" {
  1.04 | grep "60.0.*140.0"
}
