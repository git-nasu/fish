if status is-interactive
    # Commands to run in interactive sessions can go here
end
#fish shell public settings
#

alias shut='sudo shutdown -h now'
alias server='ruby -run -e httpd . -p 8080'
alias la='exa -aal --icons'
alias ll='exa -aa --icons'
alias apt='apt-fast'
alias vim='nvim'


# delete [I]

function fish_mode_prompt
end

#view date
set -g theme_display_date yes
set -g theme_date_format "+%F %H:%M:%S"
#ls directory color change
export LSCOLORS=gxfxcxdxbxegedabagacad


#view title_bar darkmode
set -g theme_color_scheme dark

#git branch master display
set -g theme_display_git_master_branch yes

#command cmd duration
set -g theme_display_cmd_duration yes

#nodisplay prompt user hostname
set -g theme_display_user no
#set -g theme_display_hostname no


#shell title_bar customize
set -g theme_title_display_user no
set -g theme_title_display_hostname no
set -g theme_title_display_process yes
set -g theme_title_display_path no

#cursor.. next line, prompt head '$ ', no omit printing_working_directory
set -g theme_newline_cursor yes
set -g theme_newline_prompt '>> '
set -g fish_prompt_pwd_dir_length 0

#path
set -U fish_user_paths $fish_user_paths $HOME/.nodejs/current/bin


#cd->ls
functions --copy cd standard_cd

function cd
   standard_cd $argv; and ls
end

function mk
  mkdir $argv && cd $argv && pwd
end

