LIBSCI+=libsci.py

libsci.py: ${INCLUDE_LIBSCI}/libsci.py
${INCLUDE_LIBSCI}/libsci.py:
	${MAKE} -C ${INCLUDE_LIBSCI} libsci.py

${LIBSCI}: ${INCLUDE_LIBSCI}
	[ -e "./$@" ] || ln -s ${INCLUDE_LIBSCI}/$@ ./$@

.PHONY: clean-depends
clean-depends: clean-libsci
clean-libsci:
	find ${LIBSCI} -type l | xargs ${RM}
	${MAKE} -C ${INCLUDE_LIBSCI} clean clean-depends


INCLUDE_LIBSCI?= libsci
