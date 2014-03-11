
##### To do only 1 time #####

# - create the standalone compiler
#sudo /android/android-ndk-r9d/build/tools/make-standalone-toolchain.sh --platform=android-9 --install-dir=/android/ndk-standalone-9

# - add the compiler to the path
#PATH=/android/ndk-standalone-9/bin:$PATH

##### Build #####

CFLAGS="-std=gnu99" ./configure --host=arm-linux-androidabi --prefix=/android --without-zlib --enable-shared
make
make install DESTDIR=$(pwd)
