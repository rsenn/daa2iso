project(daa2iso)


add_executable(daa2iso
    src/daa2iso.c
    src/daa_crypt.h
    src/LzmaDec.c
    src/LzmaDec.h
    src/tinf.h
    src/tinflate.c
    src/Types.h
)

install(TARGETS daa2iso DESTINATION bin)
