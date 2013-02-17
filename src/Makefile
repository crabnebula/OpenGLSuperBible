PROG := Move Triangle Bounce Blending GeoTest Primitives Scissor Smoother \
		ModelViewProjection Move4 Objects OrthoGraphic Perspective SphereWorld \
		SphereWorld2 SphereWorld3 SphereWorld4
SRCS := $(PROG:=.cpp)
OBJS := $(PROG:=.o)

all : $(PROG)

$(PROG) : % : %.o $(SHAREDPATH)libbuild.a
	@echo "\tln $@"
	@$(CC) -o $@ $(LIBDIRS) $^ $(LIBS)
	
%.o : %.cpp
	@echo "\tcc $@"
	@$(CC) $(CFLAGS) -c $<
	
.PHONY: clean

clean:
	@rm -v $(OBJS) $(PROG)
