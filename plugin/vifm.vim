function s:Vifm()
    exec "silent !~/.config/vifm/scripts/vifmrun --choose-dir=/tmp/vim_vifm_current_dir --choose-files=/tmp/vim_vifm_current_file " . expand("%:p:h")
    if filereadable('/tmp/vim_vifm_current_dir')
        exec 'cd ' . system('cat /tmp/vim_vifm_current_dir')
        call system('rm /tmp/vim_vifm_current_dir')
    endif
    if filereadable('/tmp/vim_vifm_current_file')
        exec 'edit ' . system('cat /tmp/vim_vifm_current_file')
        call system('rm /tmp/vim_vifm_current_file')
    endif
    redraw!
endfun


command! Vifm call <SID>Vifm()
