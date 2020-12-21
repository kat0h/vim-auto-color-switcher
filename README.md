# Auto Dark Mode Switcher
macOS/Windowsのカラーテーマに合わせてVimのbackgroundを切り替えます。

![capture](https://github.com/kato-k/assets/blob/master/capture.gif?raw=true)

# Usage
お好みのプラグインマネージャでインストールしてください。  

deinやvim-plugをお使いの場合はmakeを使うように設定すると自動でバイナリを用意することができます（Macのみ）  

また、Releaseのバイナリを利用するか 
`$ swiftc auto_color_switcher.swift`のようにコンパイルをすることもできます。
この場合vimrcなどに  
`let g:auto_color_switcher#binary_path=expand('バイナリのパス')`と記述すれば、Vimの起動時に読み込まれます。  

このプラグインはデフォルトでは`background`を切り替えます。
`background`に対応しないカラースキームの場合、下記のような設定を登録することで外観モード変更時に実行されるコマンドを上書きできます。
```
let g:auto_color_switcher#command={
    \ 'light': 'colorscheme xcodelight',
    \ 'dark' : 'colorscheme xcodedark'
    \}
```

macOS以外で動作を止めたいというような時は
```
if !has('mac')
    let g:auto_color_switcher#desable = v:true
endif
```
などのように設定してください

# problem
また、Windowsは頻繁にレジストリの内容を取得しているので、HDD/SSDに悪影響を及ぼす可能性があります。（多分大丈夫ですが）  

# Todo
- Document

# Information
Ubuntu等のLinuxには対応しません。  
UbunutuのダークモードはGNOMEの一Themeとして管理されているので扱いが困難なためです。  

解説記事 [Zenn](https://zenn.dev/kato_k/articles/3f1abb1f83419e)

# LICENSE
MIT

# Author
kotakato
