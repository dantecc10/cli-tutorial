#!/usr/bin/env bats

@test "it executes new command" {
    run ./buildr new
    [ "$status" -eq 1 ]
    [ "${lines[0]}" = "Error: A project name must be given after the command 'new'" ]
}
