#!/bin/bash

# Script para facilitar a publicação das minhas anotações no Github
# REQUER GUM

# set -e  # Descomente se desejar que o script pare imediatamente em caso de erro

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
echo "$PLACEHOLDER_COMMIT_MSG"
COMMIT_MSG=$(gum input --placeholder "$PLACEHOLDER_COMMIT_MSG" --prompt "Mensagem do Commit -> ")

# Se o input estiver vazio, usa o placeholder
COMMIT_MSG="${COMMIT_MSG:-$PLACEHOLDER_COMMIT_MSG}"

gum spin --spinner dot --title "Realizando Commit..." -- git commit -m "$COMMIT_MSG"

if gum confirm "Publicar alterações no Github?"; then
	git push origin main
	gum style "Alterações publicadas com sucesso!" --foreground green --bold
else
	gum style "Publicação cancelada." --foreground yellow --bold
	exit 0
fi
