#!/bin/bash

bundle install --path vendor/bundle
ulimit -s unlimited
valgrind --num-callers=50 --error-limit=no --partial-loads-ok=yes --undef-value-errors=no ruby blah.rb
