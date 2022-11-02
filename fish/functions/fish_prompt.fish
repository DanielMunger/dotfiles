function fish_prompt
	test $SSH_TTY
    and printf (set_color red)$USER(set_color brwhite)'@'(set_color yellow)(prompt_hostname)' '
    test "$USER" = 'root'
    and echo (set_color red)"#"

    if test $APP_ENV = 'staging'; or test $APP_ENV = 'production'  
        echo -n (set_color red)(prompt_pwd) (set_color red)'❯'(set_color red)'❯'(set_color red)'❯ '
    else
        echo -n (set_color cyan)(prompt_pwd) (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
    end
end
