if(WIN64)
	add_library(SDL2 SHARED IMPORTED GLOBAL)
	set_target_properties(SDL2 PROPERTIES IMPORTED_LOCATION "${SDK_DIR}/SDL2/lib/win_x64/SDL2.dll")
	set_target_properties(SDL2 PROPERTIES IMPORTED_IMPLIB "${SDK_DIR}/SDL2/lib/win_x64/SDL2.lib")
	set_target_properties(SDL2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${SDK_DIR}/SDL2/include/win")

	deploy_runtime_files(${SDK_DIR}/SDL2/lib/win_x64/SDL2.dll)
elseif(WIN32)
	add_library(SDL2 SHARED IMPORTED GLOBAL)
	set_target_properties(SDL2 PROPERTIES IMPORTED_LOCATION "${SDK_DIR}/SDL2/lib/win_x86/SDL2.dll")
	set_target_properties(SDL2 PROPERTIES IMPORTED_IMPLIB "${SDK_DIR}/SDL2/lib/win_x86/SDL2.lib")
	set_target_properties(SDL2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${SDK_DIR}/SDL2/include/win")	

	deploy_runtime_files(${SDK_DIR}/SDL2/lib/win_x86/SDL2.dll)
elseif(LINUX64)
	add_library(SDL2 SHARED IMPORTED GLOBAL)
	set_target_properties(SDL2 PROPERTIES IMPORTED_LOCATION "${SDK_DIR}/SDL2/lib/linux_x64/SDL2.dll")
	set_target_properties(SDL2 PROPERTIES IMPORTED_IMPLIB "${SDK_DIR}/SDL2/lib/linux_x64/SDL2.lib")
	set_target_properties(SDL2 PROPERTIES INTERFACE_INCLUDE_DIRECTORIES "${SDK_DIR}/SDL2/include/linux")

	deploy_runtime_files(${SDK_DIR}/SDL2/lib/linux_x64/libSDL2.*)
endif()