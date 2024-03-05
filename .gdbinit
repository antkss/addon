# source ~/.gef-2024.01.py
set debuginfod enabled on
source /home/as/cac/pwndbg/gdbinit.py
alias vm=vmmap
alias la = !ls --color=auto
alias m=start
alias uf= disassemble
alias nvim=!nvim
alias cx=context
alias at=attach
alias ff=search
alias cs=checksec
alias cls=!clear
set context-sections code regs disasm ghidra stack expressions threads
set disable-randomization off
set context-register-color green
set enhance-comment-color green
set enhance-integer-value-color green
set enhance-string-value-color green
set enhance-unknown-color green
set telescope-skip-repeating-val off
set show-flags on 

