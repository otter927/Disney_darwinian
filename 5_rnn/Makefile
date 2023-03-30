SRCS = \
	fizzbuzz.cxx

OBJS = $(subst .cxx,.o,$(SRCS))

CXX = clang++
CXXFLAGS = -std=c++20 \
	-I c:/dev/frugally-deep/include \
	-I c:/dev/FunctionalPlus/include \
	-I c:/dev/nlohmann_json/include \
	-I c:/msys64/mingw64/include/eigen3
LIBS = 
TARGET = fizzbuzz
ifeq ($(OS),Windows_NT)
TARGET := $(TARGET).exe
endif

.SUFFIXES: .cxx .o

all : $(TARGET)

$(TARGET) : $(OBJS)
	$(CXX) -o $@ $(OBJS) $(LIBS)

.cxx.o :
	$(CXX) -c $(CXXFLAGS) -I. $< -o $@

clean :
	rm -f *.o $(TARGET)
