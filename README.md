# Download Kernel source
 Refer to https://source.android.com/setup/build/building-kernels

 Make separate kernel directory apart from Android source.

  $ cd <kernel directory>
  $ repo init -u https://github.com/android-rpi/kernel_manifest -b arpi-5.10
  $ repo sync

 If you are using a filesystem that is not case sensitive (the default in macOS) then you
 need to first create a case sensitive disk image, mount it, and download the code there:

   $ hdiutil create -type SPARSE -fs 'Case-sensitive Journaled HFS+' -size 250g ~/android.dmg.sparseimage

 Refer to https://source.android.com/setup/build/initializing.

# Build Kernel
  $ build/build.sh

  Output files are under out/arpi-5.10/dist/
    Image.gz
    bcm2711-rpi-4-b.dtb
    vc4-kms-v3d-pi4.dtbo

# Using Docker
 Alternatively, you can use Docker to build this project.

  $ docker pull owahltinez/rpi-android-dev
  $ docker run --rm -v ${PWD}:/root -i owahltinez/rpi-android-dev /bin/bash < ./build.sh

# Prebuilt Binaries
 You can find prebuilt binaries in [this repository's releases folder][1]. The name uses the
 following format: `${date}-rpi4-kernel-${kernel_version}-${commit}.zip`.

# Build Android for Raspberry Pi 4
 https://github.com/android-rpi/device_arpi_rpi4

[1]: https://github.com/owahltinez/rpi-android-dev/releases
