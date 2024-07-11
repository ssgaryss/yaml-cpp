project "yaml-cpp"
    kind "StaticLib"
    language "C++"
    staticruntime "On"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp",
        "include/yaml-cpp/**.h"
    }

    filter "system:windows"
    systemversion "latest"
    cppdialect "C++17"

    filter "system:linux"
        pic "On"
        systemversion "latest"
        cppdialect "C++17"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        optimize "on"
        symbols "off"