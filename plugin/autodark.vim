  function! ChangeColorScheme(timer) 
      if system('defaults read -g AppleInterfaceStyle') == 0  &&  execute('colo')  != 'spaceduck' "must do logical c    heck on shell exit code, not its reponse
          :colorscheme spaceduck
      elseif execute('colo') != 'onehalflight'
          :colorscheme onehalflight
      endif
  endfunction
  
  function! CheckOSMode()
      let timer = timer_start(30000, 'ChangeColorScheme', {'repeat':-1})
  ""    call ChangeColorScheme()
  endfunction
  
  call CheckOSMode()
