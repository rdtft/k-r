#!/usr/bin/env bats

load test_helper

@test "one character" {
  assert "a" "a : *"
}

@test "two characters" {
  assert "aaa" "a : ***"
}

@test "two different characters" {
  assert "ab" "\
a : *
b : *"
}

@test "one word" {
  assert "foo" "\
f : *
o : **"
}

@test "two words" {
  assert "foo bar" "\
a : *
b : *
f : *
o : **
r : *"
}
