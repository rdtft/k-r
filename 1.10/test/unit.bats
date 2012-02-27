#!/usr/bin/env bats

load test_helper

@test "convert backslashes" {
  assert "foo\bar" "foo\\bar"
}

@test "convert tabs" {
  assert "foo\tbar\t" "foo\tbar\t"
}

@test "convert backspaces" {
  assert "\bfoo\bquux\b" "\bfoo\bquux\b"
}
