project "FreeType"
	kind "SharedLib"
	language "C"
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "include/ft2build.h",
        "include/**.h"
	}
    libdirs{
        "win64"
    }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"
	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	filter "configurations:Release"
		runtime "Release"
		optimize "on"