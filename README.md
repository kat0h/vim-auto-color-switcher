# Auto Dark Mode Switcher
macOS/Windowsのカラーテーマに合わせてVimのbackgroundを切り替えます。

![capture](https://github.com/kato-k/assets/blob/master/capture.gif?raw=true)

# Usage
お好みのプラグインマネージャでインストールしてください。  
その後、Releaseからバイナリを持ってきて配置してください。  
もしくは、`$ swiftc auto_color_switcher.swift`のようにコンパイルできます。
vimrcなどに  
`let g:auto_color_switcher#binary_path=expand('バイナリのパス')`と記述すれば、Vimの起動時に読み込まれます。  

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
    let g:auto_color_switcher = v:false
endif
などのように設定してください
```

# problem
backgroundの変更に対応しないカラースキームを考慮していません。 
また、Windowsは頻繁にレジストリの内容を取得しているので、HDD/SSDに悪影響を及ぼす可能性があります。（多分大丈夫ですが）  

# Todo
( ) Docment
( ) Makefileの作成（プラグインマネージャからインストールできるように）

# Information
Ubuntu等のLinuxには対応しません。  
UbunutuのダークモードはGNOMEの一Themeとして管理されているので扱いが困難なためです。  

# LICENSE
MIT

# Author
kotakato
