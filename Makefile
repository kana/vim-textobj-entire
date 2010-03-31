# Makefile for usual Vim plugin

REPOS_TYPE := vim-script
INSTALLATION_DIR := $(HOME)/.vim
TARGETS_STATIC = $(filter %.vim %.txt,$(all_files_in_repos))
TARGETS_ARCHIVED = $(all_files_in_repos) mduem/Makefile




include mduem/Makefile

# __END__
