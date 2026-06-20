workspace "cdl86"
    configurations { "Debug", "Release" }
    architecture "x86_64"
    location "build"

    symbols "On"
    optimize "Off"

    flags {
        "NoIncrementalLink",
        "NoRuntimeChecks"
    }

    filter "configurations:*"
        buildoptions {
            "/RTC-",
            "/Ob0",
            "/Oy-"
        }

        linkoptions {
            "/OPT:NOICF"
        }

    filter {}

project "basic_jmp"
    kind "ConsoleApp"
    language "C"

    targetdir ("bin/%{cfg.buildcfg}")

    files {
        "cdl.c",
        "cdl.h",
        "tests/basic_jmp.c"
    }

    includedirs {
        "."
    }

project "basic_swbp"
    kind "ConsoleApp"
    language "C"

    targetdir ("bin/%{cfg.buildcfg}")

    files {
        "cdl.c",
        "cdl.h",
        "tests/basic_swbp.c"
    }

    includedirs {
        "."
    }
