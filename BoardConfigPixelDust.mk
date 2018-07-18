# Common board config for marlin, sailfish

# Kernel
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-$(TARGET_GCC_VERSION_KERNEL)/bin
KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-android-
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_CONFIG := pixeldust_marlin_defconfig
TARGET_KERNEL_SOURCE := kernel/google/marlin
TARGET_KERNEL_APPEND_DTB := true
TARGET_COMPILE_WITH_MSM_KERNEL := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Squisher
#BOARD_USES_SYSTEMIMAGE_SQUISHER := true

