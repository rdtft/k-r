#!/usr/bin/env bats

load test_helper

@test "empty" {
  assert "" ""
}

@test "replace two spaces" {
  assert "foo  bar" "foo bar"
}

@test "replace five spaces" {
  assert "bar     baz" "bar baz"
}

@test "replace three spaces" {
  assert "   foo bar" " foo bar"
}

