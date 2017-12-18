# use the default vimrc
cp vimrc ~/.vimrc
# use color themes
cp -r colors ~/.vim/

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install python-mode
cd ~/.vim
mkdir -p bundle && cd bundle
git clone --recursive https://github.com/python-mode/python-mode
