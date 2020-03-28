// Authors:
//		Abby Rechkin
//		Alex Yavnilovitch
// Simple test for branching
// Showing benefit of 'predict taken' policy

lbi r1, 8		// r1 = 8
lbi r2, 8		// r2 = 8
sub r2, r2, r1		// r2 = r2 - r1
beqz r2, .label1	// if(r2 == 0) go to label1

addi r2, r2, 6		// r2 = r2 + 6

.label1:
halt
