#!/bin/zsh
# Resource https://askubuntu.com/questions/891499/remove-parenthesis-and-brackets-from-multiple-directories
# Removes all instances of parenthesized text
autoload zmv
# Remove parenthesis and everything between
zmv '*' '${f//[[:space:]]#[(]*[)]}'
# Remove brackets and everything between
zmv '*' '${f//[[:space:]]#[[]*[]]}'
