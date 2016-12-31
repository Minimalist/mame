-- license:BSD-3-Clause
-- copyright-holders:MAMEdev Team

---------------------------------------------------------------------------
--
--   tools.lua
--
--   Rules for the building of tools
--
---------------------------------------------------------------------------

--------------------------------------------------
-- romcmp
--------------------------------------------------

project("romcmp")
uuid ("1b40275b-194c-497b-8abd-9338775a21b8")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"utils",
	ext_lib("expat"),
	"7z",
	"ocore_" .. _OPTIONS["osd"],
	ext_lib("zlib"),
	ext_lib("utf8proc"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib/util",
}

files {
	MAME_DIR .. "src/tools/romcmp.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- chdman
--------------------------------------------------

project("chdman")
uuid ("7d948868-42db-432a-9bb5-70ce5c5f4620")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"utils",
	ext_lib("expat"),
	"7z",
	"ocore_" .. _OPTIONS["osd"],
	ext_lib("zlib"),
	ext_lib("flac"),
	ext_lib("utf8proc"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib/util",
	MAME_DIR .. "3rdparty",
}
includedirs {
	ext_includedir("flac"),
}

files {
	MAME_DIR .. "src/tools/chdman.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
	GEN_DIR .. "version.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- jedutil
--------------------------------------------------

project("jedutil")
uuid ("bda60edb-f7f5-489f-b232-23d33c43dda1")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"utils",
	ext_lib("expat"),
	"ocore_" .. _OPTIONS["osd"],
	ext_lib("zlib"),
	ext_lib("utf8proc"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib/util",
}

files {
	MAME_DIR .. "src/tools/jedutil.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- unidasm
--------------------------------------------------

project("unidasm")
uuid ("65f81d3b-299a-4b08-a3fa-d5241afa9fd1")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"dasm",
	"utils",
	ext_lib("expat"),
	"7z",
	"ocore_" .. _OPTIONS["osd"],
	ext_lib("zlib"),
	ext_lib("flac"),
	ext_lib("utf8proc"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/devices",
	MAME_DIR .. "src/emu",
	MAME_DIR .. "src/lib/util",
	MAME_DIR .. "3rdparty",
}

files {
	MAME_DIR .. "src/tools/unidasm.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- ldresample
--------------------------------------------------

project("ldresample")
uuid ("3401561a-4407-4e13-9c6d-c0801330f7cc")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"utils",
	ext_lib("expat"),
	"7z",
	"ocore_" .. _OPTIONS["osd"],
	ext_lib("zlib"),
	ext_lib("flac"),
	ext_lib("utf8proc"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib/util",
	MAME_DIR .. "3rdparty",
}
includedirs {
	ext_includedir("flac"),
}

files {
	MAME_DIR .. "src/tools/ldresample.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- ldverify
--------------------------------------------------

project("ldverify")
uuid ("3e66560d-b928-4227-928b-eadd0a10f00a")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"utils",
	ext_lib("expat"),
	"7z",
	"ocore_" .. _OPTIONS["osd"],
	ext_lib("zlib"),
	ext_lib("flac"),
	ext_lib("utf8proc"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib/util",
	MAME_DIR .. "3rdparty",
}
includedirs {
	ext_includedir("flac"),
}

files {
	MAME_DIR .. "src/tools/ldverify.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- regrep
--------------------------------------------------

project("regrep")
uuid ("7f6de580-d800-4e8d-bed6-9fc86829584d")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"utils",
	ext_lib("expat"),
	"ocore_" .. _OPTIONS["osd"],
	ext_lib("zlib"),
	ext_lib("utf8proc"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib/util",
}

files {
	MAME_DIR .. "src/tools/regrep.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- srcclean
---------------------------------------------------

project("srcclean")
uuid ("4dd58139-313a-42c5-965d-f378bdeed220")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"utils",
	ext_lib("expat"),
	"ocore_" .. _OPTIONS["osd"],
	ext_lib("zlib"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib/util",
}

files {
	MAME_DIR .. "src/tools/srcclean.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- src2html
--------------------------------------------------

project("src2html")
uuid ("b31e963a-09ef-4696-acbd-e663e35ce6f7")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"utils",
	ext_lib("expat"),
	"ocore_" .. _OPTIONS["osd"],
	ext_lib("zlib"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib/util",
}

files {
	MAME_DIR .. "src/tools/src2html.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- split
--------------------------------------------------

project("split")
uuid ("8ef6ff18-3199-4cc2-afd0-d64033070faa")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"utils",
	ext_lib("expat"),
	"7z",
	"ocore_" .. _OPTIONS["osd"],
	ext_lib("zlib"),
	ext_lib("flac"),
	ext_lib("utf8proc"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib/util",
}

files {
	MAME_DIR .. "src/tools/split.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- pngcmp
--------------------------------------------------

project("pngcmp")
uuid ("61f647d9-b129-409b-9c62-8acf98ed39be")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"utils",
	ext_lib("expat"),
	"ocore_" .. _OPTIONS["osd"],
	ext_lib("zlib"),
	ext_lib("utf8proc"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib/util",
}

files {
	MAME_DIR .. "src/tools/pngcmp.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- nltool
--------------------------------------------------

project("nltool")
uuid ("853a03b7-fa37-41a8-8250-0dc23dd935d6")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"utils",
	ext_lib("expat"),
	"7z",
	"ocore_" .. _OPTIONS["osd"],
	"netlist",
	ext_lib("zlib"),
	ext_lib("flac"),
	ext_lib("utf8proc"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib/util",
	MAME_DIR .. "src/lib/netlist",
}

files {
	MAME_DIR .. "src/lib/netlist/prg/nltool.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- nlwav
--------------------------------------------------

project("nlwav")
uuid ("7c5396d1-2a1a-4c93-bed6-6b8fa182054a")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"utils",
	"ocore_" .. _OPTIONS["osd"],
	"netlist",
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib/util",
	MAME_DIR .. "src/lib/netlist",
}

files {
	MAME_DIR .. "src/lib/netlist/prg/nlwav.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- castool
--------------------------------------------------

project("castool")
uuid ("7d9ed428-e2ba-4448-832d-d882a64d5c22")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"formats",
	"utils",
	ext_lib("expat"),
	"7z",
	"ocore_" .. _OPTIONS["osd"],
	ext_lib("zlib"),
	ext_lib("flac"),
	ext_lib("utf8proc"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib",
	MAME_DIR .. "src/lib/util",
}

files {
	MAME_DIR .. "src/tools/castool.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- floptool
--------------------------------------------------

project("floptool")
uuid ("85d8e3a6-1661-4ac9-8c21-281d20cbaf5b")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"formats",
	"emu",
	"utils",
	ext_lib("expat"),
	"7z",
	"ocore_" .. _OPTIONS["osd"],
	ext_lib("zlib"),
	ext_lib("flac"),
	ext_lib("utf8proc"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib",
	MAME_DIR .. "src/lib/util",
}

files {
	MAME_DIR .. "src/tools/floptool.cpp",
	MAME_DIR .. "src/emu/emucore.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- imgtool
--------------------------------------------------

project("imgtool")
uuid ("f3707807-e587-4297-a5d8-bc98f3d0b1ca")
kind "ConsoleApp"

flags {
	"Symbols", -- always include minimum symbols for executables
}

if _OPTIONS["SEPARATE_BIN"]~="1" then
	targetdir(MAME_DIR)
end

links {
	"formats",
	"emu",
	"utils",
	ext_lib("expat"),
	"7z",
	"ocore_" .. _OPTIONS["osd"],
	ext_lib("zlib"),
	ext_lib("flac"),
	ext_lib("utf8proc"),
}

includedirs {
	MAME_DIR .. "src/osd",
	MAME_DIR .. "src/lib",
	MAME_DIR .. "src/lib/util",
	ext_includedir("zlib"),
	MAME_DIR .. "src/tools/imgtool",
}

files {
	MAME_DIR .. "src/tools/imgtool/main.cpp",
	MAME_DIR .. "src/tools/imgtool/main.h",
	MAME_DIR .. "src/tools/imgtool/stream.cpp",
	MAME_DIR .. "src/tools/imgtool/stream.h",
	MAME_DIR .. "src/tools/imgtool/library.cpp",
	MAME_DIR .. "src/tools/imgtool/library.h",
	MAME_DIR .. "src/tools/imgtool/modules.cpp",
	MAME_DIR .. "src/tools/imgtool/modules.h",
	MAME_DIR .. "src/tools/imgtool/iflopimg.cpp",
	MAME_DIR .. "src/tools/imgtool/iflopimg.h",
	MAME_DIR .. "src/tools/imgtool/filter.cpp",
	MAME_DIR .. "src/tools/imgtool/filter.h",
	MAME_DIR .. "src/tools/imgtool/filteoln.cpp",
	MAME_DIR .. "src/tools/imgtool/filtbas.cpp",
	MAME_DIR .. "src/tools/imgtool/imgtool.cpp",
	MAME_DIR .. "src/tools/imgtool/imgtool.h",
	MAME_DIR .. "src/tools/imgtool/imgterrs.cpp",
	MAME_DIR .. "src/tools/imgtool/imgterrs.h",
	MAME_DIR .. "src/tools/imgtool/imghd.cpp",
	MAME_DIR .. "src/tools/imgtool/imghd.h",
	MAME_DIR .. "src/tools/imgtool/charconv.cpp",
	MAME_DIR .. "src/tools/imgtool/charconv.h",
	MAME_DIR .. "src/tools/imgtool/formats/vt_dsk.cpp",
	MAME_DIR .. "src/tools/imgtool/formats/vt_dsk.h",
	MAME_DIR .. "src/tools/imgtool/formats/coco_dsk.cpp",
	MAME_DIR .. "src/tools/imgtool/formats/coco_dsk.h",
	MAME_DIR .. "src/tools/imgtool/modules/amiga.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/macbin.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/rsdos.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/os9.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/mac.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/ti99.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/ti990hd.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/concept.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/fat.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/fat.h",
	MAME_DIR .. "src/tools/imgtool/modules/pc_flop.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/pc_hard.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/prodos.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/vzdos.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/thomson.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/macutil.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/macutil.h",
	MAME_DIR .. "src/tools/imgtool/modules/cybiko.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/cybikoxt.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/psion.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/bml3.cpp",
	MAME_DIR .. "src/tools/imgtool/modules/hp48.cpp",
		MAME_DIR .. "src/tools/imgtool/modules/hp9845_tape.cpp",
}

configuration { "mingw*" or "vs*" }
	targetextension ".exe"

configuration { }

strip()

--------------------------------------------------
-- aueffectutil
--------------------------------------------------

if _OPTIONS["targetos"] == "macosx" then
	project("aueffectutil")
		uuid ("3db8316d-fad7-4f5b-b46a-99373c91550e")
		kind "ConsoleApp"

		flags {
			"Symbols", -- always include minimum symbols for executables
		}

		if _OPTIONS["SEPARATE_BIN"]~="1" then
			targetdir(MAME_DIR)
		end

		linkoptions {
			"-sectcreate __TEXT __info_plist " .. MAME_DIR .. "src/tools/aueffectutil-Info.plist",
		}

		dependency {
			{ "aueffectutil",  MAME_DIR .. "src/tools/aueffectutil-Info.plist", true  },
		}

		links {
			"AudioUnit.framework",
			"AudioToolbox.framework",
			"CoreAudio.framework",
			"CoreAudioKit.framework",
			"CoreServices.framework",
		}

		files {
			MAME_DIR .. "src/tools/aueffectutil.mm",
		}

		configuration { }

		strip()
end
