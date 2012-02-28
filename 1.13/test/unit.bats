#!/usr/bin/env bats

load test_helper

@test "one word" {
  assert "foo" "\
       *             
 1  2  3  4  5  6  7 "
}

@test "two words" {
  assert "foo bar" "\
       *             
       *             
 1  2  3  4  5  6  7 "
}

@test "three words" {
  assert "foo bar baz" "\
       *             
       *             
       *             
 1  2  3  4  5  6  7 "
}

@test "words of different lengths" {
  assert "foo bar baz quux 42 17" "\
       *             
    *  *             
    *  *  *          
 1  2  3  4  5  6  7 "
}
