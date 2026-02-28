#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Iniciando setup dos Dotfiles no Linux Mint...${NC}"

sudo apt update

echo -e "${GREEN}Instalando Tmux, Git e dependências...${NC}"
sudo apt install -y tmux git curl build-essential python3-venv python3-pip

echo -e "${GREEN}Instalando Neovim atualizado...${NC}"
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt update
sudo apt install -y neovim

echo -e "${GREEN}Criando links simbólicos...${NC}"
mkdir -p ~/.config

rm -rf ~/.config/nvim
ln -s ~/dotfiles/nvim ~/.config/nvim

rm -f ~/.tmux.conf
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

if [ ! -d "$HOME/.config/tmux/plugins/tpm" ]; then
  echo -e "${GREEN}Instalando TPM (Tmux Plugin Manager)...${NC}"
  mkdir -p ~/.config/tmux/plugins
  git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
fi

echo -e "${BLUE}==========================================${NC}"
echo -e "${GREEN}Setup concluído!${NC}"
echo -e "Abra o tmux e pressione Prefix (Ctrl+Space) + I para instalar os plugins."
echo -e "${BLUE}==========================================${NC}"
