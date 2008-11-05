OBJS=src/intro.o src/normal.o src/metaballs/metalib.o\
	 src/gifdecoder/GifDecoder.o src/gifdecoder/BitStream.o

CFLAGS=-O2
CXXFLAGS=-O2 `sdl-config --cflags` -I./src/minifmod/include
LIBS=`sdl-config --libs` -lGL -lGLU -L./src/minifmod/lib/linux -lminifmod
TARGET=softworld

all: $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(TARGET) $(LIBS)
clean:
	rm -f src/*.o src/*/*.o
