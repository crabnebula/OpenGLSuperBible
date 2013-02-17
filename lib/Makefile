SRCS_C := glew.c
SRCS_CPP := GLBatch.cpp GLShaderManager.cpp GLTools.cpp GLTriangleBatch.cpp math3d.cpp

SRCS := $(SRCS_C) $(SRCS_CPP)
OBJS := $(SRCS_C:%.c=%.o) $(SRCS_CPP:%.cpp=%.o)
OBJS_C := $(SRCS_C:%.c=%.o)
OBJS_CPP := $(SRCS_CPP:%.cpp=%.o)

libbuild.a : $(OBJS)
	@echo "\tar $@"
	@$(AR) r $@ $(OBJS)
	
$(OBJS_C) : %.o : %.c
	@echo "\tcc $@"
	@$(CC) $(CFLAGS) -c $<
$(OBJS_CPP) : %.o : %.cpp
	@echo "\tcc $@"
	@$(CC) $(CFLAGS) -c $<

.PHONY: clean

clean:
	@rm -v $(OBJS) libbuild.a
