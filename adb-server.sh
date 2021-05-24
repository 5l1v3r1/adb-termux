#!/data/data/com.termux/files/usr/bin/bash

directory="$(pwd)"
echo
echo -e "\e[93mThis script will install ADB & FastBoot Tools in Termux."
echo
echo -e "\e[32m[*] \e[34mDownloading wrapper script..."
wget https://github.com/ShuBhamg0sain/adb-server/raw/master/bin/adb -P $downpath/ -q
echo -e "\e[32m[*] \e[34mDownloading binaries..."
wget https://github.com/ShuBhamg0sain/adb-server/raw/master/bin/adb.bin -P $downpath/ -q
wget https://github.com/ShuBhamg0sain/adb-server/raw/master/bin/fastboot -P $downpath/ -q
wget https://github.com/ShuBhamg0sain/adb-server/raw/master/bin/fastboot-armeabi -P $downpath/ -q
echo -e "\e[32m[*] \e[34mCopying files to bin..."
cd bin
echo -e "\e[32m[*] \e[34mSetting execution permissions..."
chmod +x adb
chmod +x adb.bin
chmod +x fastboot
chmod +x fastboot-armeabi
echo -e "\e[32m[*] \e[34mCreating workspace directory..."
cd $HOME
if [ ! -d "adbfiles" ]; then
  mkdir adbfiles
fi
echo -e "\e[32m[*] \e[34mCleaning up..."
cd adb-server
rm -rf adb-server.sh
echo
echo -e "\e[32mTools were successfully installed!\e[39m"
echo
