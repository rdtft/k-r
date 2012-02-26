#!/usr/bin/env bats

load test_helper

@test "convert 140 farenheit to 60 celcius" {
  1.03 | grep "140.0.*60.0"
}
