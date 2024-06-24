project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputDir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputDir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",

        -- MUST BE ADDED FOR IMGUI DOCKING
        "imgui_tables.cpp"
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"
    
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"