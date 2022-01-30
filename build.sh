nasm -f elf32 kernel.asm -o kasm.o
gcc -m32 -c kernel.c -o kc.o
ld -m elf_i386 -T link.ld -o pencil/boot/kernel.bin kasm.o kc.o
qemu -kernel pencil/boot/kernel.bin
grub-mkrescue -o pencil.iso pencil/

