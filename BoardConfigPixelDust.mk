# Common board config for marlin, sailfish

# Kernel
TARGET_KERNEL_CLANG_VERSION := 7.0
TARGET_KERNEL_CLANG_PATH := $(ANDROID_BUILD_TOP)/prebuilts/clang/host/$(HOST_OS)-x86/$(TARGET_KERNEL_CLANG_VERSION)/bin
KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-android-
TARGET_KERNEL_CONFIG := pixeldust_marlin_defconfig
TARGET_KERNEL_SOURCE := kernel/google/marlin
TARGET_KERNEL_APPEND_DTB := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_USES_UNCOMPRESSED_KERNEL := false
BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

# Snapdragon LLVM (in order to use it, you are required to disable DragonTC)
TARGET_USE_SDCLANG := true
DISABLE_DTC_OPTS := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Squisher
BOARD_USES_SYSTEMIMAGE_SQUISHER := true

