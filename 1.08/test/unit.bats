#!/usr/bin/env bats

load test_helper

@test "empty" {
  assert "foo" " 0 0 0"
}

@test "one space" {
  assert " foo" " 1 0 0"
}

@test "two spaces" {
  assert "  foo" " 2 0 0"
}

@test "five spaces" {
  assert "     foo" " 5 0 0"
}

@test "one tab" {
  assert "\tfoo" " 0 1 0"
}

@test "two tabs" {
  assert "\t\tfoo" " 0 2 0"
}

@test "five tabs" {
  assert "\t\t\t\t\tfoo" " 0 5 0"
}

@test "one new line" {
  assert "\nfoo" " 0 0 1"
}

@test "two new lines" {
  assert "\n\nfoo" " 0 0 2"
}

@test "five new lines" {
  assert "\n\n\n\n\nfoo" " 0 0 5"
}
