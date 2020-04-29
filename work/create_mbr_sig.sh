
#
# https://qiita.com/takayoshiotake/items/1c993ff91fe4454c2468
#
IMAGE_NAME=mrb_sig

qemu-img create ${IMAGE_NAME}.bin 512

#
# 2 byte MBR signiture
# 0x55
# 0xaa
#

#
# dd otpion
#   seek: skip 510 btyes
#   conv: disable comma separated file format
echo -ne "\x55\xaa" | dd of=${IMAGE_NAME}.bin bs=1 seek=510 conv=notrunc
od -Ax -tx1 ${IMAGE_NAME}.bin

qemu-system-x86_64 -hda ${IMAGE_NAME}.bin
