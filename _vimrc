set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
call pathogen#infect()
" Ctrl + H                   --���������  

 " Ctrl + J                   --�������һ������  

 " Ctrl + K                   --�������һ����β  

 " Ctrl + L                   --�������β  

 " Ctrl + Z                   --ȡ��ESCģʽ�� [�Ͳ�������Ŀ�ݼ��г�ͻ]  

 " Ctrl + S                   --�����ļ�  

 " Ctrl + C                   --���� [֧��C/C++��Java��Haskell]  

 " Ctrl + R                   --���� [֧��C/C++��Java��Haskell��Lua��Perl��Python��Ruby]  

 " Ctrl + ]                   --ת����������  

 " Ctrl + T                   --���ص��ú���  

 " Ctrl + E                   --���ע�� [����ģʽ] [��ӵ���C���ԵĶ���ע�ͣ�����������C/C++/Java��]  

 " Ctrl + E                   --һ�������﷨ģ������ߡ�ʱ����Ϣ [�ǲ���ģʽ]  

    

 " <C-P>                      --���ʲ�ȫ  

 " <C-X><C-L>                 --���в�ȫ  

 " Tab��                      --����ģʽ�µ�ȫ�����﷨�ṹ��ȫ [snipMate���]  

 " Shift + Insert             --��Vim��ճ���ӱ𴦸��Ƶ�����  

    

 " nt                         --��NERDTree [�ǲ���ģʽ]  

 " tl                         --��TagList [�ǲ���ģʽ]  

 " \ww                        --����vimWikiģʽ [�ǲ���ģʽ]  

    

 " za                         --�򿪻�رյ�ǰ�۵�  

 " zM                         --�ر������۵�  

 " zR                         --�������۵�  

    

 " :set syntax=cpp            --�ֶ�ѡ���﷨���� [�� :set filetype=cpp]  

    

 " :%!xxd                     --ת���������ļ�����ʮ��������ʽ��ʾ  

 " :%!xxd -r                  --��ԭ�������ļ�  

    

    

 " ---------- ��Ҫ�����ϸ�÷�˵�� ---------------------  

    

 " :Tlist                     --���������ͺ����б� [TagList���]  

 " :FencView                  --�鿴�ļ�����͸����ļ����� [FencView���]  

 " :LoadTemplate              --�����﷨ģ�� [Load_Template���]  

 " :AuthorInfoDetect          --������ߡ�ʱ�����Ϣ [NERD_commenter && authorinfo���]  

    

 " ---------- a.vim [�Զ��л�C/C++ͬ��ͷ�ļ�] ----------  

 "  

 " :A                         --�л�ͬ��ͷ�ļ�����ռ������Ļ  

 " :AS                        --�л�ͬ��ͷ�ļ�����ֱ������ͷ�ļ�����  

 " :AV                        --�л�ͬ��ͷ�ļ���ˮƽ�ָͷ�ļ�����  

    

 " ---------- mark.vim [׷�ٸ���ָ���ؼ���] ------------  

 "  

 " \m                         --normalģʽ�£�����Ҫ�����ĵ��������û�\m���ɸ�����ȡ�������õ���  

 " :Mark                      --ȡ�����и���  

 " :Mark abc                  --ָ���������� abc ��ȡ������ abc  

    

 " ---------- NERDTree [�����ļ������] ----------------  

 "  

 " :NERDTree                  --����NERDTree���  

 " o [Сд]                   --�л���ǰ�ļ���Ŀ¼�Ĵ򿪡��ر�״̬  

 " u                          --���ϲ�Ŀ¼  

 " p [Сд]                   --�����ϲ�Ŀ¼  

 " P [��д]                   --���ظ�Ŀ¼  

 " K                          --ת����ǰĿ¼��һ���ڵ�  

 " J                          --ת����ǰĿ¼���Ľڵ�  

 " m                          --��ʾ�ļ�ϵͳ�˵� [����ɾ����]  

 " ?                          --���������˵�  

 " q                          --�˳��ò��  

    

    

    



 set tabstop=4                " ����tab���Ŀ��  

 set shiftwidth=4             " ����ʱ�м佻��ʹ��4���ո�  

 set autoindent               " �Զ�����  

 set backspace=2              " �����˸������  

 set cindent shiftwidth=4     " �Զ�����4�ո�  

 set smartindent              " �����Զ�����  

 set ai!                      " �����Զ�����  

 set nu!                      " ��ʾ�к�  

 "set showmatch               " ��ʾ����������  

 set mouse=a                  " �������  

 set ruler                    " ���½���ʾ���λ�õ�״̬��  

 set incsearch                " ����bookʱ��������/bʱ���Զ��ҵ�  

 set hlsearch                 " ����������ʾ���  

 set incsearch                " ����ʵʱ��������  

 set nowrapscan               " �������ļ�����ʱ����������  

 set nocompatible             " �رռ���ģʽ  

 set vb t_vb=                 " �ر���ʾ��  

 "set cursorline              " ͻ����ʾ��ǰ��  

 set hidden                   " ��������δ������޸�ʱ�л�������  

 set list                     " ��ʾTab����ʹ��һ�������ߴ���  

 set listchars=tab:\|\ ,  

    

 syntax enable                " ���﷨����  

 syntax on                    " �����ļ��������  

 filetype indent on           " ��Բ�ͬ���ļ����Ͳ��ò�ͬ��������ʽ  

 filetype plugin on           " ��Բ�ͬ���ļ����ͼ��ض�Ӧ�Ĳ��  

 filetype plugin indent on    " �����Զ���ȫ  

    

 if has("gui_running")  

     au GUIEnter * simalt ~x  " ��������ʱ�Զ����  

     "winpos 20 20            " ָ�����ڳ��ֵ�λ�ã�����ԭ������Ļ���Ͻ�  

     "set lines=20 columns=90 " ָ�����ڴ�С��linesΪ�߶ȣ�columnsΪ���  

     "set guioptions-=m       " ���ز˵���  

     set guioptions-=T        " ���ع�����  

     "set guioptions-=L       " ������������  

     "set guioptions-=r       " �����Ҳ������  

     "set guioptions-=b       " ���صײ�������  

     "set showtabline=0       " ����Tab��  

 endif  

    

 set writebackup              " �����ޱ����ļ�  

 set nobackup  

 set autochdir                " �趨�ļ������Ŀ¼Ϊ��ǰĿ¼  

 "set nowrap                  " ���ò��Զ�����  

 set foldmethod=syntax        " ѡ������۵�����  

 set foldlevel=100            " ��ֹ�Զ��۵�  

    

 set laststatus=2             " ����״̬����Ϣ  

 set cmdheight=2              " �����еĸ߶ȣ�Ĭ��Ϊ1��������Ϊ2  

    

 " ÿ�г���80�����ַ����»��߱�ʾ  

 au BufRead,BufNewFile *.asm,*.c,*.cpp,*.java,*.cs,*.sh,*.lua,*.pl,*.pm,*.py,*.rb,*.erb,*.hs,*.vim 2match Underlined /.\%81v/  

    

    

 " ���ñ���  

 set fenc=utf-8  

 set encoding=utf-8  

 set fileencodings=utf-8,gbk,cp936,latin-1  

 " ����˵�����  

 source $VIMRUNTIME/delmenu.vim  

 source $VIMRUNTIME/menu.vim  

 " ���consle�������  

 language messages zh_CN.utf-8  

    

    

 " For Haskell  

 :let hs_highlight_delimiters=1            " ���������  

 :let hs_highlight_boolean=1               " ��True��Falseʶ��Ϊ�ؼ���  

 :let hs_highlight_types=1                 " �ѻ������͵�����ʶ��Ϊ�ؼ���  

 :let hs_highlight_more_types=1            " �Ѹ��ೣ������ʶ��Ϊ�ؼ���  

 :let hs_highlight_debug=1                 " �������Ժ���������  

 :let hs_allow_hash_operator=1             " ��ֹ��#����Ϊ����  

    

    

 " ======= ���� && �����Զ�ƥ�� ======= "  

    

 :inoremap ( ()<ESC>i  

    

 :inoremap ) <c-r>=ClosePair(')')<CR>  

    

 :inoremap { {}<ESC>i  

    

 :inoremap } <c-r>=ClosePair('}')<CR>  

    

 :inoremap [ []<ESC>i  

    

 :inoremap ] <c-r>=ClosePair(']')<CR>  

    

 ":inoremap < <><ESC>i  

    

 ":inoremap > <c-r>=ClosePair('>')<CR>  

    

 :inoremap " ""<ESC>i  

    

 :inoremap ' ''<ESC>i  

    

 :inoremap ` ``<ESC>i  

    

 function ClosePair(char)  

     if getline('.')[col('.') - 1] == a:char  

         return "\<Right>"  

     else  

         return a:char  

     endif  

 endf  

    

    

 " MiniBufExplorer     ����ļ��л� ��ʹ�����˫����Ӧ�ļ��������л�  

 let g:miniBufExplMapWindowNavVim=1  

 let g:miniBufExplMapWindowNavArrows=1  

 let g:miniBufExplMapCTabSwitchBufs=1  

 let g:miniBufExplModSelTarget=1  

    

 " :Tlist              ����TagList  

 let Tlist_Show_One_File=1                    " ֻ��ʾ��ǰ�ļ���tags  

 let Tlist_Exit_OnlyWindow=1                  " ���Taglist���������һ���������˳�Vim  

 let Tlist_Use_Right_Window=1                 " ���Ҳര������ʾ  

 let Tlist_File_Fold_Auto_Close=1             " �Զ��۵�  

    

 " TxtBrowser          ����TXT�ı��ļ�  

 au BufRead,BufNewFile *.txt setlocal ft=txt  

    

 " :FencView           �鿴�ļ�����͸����ļ�����  

 let g:fencview_autodetect=1  

    

 " :LoadTemplate       �����ļ���׺�Զ�����ģ��  

 let g:template_path='D:\Apps\Gvim\vimfiles\template\'  

    

 " :AuthorInfoDetect   �Զ�������ߡ�ʱ�����Ϣ��������NERD_commenter && authorinfo�Ľ��  

 let g:vimrc_author='Ruchee'  

 let g:vimrc_email='my@ruchee.com'  

 let g:vimrc_homepage='http://www.ruchee.com'  

    

 " Ctrl + H            ������Ƶ�����  

 imap <c-h> <ESC>I  

    

 " Ctrl + J            ������Ƶ���һ�е�����  

 imap <c-j> <ESC>jI  

    

 " Ctrl + K            ������Ƶ���һ�е�ĩβ  

 imap <c-k> <ESC>kA  

    

 " Ctrl + L            ������Ƶ���β  

 imap <c-l> <ESC>A  

    
  
 " Ctrl + Z            ȡ��ESCģʽ��  

 imap jj <ESC>  

    

 " Ctrl + S            �����ļ�  

 map <c-s> <ESC>:w<CR>  

 imap <c-s> <ESC>:w<CR>a  

 vmap <c-s> <ESC>:w<CR>  

    

 " Ctrl + E            һ�������﷨ģ������ߡ�ʱ����Ϣ [�ǲ���ģʽ]  

 map <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi  

 vmap <c-e> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi  

    

 " Ctrl + E            �ڵ�ǰ�����C/C++/Java���ԵĶ���ע�� [����ģʽ]  

 imap <c-e> /*  */<ESC>hhi  

    

 " nt                  ��NERDTree [�ǲ���ģʽ]  

 map nt :NERDTree<CR>  

    

 " tl                  ��Taglist [�ǲ���ģʽ]  

 map tl :Tlist<CR><c-l>  

    

