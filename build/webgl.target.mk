# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := webgl
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=webgl' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DVERSION=1.0.0' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0 \
	-gdwarf-2 \
	-mmacosx-version-min=10.8 \
	-arch arm64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=c++14 \
	-stdlib=libc++ \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug :=

INCS_Debug := \
	-I/Users/leesin/Library/Caches/node-gyp/16.13.1/include/node \
	-I/Users/leesin/Library/Caches/node-gyp/16.13.1/src \
	-I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/openssl/config \
	-I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/openssl/openssl/include \
	-I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/uv/include \
	-I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/zlib \
	-I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/v8/include \
	-I$(srcdir)/../../../nan@2.15.0/node_modules/nan \
	-I/Users/leesin/Documents/project/sketch/node_modules/.pnpm/gl@5.0.0/node_modules/gl/deps/include \
	-I$(srcdir)/angle/include \
	-I$(obj)/gen/angle

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=webgl' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DVERSION=1.0.0' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-O3 \
	-gdwarf-2 \
	-mmacosx-version-min=10.8 \
	-arch arm64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Release := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=c++14 \
	-stdlib=libc++ \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release :=

INCS_Release := \
	-I/Users/leesin/Library/Caches/node-gyp/16.13.1/include/node \
	-I/Users/leesin/Library/Caches/node-gyp/16.13.1/src \
	-I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/openssl/config \
	-I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/openssl/openssl/include \
	-I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/uv/include \
	-I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/zlib \
	-I/Users/leesin/Library/Caches/node-gyp/16.13.1/deps/v8/include \
	-I$(srcdir)/../../../nan@2.15.0/node_modules/nan \
	-I/Users/leesin/Documents/project/sketch/node_modules/.pnpm/gl@5.0.0/node_modules/gl/deps/include \
	-I$(srcdir)/angle/include \
	-I$(obj)/gen/angle

OBJS := \
	$(obj).target/$(TARGET)/src/native/bindings.o \
	$(obj).target/$(TARGET)/src/native/webgl.o \
	$(obj).target/$(TARGET)/src/native/procs.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(builddir)/EGL.a $(builddir)/GLESv2.a $(builddir)/ANGLE.a $(builddir)/translator_static.a $(builddir)/translator_lib.a $(builddir)/preprocessor.a $(builddir)/angle_common.a $(obj).target/angle/src/commit_id.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.8 \
	-arch arm64 \
	-L$(builddir) \
	-Wl,-rpath,@executable_path/. \
	-stdlib=libc++ \
	-L/Users/leesin/Documents/project/sketch/node_modules/.pnpm/gl@5.0.0/node_modules/gl/deps/darwin

LIBTOOLFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first

LDFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.8 \
	-arch arm64 \
	-L$(builddir) \
	-Wl,-rpath,@executable_path/. \
	-stdlib=libc++ \
	-L/Users/leesin/Documents/project/sketch/node_modules/.pnpm/gl@5.0.0/node_modules/gl/deps/darwin

LIBTOOLFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first

LIBS := \
	-framework QuartzCore \
	-framework Quartz \
	-framework OpenGL \
	-framework IOSurface \
	-framework Cocoa \
	-framework QuartzCore

$(builddir)/webgl.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/webgl.node: LIBS := $(LIBS)
$(builddir)/webgl.node: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/webgl.node: TOOLSET := $(TOOLSET)
$(builddir)/webgl.node: $(OBJS) $(builddir)/EGL.a $(builddir)/GLESv2.a $(builddir)/ANGLE.a $(builddir)/translator_static.a $(builddir)/translator_lib.a $(builddir)/preprocessor.a $(builddir)/angle_common.a FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(builddir)/webgl.node
# Add target alias
.PHONY: webgl
webgl: $(builddir)/webgl.node

# Short alias for building this executable.
.PHONY: webgl.node
webgl.node: $(builddir)/webgl.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/webgl.node
