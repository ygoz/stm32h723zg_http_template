################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/http/routers/get_router.c \
../Core/Src/http/routers/main_router.c \
../Core/Src/http/routers/post_router.c 

OBJS += \
./Core/Src/http/routers/get_router.o \
./Core/Src/http/routers/main_router.o \
./Core/Src/http/routers/post_router.o 

C_DEPS += \
./Core/Src/http/routers/get_router.d \
./Core/Src/http/routers/main_router.d \
./Core/Src/http/routers/post_router.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/http/routers/%.o Core/Src/http/routers/%.su Core/Src/http/routers/%.cyclo: ../Core/Src/http/routers/%.c Core/Src/http/routers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H723xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/BSP/Components/lan8742 -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Middlewares/Third_Party/LwIP/src/apps/http -O2 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-http-2f-routers

clean-Core-2f-Src-2f-http-2f-routers:
	-$(RM) ./Core/Src/http/routers/get_router.cyclo ./Core/Src/http/routers/get_router.d ./Core/Src/http/routers/get_router.o ./Core/Src/http/routers/get_router.su ./Core/Src/http/routers/main_router.cyclo ./Core/Src/http/routers/main_router.d ./Core/Src/http/routers/main_router.o ./Core/Src/http/routers/main_router.su ./Core/Src/http/routers/post_router.cyclo ./Core/Src/http/routers/post_router.d ./Core/Src/http/routers/post_router.o ./Core/Src/http/routers/post_router.su

.PHONY: clean-Core-2f-Src-2f-http-2f-routers

