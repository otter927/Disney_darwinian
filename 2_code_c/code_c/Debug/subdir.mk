################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../HetNet_toc.cpp \
../HetNet_toc_BS.cpp \
../HetNet_toc_Link.cpp \
../HetNet_toc_Sim.cpp \
../HetNet_toc_UE.cpp \
../HetNet_toc_func.cpp \
../darwinian_rbm_rap.cpp 

C_SRCS += \
../randomGenerator.c 

CPP_DEPS += \
./HetNet_toc.d \
./HetNet_toc_BS.d \
./HetNet_toc_Link.d \
./HetNet_toc_Sim.d \
./HetNet_toc_UE.d \
./HetNet_toc_func.d \
./darwinian_rbm_rap.d 

C_DEPS += \
./randomGenerator.d 

OBJS += \
./HetNet_toc.o \
./HetNet_toc_BS.o \
./HetNet_toc_Link.o \
./HetNet_toc_Sim.o \
./HetNet_toc_UE.o \
./HetNet_toc_func.o \
./darwinian_rbm_rap.o \
./randomGenerator.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -ftest-coverage -fprofile-arcs -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

%.o: ../%.c subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean--2e-

clean--2e-:
	-$(RM) ./HetNet_toc.d ./HetNet_toc.o ./HetNet_toc_BS.d ./HetNet_toc_BS.o ./HetNet_toc_Link.d ./HetNet_toc_Link.o ./HetNet_toc_Sim.d ./HetNet_toc_Sim.o ./HetNet_toc_UE.d ./HetNet_toc_UE.o ./HetNet_toc_func.d ./HetNet_toc_func.o ./darwinian_rbm_rap.d ./darwinian_rbm_rap.o ./randomGenerator.d ./randomGenerator.o

.PHONY: clean--2e-

