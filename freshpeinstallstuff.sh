git clone https://github.com/akhilnarang/scripts.git
chmod a+x /scripts
source setup/android_build_env.sh
source setup/ccache.sh
cd ..
mkdir pixel && cd pixel
repo init -u https://github.com/PixelExperience/manifest -b ten
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
git clone https://github.com/Aghora7/device_xiaomi_sdm439-common.git -b lineage-17.1 device/xiaomi/sdm439-common
git clone https://github.com/Aghora7/device_xiaomi_olivewood.git -b lineage-17.1 device/xiaomi/olivewood
git clone https://github.com/Redmi-7A-Development/android_vendor_xiaomi_sdm439-common.git -b lineage-17.1 vendor/xiaomi/sdm439-common
sleep 10m
source b*/e* && lunch aosp_olivewood-eng
make bacon -j8
