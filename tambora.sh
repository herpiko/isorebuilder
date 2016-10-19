BLOB=`pwd`/isohdpfx.bin
rm -rf extract-tambora
cp -R extract-tambora-origin extract-tambora
sudo mksquashfs edit-tambora extract-tambora/live/filesystem.squashfs
printf $(sudo du -sx --block-size=1 edit-tambora | cut -f1) > extract-tambora/live/filesystem.size
(cd extract-tambora;sudo xorriso -as mkisofs --grub2-boot-info --grub2-mbr $BLOB -o ../tambora-modified.iso -b boot/grub/eltorito.img -no-emul-boot -boot-load-size 4 -boot-info-table -eltorito-alt-boot -e boot/grub/efiboot.img -no-emul-boot -isohybrid-gpt-basdat .)
