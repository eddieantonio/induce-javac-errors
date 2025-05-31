SRCS = $(wildcard BBM*.java)
ERRORS = $(SRCS:.java=.error.txt)

.PHONY: all clean
all: $(ERRORS)

clean:
	$(RM) $(ERRORS)

# Create an error message from an erroneous Java file
%.error.txt: %.java
	javac $< 2>&1 | tee $@
