sudo apt update && sudo apt install -y git curl unzip make
curl -s https://ohmyposh.dev/install.sh | bash -s
curl -LsSf https://astral.sh/uv/install.sh | sh
cd ..
rm .bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
source ~/.bashrc
cd ~/dotfiles
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) &&
    sudo mkdir -p -m 755 /etc/apt/keyrings &&
    out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg &&
    cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg >/dev/null &&
    sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg &&
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null &&
    sudo apt update &&
    sudo apt install gh -y
oh-my-posh font install meslo
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
git config --global user.email "sammyrichards@me.com"
git config --global user.name "Sam Richards"

./aws-cli-setup.sh
./docker-setup.sh
