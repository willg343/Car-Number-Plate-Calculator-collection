#ghgzbz        
        
        .file   "solution.c"
        .option pic
        .text
        .section        .rodata.str1.8,"aMS",@progbits,1
        .align  3
.LC0:
        .string "%c%c%c%03d"
        .text
        .align  1
        .globl  find_the_number_plate
        .type   find_the_number_plate, @function
find_the_number_plate:
        li      t3,999
        divw    a4,a0,t3
        li      t1,26
        mv      a7,a0
        lla     a3,.LC0
        mv      a0,a1
        li      a2,-1
        li      a1,1
        divw    a5,a4,t1
        remw    a4,a4,t1
        divw    a6,a5,t1
        addiw   a4,a4,97
        andi    a4,a4,0xff
        remw    a5,a5,t1
        addiw   a6,a6,97
        andi    a6,a6,0xff
        remw    a7,a7,t3
        addiw   a5,a5,97
        andi    a5,a5,0xff
        addiw   a7,a7,1
        tail    __sprintf_chk@plt
        .size   find_the_number_plate, .-find_the_number_plate
        .ident  "GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
        .section        .note.GNU-stack,"",@progbits
