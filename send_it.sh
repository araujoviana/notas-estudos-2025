#!/bin/bash

# Script feito pra facilitar a publicação das
# minhas anotações no Github

# REQUER GUM

set -e # Sai do script imediatamente se um comando falhar

git add .

SEARCH_DIR="./content/posts"
UPLOAD_DIR=$(ls content/posts -lt | sed -n '2p' | awk '{print $NF}')

if [ -z "$UPLOAD_DIR" ]; then
	gum style "Erro: Diretório 'content/posts' parece vazio ou não encontrou diretório recente." --foreground red --bold
	exit 1
fi

LATEST_MD_FILE=$(find "$SEARCH_DIR/$UPLOAD_DIR" -maxdepth 1 -name "*.md" | head -n 1)
if [ -z "$LATEST_MD_FILE" ]; then
	gum style "Erro: Nenhum arquivo .md encontrado em '$UPLOAD_DIR'." --foreground red --bold
	exit 1
fi

PLACEHOLDER_COMMIT_MSG=$(head "$LATEST_MD_FILE" | grep -oP "^title.*?('\K[^']+(?=')|$)")
COMMIT_MSG_PLACEHOLDER="${PLACEHOLDER_COMMIT_MSG:-Nova anotação}"
COMMIT_MSG=$(gum input --placeholder "$COMMIT_MSG_PLACEHOLDER" --prompt "Mensagem do Commit -> ")

gum spin --spinner dot --title "Realizando Commit..." -- git commit -m "$COMMIT_MSG" >"commit-$(date +%Y-%m-%dT%H:%M:%S%z).log"

if gum confirm "Publicar alterações no Github?"; then
	git push origin main
	gum style "Alterações publicadas com sucesso!" --foreground green --bold
else
	gum style "Publicação cancelada." --foreground yellow --bold
	exit 0
fi
