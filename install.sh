mv ../vimrc ../.vim
ln -s ~/.vim/vimrc ~/.vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git submodule update --init
