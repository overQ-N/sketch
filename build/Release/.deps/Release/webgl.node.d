cmd_Release/webgl.node := c++ -bundle -undefined dynamic_lookup -Wl,-search_paths_first -mmacosx-version-min=10.8 -arch arm64 -L./Release -Wl,-rpath,@executable_path/. -stdlib=libc++ -L/Users/leesin/Documents/project/sketch/node_modules/.pnpm/gl@5.0.0/node_modules/gl/deps/darwin  -o Release/webgl.node Release/obj.target/webgl/src/native/bindings.o Release/obj.target/webgl/src/native/webgl.o Release/obj.target/webgl/src/native/procs.o Release/EGL.a Release/GLESv2.a Release/ANGLE.a Release/translator_static.a Release/translator_lib.a Release/preprocessor.a Release/angle_common.a -framework QuartzCore -framework Quartz -framework OpenGL -framework IOSurface -framework Cocoa -framework QuartzCore