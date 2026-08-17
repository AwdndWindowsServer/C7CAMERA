include $(CLEAR_VARS)

LOCAL_CFLAGS := -fno-math-errno -fno-signed-zeros -ftree-vectorize -D__STDC_CONSTANT_MACROS -fopenmp -include stdlib.h -include string.h

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
LOCAL_CFLAGS += -fprefetch-loop-arrays -funroll-loops
LOCAL_ARM_MODE := arm
endif
