##### Kaitkan berkas ISO Live CD

- `mkdir mnt`
- `sudo mount -o loop berkas.iso mnt`

Jika gagal mengkaitkan berkas ISO dengan pesan galat Unknown error -1, pastikan modul loop sudah dimuat oleh sistem.

`modprobe loop`

##### Ekstrak isi citra ISO

- `mkdir extract-cd`
- `sudo rsync --exclude=/live/filesystem.squashfs -a mnt/ extract-tambora-origin`

##### Ekstrak SquashFS

`sudo unsquashfs mnt/live/filesystem.squashfs`
`sudo mv squashfs-root edit-tambora

Kustom Sampai langkah ini, anda dapat memodifikasi Live CD (misal menambahkan berkas). Direktori untuk kustom ada di dalam direktori edit.

##### Build

`sudo ./tambora.sh`


##### License

MIT, but this contains a binary from `isolinux` package.
