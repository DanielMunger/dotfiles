function git::is_stashed
  command git rev-parse --verify --quiet refs/stash >/dev/null
end

function git::get_ahead_count
  echo (command git log 2> /dev/null | grep '^commit' | wc -l | tr -d " ")
end

function git::branch_name
  command git symbolic-ref --short HEAD
end

function git::is_touched
  test -n (echo (command git status --porcelain))
end

function fish_right_prompt
  set -l code $status
  test $code -ne 0; and echo (set_color red)"("(set_color cyan)"$code"(set_color red)") "(set_color normal)

  if test -n "$SSH_CONNECTION"
     printf (set_color cyan)":"(set_color red)"$HOSTNAME "(set_color normal)
   end

  if git rev-parse 2> /dev/null
    git::is_stashed; and echo (set_color cyan)"^"(set_color normal)
    printf (set_color 005284)"("(begin
      if git::is_touched
        echo (set_color cyan)"*"(set_color normal)
      else
        echo ""
      end
    end)(set_color ff8700)(git::branch_name)(set_color 005284)(begin
      set -l count (git::get_ahead_count)
        if test $count -eq 0
          echo ""
        else
          echo (set_color cyan)"+"(set_color ff8700)$count
        end
    end)(set_color 005284)") "(set_color normal)
  end
  printf (set_color cyan --bold)(date +%H(set_color white):(set_color cyan --bold)%M(set_color white):(set_color cyan --bold)%S)(set_color normal)" "
end
