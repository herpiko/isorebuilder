##### Kaitkan berkas ISO Live CD

- `mkdir mnt`
- `sudo mount -o loop ~/Unduh/BlankOn-11.0.1-desktop-amd64.iso mnt`

Jika gagal mengkaitkan berkas ISO dengan pesan galat Unknown error -1, pastikan modul loop sudah dimuat oleh sistem.

`modprobe loop`

##### Ekstrak isi citra ISO

- `mkdir extract-ulwatu-origin`
- `sudo rsync --exclude=/live/filesystem.squashfs -a mnt/ extract-tambora-origin`

##### Ekstrak SquashFS

`sudo unsquashfs mnt/live/filesystem.squashfs`
`sudo mv squashfs-root edit-uluwatu

#### Kustomisasi

Sampai langkah ini, Anda dapat memodifikasi Live CD (misal menambahkan berkas). Direktori untuk kustom ada di dalam direktori `edit-uluwatu`

##### Build

`sudo ./uluwatu.sh`


##### License

MIT, but this also contains a binary from `isolinux` package.
