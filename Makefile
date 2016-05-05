DOTFILES_FOLDER := $(shell pwd)
NEOVIM_SOURCE := /nvim
NEOVIM_TARGET := ~/.config
ZSH_SOURCE := /.zshrc
ZSH_TARGET := ~/.zshrc

all: links

links:
	# Neovim
	mkdir -p $(NEOVIM_TARGET)
	ln -s $(join $(DOTFILES_FOLDER), $(NEOVIM_SOURCE)) $(NEOVIM_TARGET)

	# Zsh
	ln -s $(join $(DOTFILES_FOLDER), $(ZSH_SOURCE)) $(ZSH_TARGET)

clean:
	rm -rf $(NEOVIM_TARGET)
	rm -rf $(ZSH_TARGET)
