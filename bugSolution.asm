mov ecx, [some_size_variable] ; Get the size of the buffer
mov eax, [ebx]; Get the base address of the buffer
mov edx, ecx ; copy size of buffer to edx
mov ebx, 4 ; size of each element in the buffer
mul ebx ; multiply ecx by 4 to calculate index
jnc no_overflow ; jump if no carry
;Handle overflow error here, e.g., jump to error handling routine
no_overflow:
add eax, edx ; Add index to base address
add eax, 0x10 ; Add 0x10 to the address
mov edx, [eax]; Access memory at the checked address