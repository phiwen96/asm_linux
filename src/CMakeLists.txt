



file(GLOB ASSEMBLY_FILES ${PROJECT_SOURCE_DIR}/src/*.asm)
# set_source_files_properties(${ASSEMBLY_FILES} PROPERTIES LANGUAGE ASM_NASM)



set (self ${PROJECT_NAME})



foreach (file ${ASSEMBLY_FILES})
	get_filename_component (name ${file} NAME_WE)
	# set_source_files_properties(${file} PROPERTIES LANGUAGE ASM_NASM)
	# set_source_files_properties(${file} PROPERTIES COMPILE_FLAGS "-g -Fstabs")
	# message (${name})
	add_executable (${name} ${file})
endforeach ()

add_library (${self} STATIC 
${ASSEMBLY_FILES}
)


add_library (ph::assembly ALIAS ${self})
