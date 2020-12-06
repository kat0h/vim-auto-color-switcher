# Auto Dark Mode Switcher
macOSのカラーテーマに合わせてVimのbackgroundを切り替えます。

![capture](https://github.com/kato-k/assets/blob/master/capture.gif?raw=true)

# Usage
お好みのプラグインマネージャでインストールしてください。  
その後、Releaseからバイナリを持ってきて配置してください。  
もしくは、`$ swiftc auto_color_switcher.swift`のようにコンパイルできます。
vimrcなどに  
`let g:auto_color_switcher_binary_path=expand('バイナリのパス')`と記述すれば、Vimの起動時に読み込まれます。  

# problem
このプラグインは作りかけです。  
破壊的な変更が行われる可能性があります。 
また、backgroundの変更に対応しないプラグインを考慮していません。 

# LICENSE
MIT

# Author
kotakato
