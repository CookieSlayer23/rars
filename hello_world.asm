.data               # Data section
str: .asciiz "Hello, World!\n"  # String to print

.text               # Code section
.globl main         # Declare main as a global symbol

main:               
    la a0, str      # Load address of str into a0
    li a7, 4        # Load syscall code 4 (print string) into a7
    ecall           # Make syscall

    li a7, 10       # Load syscall code 10 (exit) into a7
    ecall           # Make syscall to exit program
