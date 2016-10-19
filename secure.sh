BLOB=`pwd`/isohdpfx.bin
rm -rf extract-secure
cp -R extract-secure-origin extract-secure
sudo mksquashfs edit-secure extract-secure/live/filesystem.squashfs
printf $(sudo du -sx --block-size=1 edit-secure | cut -f1) > extract-secure/live/filesystem.size
(cd extract-secure;sudo xorriso -as mkisofs --grub2-boot-info --grub2-mbr $BLOB -o ../secure-modified.iso -b boot/grub/eltorito.img -no-emul-boot -boot-load-size 4 -boot-info-table -eltorito-alt-boot -e boot/grub/efiboot.img -no-emul-boot -isohybrid-gpt-basdat .)
