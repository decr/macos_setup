# MacOSX開発環境構築手順

## Xcodeが入っていない場合

	$ xcode-select --install

## Xcodeを入れ終わったら

	$ git clone git@github.com:decr/macos_setup.git
	$ cd macos_setup
	
Homebrew/brew-caskインンストール

	$ install.sh

必要なパッケージをインストール

	$ brew brewdle

gitの設定

	$ sh bash.sh
	
rubyのinstall

	$ sh rbenv_init.sh
