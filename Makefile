.PHONY: all dotfiles

all: dotfiles

install: all bootstrap

bootstrap:
	$(CURDIR)/bootstrap.sh

dotfiles:
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".travis.yml" -not -name ".git" -not -name ".*.swp" -not -name ".gnupg"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done; \
	ln -Fsn $(CURDIR)/bin $(HOME);
	ln -Fsn $(CURDIR)/.themes $(HOME);
