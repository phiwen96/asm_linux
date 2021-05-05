
#  add_compile_options(-I ${CMAKE_CURRENT_SOURCE_DIR}/ )


file(GLOB ASSEMBLY_FILES ${PROJECT_SOURCE_DIR}/src/*.asm)
# set_source_files_properties(${ASSEMBLY_FILES} PROPERTIES LANGUAGE ASM_NASM)

file (GLOB INCLUDES ${PROJECT_SOURCE_DIR}/include/asm_linux/*.asm)

set (self ${PROJECT_NAME})



foreach (file ${ASSEMBLY_FILES})
	get_filename_component (name ${file} NAME_WE)
	# set_source_files_properties(${file} PROPERTIES LANGUAGE ASM_NASM)
	# set_source_files_properties(${file} PROPERTIES COMPILE_FLAGS "-g -Fstabs")
	# message (${name})
	add_executable (${name} ${file})
	target_include_directories (${name} PUBLIC ${CMAKE_SOURCE_DIR}/include/asm_linux)

endforeach ()

add_library (${self} STATIC 
${ASSEMBLY_FILES}
)




add_library (ph::assembly ALIAS ${self})


target_include_directories(${self} PRIVATE
    $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include/${self}>
    $<INSTALL_INTERFACE:include/${self}>
)

target_include_directories(${self} PUBLIC
    $<BUILD_INTERFACE:${PROJECT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)