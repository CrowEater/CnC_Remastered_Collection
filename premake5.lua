workspace "C&C remastered"
	configurations { "Debug", "Release" }
	location "build"
	targetdir "bin/RedAlert"
	debugdir "../../Documents/CnCRemastered"

project "TiberianDawn"
	kind "SharedLib"
	language "C++"
	cppdialect "C++17"
	
	files { "TIBERIANDAWN/**.h", 
		"TIBERIANDAWN/**.cpp", 
		"TIBERIANDAWN/RESOURCE/TIBERIANDAWN.rc",
		"TIBERIANDAWN/WIN32LIB/TOBUFF.ASM",
		"TIBERIANDAWN/WIN32LIB/XORDELTA.ASM",
		"TIBERIANDAWN/TXTPRNT.ASM",
		"TIBERIANDAWN/KEYFBUFF.ASM",
		"TIBERIANDAWN/MMX.ASM",
	}
	includedirs { "TIBERIANDAWN/WIN32LIB" }
	defines { "TRUE_FALSE_DEFINED", "_CRT_SECURE_NO_WARNINGS", "_CRT_NONSTDC_NO_DEPRECATE", "WIN32", "_WIN32", "ENGLISH" }
	disablewarnings { "5033" }
	structmemberalign(1)

	vpaths {
		["Headers"] = { "**.h", "**.H" },
		["Sources/*"] = {"**.cpp", "**.CPP"},
		["Assembly"] = { "**.asm", "**.ASM" },
	}
	filter "system:Windows"
		characterset "MBCS"
		links { "winmm", "Ws2_32" }
	filter ""
	
	filter "configurations:Debug"
		defines { "DEBUG" }
		symbols "On"
	
	filter "configurations:Release"
		defines { "NDEBUG" }
		optimize "On"

project "RedAlert"
	kind "SharedLib"
	language "C++"
	cppdialect "C++17"
	
	files { "REDALERT/**.h", 
		"REDALERT/**.cpp", 
		"REDALERT/*.rc",
		"REDALERT/WIN32LIB/TOBUFF.ASM",
		"REDALERT/TXTPRNT.ASM",
		"REDALERT/KEYFBUFF.ASM",
		"REDALERT/MMX.ASM",
		"REDALERT/LCWCOMP.ASM",
	}
	removefiles { 
		"REDALERT/_WSPROTO.CPP",
		"REDALERT/BMP8.CPP", 
		"REDALERT/BMP8.H",
		"REDALERT/KEYBOARD.CPP",
		"REDALERT/LZWOTRAW.CPP",
		"REDALERT/MPLIB.CPP",
		"REDALERT/MPMGRD.CPP",
		"REDALERT/MPMGRD.H",
		"REDALERT/NOSEQCON.CPP",
		"REDALERT/TURRET.CPP",
	}
	includedirs { "REDALERT/WIN32LIB" }
	defines { "TRUE_FALSE_DEFINED", "_CRT_SECURE_NO_WARNINGS", "_CRT_NONSTDC_NO_DEPRECATE", "WIN32", "_WIN32", "ENGLISH" }
	disablewarnings { "5033" }
	structmemberalign(1)

	vpaths {
		["Headers"] = { "**.h", "**.H" },
		["Sources/*"] = {"**.cpp", "**.CPP"},
		["Assembly"] = { "**.asm", "**.ASM" },
	}
	filter "system:Windows"
		characterset "MBCS"
		links { "winmm", "Ws2_32" }
	filter ""
	
	filter "configurations:Debug"
		defines { "DEBUG" }
		symbols "On"
	
	filter "configurations:Release"
		defines { "NDEBUG" }
		optimize "On"
