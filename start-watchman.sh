#!/bin/bash

watchman watch ~/projects/git-autocommit
watchman -- trigger ~/projects/git-autocommit auto-commit '*' -- ./auto-commit.sh

