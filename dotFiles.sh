# @othonalberto
MSG_PADRAO="Atualizacao"

cp ~/.vimrc ~/repositorios/github/dotfiles/vimrc
cp ~/.gitconfig ~/repositorios/github/dotfiles/gitconfig
# cp ~/.config/fish/config.fish ~/repositorios/github/dotfiles
cp ~/.bash_profile ~/repositorios/github/dotfiles/bash_profile

cd ~/repositorios/github/dotfiles

git add .

echo "Mensagem do commit: "
read MSG

if [ "$MSG" != '' ]; then
    git commit -m "$MSG"
else
    git commit -m "$MSG_PADRAO"
fi

echo "Quase terminando..."
echo "Desejar dar push? (0 - negativo; 1 - positivo): "
read OPC

if [ "$OPC" -eq 1 ]; then
    git push
fi

echo "Pronto!"

