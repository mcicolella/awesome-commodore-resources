wget http://www.zimmers.net/anonftp/pub/cbm/crossplatform/emulators/VICE/vice-3.4.tar.gz
tar -zxvf vice-3.4.tar.gz
cd vice-3.4/data/C64
sudo cp chargen kernal basic /usr/lib/vice/C64
cd ..
cd DRIVES
sudo cp d1541II d1571cr dos* /usr/lib/vice/DRIVES/
