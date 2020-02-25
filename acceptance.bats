#!/usr/bin/env bats

source stub.sh

@test ".bashrc loads all .sh files in ./aliases" {
	stub_and_echo source "sourced"
	. .bashrc
	stub_called_with source aliases/*.sh
	restore source
}
