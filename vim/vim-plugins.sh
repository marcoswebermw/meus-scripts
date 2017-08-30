#!/bin/bash

# Instalando o pathogen que serve para instalar os outros plugins.
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Copia o arquivo .vimrc do diretório atual para o diretório ~/.vimrc.
cp .vimrc ~/.vimrc

# Instalando o NerdTree para gerenciar os diretórios dentro do Vim.
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

#  Instalando o plugin para .editorconfig no vim.
git clone https://github.com/editorconfig/editorconfig-vim.git ~/.vim/bundle/editorconfig-vim

# Este arquivo precisa de permissão de execução. 'chmod +x vim-plugins.sh'.
