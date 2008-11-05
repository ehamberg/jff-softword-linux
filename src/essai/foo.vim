v/0x/d
silent 1,$s/0x//g
silent 1,$s/,/ /g
silent 1,$s/^\s\+//g
silent 1,$join
normal f x
normal $
let i=col(".")
normal 0
while i > col(".")
	normal 2f x
	let i = i - 1
endwhile
set tw=40
normal gggqG
silent 1s/^/0000000: /
silent 1s/^/0x/
normal G
let l=line(".")
1
let j=1
while j < l
	let j = j + 1
	normal yf 
	normal jP0
	normal 16
	normal 0
endwhile
silent 1,$s/^..//
normal :w %.gif
