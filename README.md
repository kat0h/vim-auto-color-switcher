# Auto Dark Mode Switcher
Change the color scheme automatically according to the OS appearance mode

![capture](https://github.com/kato-k/assets/blob/master/capture.gif?raw=true)

# Installation
Install plugin with your favorite plugin manager.

If you are using dein.vim you can apply the following settings:
```
[[plugins]]
repo = 'kat0h/vim-auto-color-switcher'
hook_post_update = '''
let g:dein#plugin.build = 'make'
'''
```

You can compile Swift file with `swiftc`  
`$ swiftc auto_color_switcher.swift`
And add your vimrc following setting.  
`let g:auto_color_switcher#binary_path=expand('Binary file path')`  

By default, this plugin switch between `bg=light` and `bg=dark` 
if you want to overwrite this behavior, you can use this option. 
```
let g:auto_color_switcher#command={
    \ 'light': 'colorscheme xcodelight',
    \ 'dark' : 'colorscheme xcodedark'
    \}
```

Apply the following settings to stop the operation
```
if !has('mac')
    let g:auto_color_switcher#desable = v:true
endif
```

# Information
Not compatible with linux such as Ubuntu  
Ubuntu's Dark Mode is managed as one of GNOME's Themes and is difficult to handle.  

Also, the plugin contains C# file.  
The same operation as the Swift file is performed on Windows, but the operation has not been confirmed.  

Explanation in Japanese [Zenn](https://zenn.dev/kato_k/articles/3f1abb1f83419e)

# LICENSE
MIT

# Author
KotaKato
