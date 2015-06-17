.PHONY: all
all: libsci.py libsci.pdf

libsci.py: libsci.py.nw
libsci.pdf: libsci.py.nw

.PHONY: clean
clean:
	${RM} libsci.py libsci.pdf libsci.tex

### INCLUDES ###

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
