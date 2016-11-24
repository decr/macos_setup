
git clone https://github.com/riywo/anyenv ~/.anyenv

以下を.bash_profileに追記

# setup anyenv
if [ -d ${HOME}/.anyenv ] ; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
    for D in `ls $HOME/.anyenv/envs`
    do
        export PATH="$HOME/.anyenv/envs/$D/shims:$PATH"
    done

fi

exec $SHELL -l

anyenv install rbenv
anyenv install pyenv
anyenv install ndenv
anyenv install phpenv

# pyenv+virtualenv

$ git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.anyenv/envs/pyenv/plugins/pyenv-virtualenv
$ exec $SHELL -l

$ pyenv virtualenv --version
pyenv-virtualenv 1.0.0 (virtualenv unknown)


$ pyenv install 2.7.12

# phpenv

brew link --force openssl
brew link --force libxml2

PHP_BUILD_CONFIGURE_OPTS="--with-openssl=$(brew --prefix openssl) --with-libxml-dir=$(brew --prefix libxml2)" PHP_BUILD_EXTRA_MAKE_ARGUMENTS=-j4 phpenv install 7.0.9
