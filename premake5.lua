project "ImGui"
kind "StaticLib"
language "C++"
cppdialect "C++17"
staticruntime "On"

targetdir ("bin/" .. outputdir .. "/%{prj.name}")
objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

files
{
    "imconfig.h",
    "imgui.cpp",
    "imgui.h",
    "imgui_demo.cpp",
    "imgui_draw.cpp",
    "imgui_internal.h",
    "imgui_tables.cpp",
    "imgui_widgets.cpp",
    "imstb_rectpack.h",
    "imstb_textedit.h",
    "imstb_truetype.h"
}

defines 
{ 
    "_CRT_SECURE_NO_WARNINGS"
}

filter "system:linux"
    pic "On"
    systemversion "latest"

filter "system:windows"
    systemversion "latest"
    
filter "configurations:Debug"
    runtime "Debug"
    symbols "On"

filter "configurations:Release"
    runtime "Release"
    optimize "On"