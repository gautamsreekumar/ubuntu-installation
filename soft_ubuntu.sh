#this program was written by gautam s
#location godav 464 iit madras
#time 11.32am 8 november, 2016
#this program is for installing the basic required softwares for a new ubuntu system

echo "Welcome to Gautam's installation services"
echo "-----------------------------------------"
echo "please make yourself available throughout so that you can answer the prompts"
echo "-----------------------------------------"
printf "\nChecking if your OS is the latest version.\n\nit is advised that you check the 'For any new version' in 'Notify me of a new Ubuntu version' under 'Updates' tab in 'Softwares and Updates' in 'Settings'"
echo "type y and press [ENTER] when you are ready or press [Ctrl+C]"
read go

#getting information from repositories

sudo apt-get update
sudo apt-get -y full-upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean

#installation commands

sudo apt-get install -y boot-repair #for boot repair
sudo apt-get install -y emacs-snapshot emacs-snapshot-el #for emacs 24.3
sudo apt-get install -y sublime-text-installer #for sublime text 3
sudo apt-get install -y idle3 #for idle3, for python
sudo apt-get install -y gparted #for gparted
sudo apt-get install -y octave #for gnu octave
sudo apt-get install -y unity-tweak-tool #for unity tweak tool
sudo apt-get install -y scilab #for installing scilab
sudo apt-get install -y python-pip #for installing pip. pip helps us install python packages
sudo apt-get install -y texlive
sudo apt-get install -y texmaker
sudo apt-get install -f -y cmake
sudo apt-get install -f -y git
sudo deb -i ./texstudio_2.12.0-5.1_amd64.deb
sudo apt-get install -f -y
sudo apt-get install -f -y lyx

#sudo wget https://repo.continuum.io/archive/Anaconda2-4.2.0-Linux-x86_64.sh
#sudo ./Anaconda2-4.2.0-Linux-x86_64.sh
#sudo chmod +rwx ./Anaconda2-4.2.0-Linux-x86_64.sh

sudo apt-get install -y lolcat
sudo apt-get install -y fortune-mod
sudo apt-get install -y figlet
sudo apt-get install -y cowsay
sudo apt-get install -y yum
sudo apt-get install -y python-setuptools

#for python related packages
sudo -H pip install --upgrade pip
sudo -H pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose
sudo apt-get install -f -y python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

# Consider adding this at the end of your ~/.bashrc file
# export PATH="$PATH:/home/your_user/.local/bin"

#installing libraries

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
sudo apt-get install -f -y cmake libblkid-dev e2fslibs-dev libboost-all-dev libaudit-dev
sudo apt-get install remove cmake
sudo apt-get install -f -y cmake
# pangox is necessary for installing the GUI spice for ngspice
wget http://archive.ubuntu.com/ubuntu/pool/main/p/pangox-compat/pangox-compat_0.0.2.orig.tar.xz
tar -xJvf pangox-compat_0.0.2.orig.tar.xz
sudo apt-get install -f -y build-essential make
cd pangox-compat-0.0.2
./configure
make
sudo make install

# for installing ngspice

sudo apt-get update
sudo apt-get install build-essential linux-headers-`uname -r`
sudo apt-get install libtool automake autoconf
sudo apt-get install flex bison texinfo
sudo apt-get install libx11-dev libxaw7-dev
tar xvf ngspice-26.tar.gz
cd ngspice-26
sudo ./autogen.sh
sudo ./configure
sudo ./make
sudo make install

# for installing opencv in ubuntu

sudo apt-get install -f -y build-essential cmake git pkg-config
sudo apt-get install -f -y libjpeg8-dev libtiff4-dev libjasper-dev libpng12-dev
sudo apt-get install -f -y libgtk2.0-dev
sudo apt-get install -f -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install -f -y libatlas-base-dev gfortran
sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/.cache/pip
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# To make the changes to our ~/.bashrc  file take effect, you can either
# (1) logout and log back in,
# (2) close your current terminal window and open a new one, or preferably,
# (3) reload the contents of your ~/.bashrc  file:

:'source ~/.bashrc
mkvirtualenv cv
sudo apt-get install python2.7-dev
cd ~
git clone https://github.com/Itseez/opencv.git
cd opencv
git checkout 3.1.0
cd ~
git clone https://github.com/Itseez/opencv_contrib.git
cd opencv_contrib
git checkout 3.1.0
cd ~/opencv
sudo mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_C_EXAMPLES=ON \
	-D INSTALL_PYTHON_EXAMPLES=ON \
	-D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
	-D BUILD_EXAMPLES=ON ..'

# Update (3 January 2016): In order to build OpenCV 3.1.0 ,
# you need to set -D INSTALL_C_EXAMPLES=OFF  (rather than ON ) in the cmake  command.
# There is a bug in the OpenCV v3.1.0 CMake build script that can cause errors if you leave this switch on.
# Once you set this switch to off, CMake should run without a problem.

sudo make -j4
sudo make install
sudo ldconfig
cd ~/.virtualenvs/cv/lib/python2.7/site-packages/
ln -s /usr/local/lib/python2.7/site-packages/cv2.so cv2.so
workon cv

# run python from command line
# >>>import cv2
# cv2.__version__
# '3.1.0'

# check this link for the first program using OpenCV

# http://www.pyimagesearch.com/2015/06/22/install-opencv-3-0-and-python-2-7-on-ubuntu/

# for installing Tensorflow in ubuntu

sudo -H pip uninstall protobuf
sudo -H pip install --upgrade tensorflow
sudo -H pip install --upgrade tensorflow-gpu
sudo -H pip install --upgrade protobuf

# for installing Theano

sudo apt-get -f -y install python-numpy python-scipy python-dev python-pip python-nose g++ libopenblas-dev git
# these dependencies would already be installed
sudo -H pip install --upgrade Theano

# for installing Lua

sudo curl -R -O http://www.lua.org/ftp/lua-5.3.3.tar.gz
tar zxf lua-5.3.3.tar.gz
cd lua-5.3.3
make linux test
sudo make install
sudo apt-get install -f -y lua5*

# for installing Torch

git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch; bash install-deps
sudo ./install.sh

# for installing CUDA

# Download the .deb file from https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb

sudo dpkg -i cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64.deb
sudo apt-get update
sudo apt-get install cuda

#installing OpenCV using .sh file from R S Nikhil Krishna's git repo

./opencv_installation.sh

# installing eiskaltdc++

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


# gen update

echo "this program doesn't install lamp-server"
echo "you simply have to run sudo apt-get install lamp-server^"

echo "just some basic stuff remaining"

sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean
