ifeq ($(shell uname),Darwin)
	PLATFORM = mac
endif

all:
	make -f mak/make_$(PLATFORM).mak

clean:
	make -f mak/make_$(PLATFORM).mak
