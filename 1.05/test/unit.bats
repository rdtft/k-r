#!/usr/bin/env bats

load test_helper

@test "convert 100 celcius to 212 farenheit" {
  1.05 | grep "100.0.*212.0"
}
