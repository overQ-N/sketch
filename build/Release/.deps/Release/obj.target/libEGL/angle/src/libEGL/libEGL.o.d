cmd_Release/obj.target/libEGL/angle/src/libEGL/libEGL.o := c++ -o Release/obj.target/libEGL/angle/src/libEGL/libEGL.o ../angle/src/libEGL/libEGL.cpp '-DNODE_GYP_MODULE_NAME=libEGL' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_GLIBCXX_USE_CXX11_ABI=1' '-D_DARWIN_USE_64_BIT_INODE=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DOPENSSL_NO_PINSHARED' '-DOPENSSL_THREADS' '-DGL_GLEXT_PROTOTYPES' '-DANGLE_PRELOADED_D3DCOMPILER_MODULE_NAMES={ "d3dcompiler_47.dll", "d3dcompiler_46.dll", "d3dcompiler_43.dll" }' '-DGL_APICALL=__attribute__((visibility("default")))' '-DEGLAPI=__attribute__((visibility("default")))' '-DANGLE_ENABLE_OPENGL' '-DNDEBUG' -I/Users/leesin/Library/Caches/node-gyp/16.13.1/include/node -I/Users/leesin/Library/Caches/node-gyp/16.13.1/src -I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/openssl/config -I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/openssl/openssl/include -I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/uv/include -I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/zlib -I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/v8/include -I../angle/src -I../angle/include -I./Release/obj/gen/angle -I../angle/src -I../angle/include  -O3 -gdwarf-2 -mmacosx-version-min=10.13 -arch arm64 -Wall -Wchar-subscripts -Wextra -Wformat=2 -Winit-self -Wnon-virtual-dtor -Wno-format-nonliteral -Wno-unknown-pragmas -Wno-unused-function -Wno-unused-parameter -Wpacked -Wpointer-arith -Wundef -Wwrite-strings -Wall -Wendif-labels -W -Wno-unused-parameter -std=c++11 -stdlib=libc++ -fno-rtti -fno-exceptions -std=c++11 -stdlib=libc++ -mmacosx-version-min=10.7 -fno-strict-aliasing -MMD -MF ./Release/.deps/Release/obj.target/libEGL/angle/src/libEGL/libEGL.o.d.raw   -c
Release/obj.target/libEGL/angle/src/libEGL/libEGL.o: \
  ../angle/src/libEGL/libEGL.cpp \
  ../angle/src/libGLESv2/entry_points_egl.h ../angle/include/EGL/egl.h \
  ../angle/include/EGL/eglplatform.h ../angle/include/KHR/khrplatform.h \
  ../angle/include/export.h \
  ../angle/src/libGLESv2/entry_points_egl_ext.h \
  ../angle/include/EGL/eglext.h
../angle/src/libEGL/libEGL.cpp:
../angle/src/libGLESv2/entry_points_egl.h:
../angle/include/EGL/egl.h:
../angle/include/EGL/eglplatform.h:
../angle/include/KHR/khrplatform.h:
../angle/include/export.h:
../angle/src/libGLESv2/entry_points_egl_ext.h:
../angle/include/EGL/eglext.h:
