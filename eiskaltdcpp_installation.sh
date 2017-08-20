#this program was written by gautam s
#location godav 464 iit madras
#time 11.09pm 6 june, 2017

# updating information from repositories

sudo apt-get update

sudo apt-get install -f -y git
sudo apt-get install -f -y cmake libblkid-dev e2fslibs-dev libboost-all-dev libaudit-dev
sudo apt-get install -f -y python-dev
sudo apt-get install -f -y libssl-dev
sudo apt-get install -f -y libbz2-dev
sudo apt-get install -y -f qt5-default
sudo apt-get install -f -y qtbase5-dev qtdeclarative5-dev
sudo apt-get install -f -y qt5-qmake qttools5-dev-tools qt5-default libqt5svg5-dev qt5-image-formats-plugins qt5tools-dev
sudo apt-get install -f -y libavresample-dev
sudo apt-get install -y -f libgphoto2-dev
sudo apt-get install -f -y tesseract-ocr
sudo apt-get install -f -y libleptonica-dev
sudo apt-get install -f -y g++-4.9
sudo apt-get install -f -y libnotify-dev
sudo apt-get install -f -y libaspell-dev
sudo apt-get install -f -y libupnp-de
sudo apt-get install -f -y yum-utils
sudo apt-get install -f -y liblua5.1-0-dev liblua50-dev liblualib50-dev
sudo apt-get install -f -y qttools5-dev libqt5 cmake-qt-gui
sudo apt-get install -f -y qt5-default qtdeclarative5-dev-tools
sudo apt-get install -y -f qttools5-dev
sudo apt-get install remove cmake
sudo apt-get install -f -y cmake

sudo apt-get install build-essential linux-headers-`uname -r`
sudo apt-get install libtool automake autoconf
sudo apt-get install libx11-dev libxaw7-dev

sudo curl -R -O http://www.lua.org/ftp/lua-5.3.3.tar.gz
tar zxf lua-5.3.3.tar.gz
cd lua-5.3.3
# modify /src/Makefile from CFLAGS= -O2 -Wall -Wextra -DLUA_COMPAT_5_2 $(SYSCFLAGS) $(MYCFLAGS)
# to CFLAGS= -O2 -Wall -Wextra -DLUA_COMPAT_5_2 $(SYSCFLAGS) -fPIC $(MYCFLAGS) for 64-bit platform
make linux test
sudo make install
sudo apt-get install -fy lua5*
sudo apt-get install -fy libupnp-dev
sudo apt-get install -fy liblualib50-dev libboost-all-dev libaspell-dev liblua5*
sudo -H pip install idna
sudo apt-get install libidna-punycode-perl
sudo apt-get install libidn11-dev
git clone https://github.com/eiskaltdcpp/eiskaltdcpp.git
cd eiskaltdcpp
mkdir -p builddir && cd builddir
cmake -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_PREFIX=/usr \
      -DUSE_QT=ON \
      -DUSE_GTK=ON \
      -DUSE_JS=ON \
      -DUSE_ASPELL=ON \
      -DUSE_QT_QML=ON \
      -DUSE_QT_SQLITE=ON \
      -DLUA_SCRIPT=ON \
      -DWITH_LUASCRIPTS=ON \
      -DWITH_SOUNDS=ON \
      -DPERL_REGEX=ON \
      -DNO_UI_DAEMON=ON \
      -DJSONRPC_DAEMON=ON \
      -DUSE_CLI_JSONRPC=ON \
      -DUSE_MINIUPNP=ON \
      -DLOCAL_MINIUPNP=ON
..
make
make -j2
sudo make install
