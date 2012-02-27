#!/usr/bin/env bats

load test_helper

@test "empty" {
  assert "" "0 0 0"
}

@test "words with tabs" {
  assert "foo\tbar" "0 2 7"
}

@test "words with new line" {
  assert "foo\nbar" "1 2 7"
}

@test "only words" {
  assert "foo bar baz" "0 3 11"
}
