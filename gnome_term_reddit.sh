# Colors
C0='\[\033[0m\]'  # Reset
C1='\[\033[30m\]' # Black
C2='\[\033[31m\]' # Red
C3='\[\033[32m\]' # Green
C4='\[\033[33m\]' # Yellow
C5='\[\033[34m\]' # Blue
C6='\[\033[35m\]' # Purple
C7='\[\033[36m\]' # Cyan
C8='\[\033[37m\]' # White
CB='\[\033[1m\]'  # Bold

# Prompt
export PS1=$C8'╭── '$C8'\u@\h '$C5'\w '$C4'`__git_ps1 "%s"` '$C6'`git log -1 --pretty=format:"%ar" 2>/dev/null`\n'$C8'╰─▶ '$C0
export PS2="$C8\[\033[1A\]│ ▷\n╰─▶ $C0"

# Unset colors
unset C0 C1 C2 C3 C4 C5 C6 C7 CB
