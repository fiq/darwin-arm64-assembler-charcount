// couning a char sequence and sys call to print
greeting_string:      .ascii  "This has 24 characters!\n"
.global _start
.align 2

_start: mov W3, #0
        #ldr W1, =[greeting_string] // ldr the offset to 32 bit W1
	adr X5, greeting_string
	mov X1, X5
	b _count_in_w3

_count_in_w3:
  ldrb W2, [X1] // load register byte from string to a 32 bit reg
  cmp W2, #0 // check we're not on a \0 terminator
  beq _display // end looping if we're at the \0
  add W3, W3, #1 // increment the length counter 
  add X1, X1, #1 // increment the read head in X1 by 1 byte
  b _count_in_w3 // recurse
   
_display: mov X0, #1     // arg 1: setup X0 reg for STDOUT (1)
        adr X1, greeting_string // string to print
//        mov X2, W3     // Move to 64 bit reg; did not work on darwin-arm64 
        sxtw X2, W3      // arg 2: 32bit to 64bit mov - set string length
        mov X16, #4      // X16 holds the syscall number (write)    
        svc 0x80         // invoke sys call

        mov     X0, #0      // arg 0: 0 - exit code 
        mov     X16, #1     // syscall 1 - exit 
        svc     0x80        // execute syscall

