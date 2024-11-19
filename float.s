.data
var1:   .double 3.7E-12
var2:   .double 0.5E32
.text
main:

    ldc1    f1, var1(r0)
    ldc1    f2, var2(r0)
    add.d   f5, f1,         f2  ; f5 = 3.7E-12 + 0.5E32
    trap    0

