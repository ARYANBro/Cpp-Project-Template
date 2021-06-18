project "Project"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++2a"
	staticruntime "on"

	targetdir ("%{wks.location}/Binaries/%{cfg.buildcfg}/%{prj.name}")
	objdir ("%{wks.location}/Binaries/%{cfg.buildcfg}/%{prj.name}/Objects")

	files
	{
		"Source/**.cpp"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	
	filter "configurations:Release"
		runtime "Release"
		optimize "on"
