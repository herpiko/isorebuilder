BLOB=`pwd`/isohdpfx.bin
rm -rf extract-uluwatu
cp -R extract-uluwatu-origin extract-uluwatu
sudo mksquashfs edit-uluwatu extract-uluwatu/live/filesystem.squashfs
printf $(sudo du -sx --block-size=1 edit-uluwatu | cut -f1) > extract-uluwatu/live/filesystem.size
(cd extract-uluwatu;sudo xorriso -as mkisofs --grub2-boot-info --grub2-mbr $BLOB -o ../uluwatu-modified.iso -b boot/grub/eltorito.img -no-emul-boot -boot-load-size 4 -boot-info-table -eltorito-alt-boot -e boot/grub/efiboot.img -no-emul-boot -isohybrid-gpt-basdat .)
