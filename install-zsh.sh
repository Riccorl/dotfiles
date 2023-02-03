!# bin/bash

# Install zsh depending on the OS

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt install zsh
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install zsh
fi

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install starship
curl -fsSL https://starship.rs/install.sh | bash

cp .zshrc ~/.zshrc
cp starship.toml ~/.config/starship.toml

# download conda
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh
fi

