
# Referecnes
# https://qiita.com/takayoshiotake/items/1c993ff91fe4454c2468 (2020/04/30)
#

# create
if [ -f empty.bin ]; then
    rm empty.bin
fi
qemu-img create empty.bin 512

# check
# A: address, x: by hex
# t: format, x1: by 2 bits
od -Ax -tx1 empty.bin

qemu-system-x86_64 -hda empty.bin

