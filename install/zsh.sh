if [ ! -f "/root/.zshrc" ];then
    echo "seup & config ohmzsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/' ~/.zshrc
    chsh -s $(which zsh)
else
    echo "ZSH UNTOUCHED..."
fi
