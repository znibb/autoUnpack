# autoUnpack
Auto unpack downloaded files and purge rar files at regular intervals

#### File description:
* clean_up.sh
 - Removes all stored rars
* directories.txt
 - Centralized storage of directory labels for use in the scripts
* fileTemplates
 - Folder that contains files used for testing the unpack and clean_up scripts
* README.md
 - This file
* replace_rars.sh
 - Copies rar files from fileTemplates folder to rar folder to prepare for new unpack test
* reset.sh
 - Removes unpacked media to prepare for new unpack test
* test.sh
 - Lists the content of the temp dirs to facilitate an easy overview of the current folder status
* unpack.sh
 - Iterates through rar files in designated folder and checks if they have already been unpacked to the target dir, if they haven't it will create the target dir and unpack the archive.
 
#### Test setup
1. Clone repo
2. Edit `directories.txt` with your desired source and target folders
3. Run `./replace_rars.sh` to copy template structure to the source dir
4. Make updates to `unpack.sh`
5. Run `./unpack.sh` to test your improvements
6. Run `./test.sh` to inspect the current folder status
7. Run `./reset.sh` to clean unpacked folder to prepare for new unpack test
8. Repeat 4->8

#### User setup
1. Clone repo
2. Edit `directories.txt` with your desired source and target folders
3. Create a cron job that runs `./unpack.sh` "often" (e.g. daily)
4. Create a cron job that runs `./clean_up.sh` "seldom" (e.g. weekly)
