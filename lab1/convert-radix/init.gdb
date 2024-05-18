layout asm

start

focus cmd
b print
b print.loop

define hook-stop
x/8x $rbp - 0x20
end

