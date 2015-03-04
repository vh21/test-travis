FILE=main.c
OUT=$(FILE:.c= )

.PHONY: all clean
all: $(OUT)

$(OUT): $(FILE)
	$(CC) $(CFLAGS) -o $@ $<

clean:
	-rm $(OUT)

test:
	./main
