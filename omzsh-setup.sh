sudo apt update
sudo apt install zsh git curl -y
FZF_VER=$(curl -s https://api.github.com/repos/junegunn/fzf/releases/latest | grep -oP '"tag_name":\s*"v\K[0-9.]+')
sudo wget https://github.com/junegunn/fzf/releases/download/v$FZF_VER/fzf-$FZF_VER-linux_amd64.tar.gz -O /tmp/fzf.tar.gz && sudo tar xzf /tmp/fzf.tar.gz -C /usr/local/bin
sudo apt install eza -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
zsh -c "git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions"
zsh -c "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting"
zsh -c "git clone https://github.com/Aloxaf/fzf-tab ~/.oh-my-zsh/custom/plugins/fzf-tab"
curl https://raw.githubusercontent.com/Ari-Weinberg/OMZSH_quick_setup/refs/heads/main/.zshrc > ~/.zshrc
# sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc
# sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="bira"/g' ~/.zshrc
# echo 'export LANG=C.UTF-8' >> ~/.zshrc
# echo 'export LC_ALL=C.UTF-8' >> ~/.zshrc
sudo chsh -s $(which zsh) $(whoami)
zsh