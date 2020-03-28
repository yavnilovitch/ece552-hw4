// Authors:
//              Abby Rechkin
//              Alex Yavnilovitch
// Simple test for branching: Showing why branch prediction is useful
// Benefit of 'predict not taken' policy

lbi r1, 8               // r1 = 8
lbi r2, 8               // r2 = 8
sub r2, r2, r1          // r2 = r2 - r1
bnez r2, .label1        // if(r2 != 0) go to label1

addi r1, r1, 5		// r1 = 13

.label1:
add r2, r1, r2          // r2 = r1 + r2 = 8
halt                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
