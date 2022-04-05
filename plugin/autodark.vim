 23 function! ChangeColorScheme(timer) 
 24     if system('defaults read -g AppleInterfaceStyle') == 0  &&  execute('colo')  != 'synthwave' "must do logical c    heck on shell exit code, not its reponse
 25         :colorscheme synthwave
 26     elseif execute('colo') != 'onehalflight'
 27         :colorscheme onehalflight
 28     endif
 29 endfunction
 30 
 31 function! CheckOSMode()
 32     let timer = timer_start(1000, 'ChangeColorScheme', {'repeat':-1})
 33 ""    call ChangeColorScheme()
 34 endfunction
 35 
 36 call CheckOSMode()
