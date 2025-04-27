sudo apt update && sudo apt install -y git curl unzip
curl -s https://ohmyposh.dev/install.sh | bash -s
curl -LsSf https://astral.sh/uv/install.sh | sh
cd ..
rm .bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
oh-my-posh font install
