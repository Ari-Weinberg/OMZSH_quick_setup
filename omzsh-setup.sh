sudo apt update
sudo apt install zsh git curl fzf -y
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