#!/usr/bin/env bash

set -xe

fpc -g -o./out/app -O2 palindrome.pas
