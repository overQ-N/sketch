cmd_Release/GLESv2.a := rm -f Release/GLESv2.a && ./gyp-mac-tool filter-libtool libtool  -static -o Release/GLESv2.a Release/obj.target/libGLESv2/angle/src/libGLESv2/entry_points_egl.o Release/obj.target/libGLESv2/angle/src/libGLESv2/entry_points_egl_ext.o Release/obj.target/libGLESv2/angle/src/libGLESv2/entry_points_gles_2_0.o Release/obj.target/libGLESv2/angle/src/libGLESv2/entry_points_gles_2_0_ext.o Release/obj.target/libGLESv2/angle/src/libGLESv2/entry_points_gles_3_0.o Release/obj.target/libGLESv2/angle/src/libGLESv2/global_state.o Release/obj.target/libGLESv2/angle/src/libGLESv2/libGLESv2.o