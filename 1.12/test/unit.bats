#!/usr/bin/env bats

load test_helper

@test "move one word" {
  assert \
    "foo bar" \
"foo
bar"
}

@test "move two words" {
  assert \
    "foo bar baz" \
"foo
bar
baz"
}

@test "ignore tabs and spaces" {
  assert \
    "foo\t\tbar  " \
"foo
bar"
}


@test "ignore new lines" {
  assert \
    "foo\nbar\nbaz" \
"foo
bar
baz"
}
