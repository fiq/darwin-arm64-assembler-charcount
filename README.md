# Context

This repo was contains a Darwin Arm64 attempt at implementation to count
the length of an ascii charater array and send this to STDOUT

Here are some lost-in-translation references for other former Achimedes ARM 2 programmers from back in the day.

Useful references:

- On ARM 64 Darwin registers: https://eclecticlight.co/2021/06/16/code-in-arm-assembly-registers-explained/
- On clang target architectures: https://clang.llvm.org/docs/CrossCompilation.html
- On ARM v8 registers and instruction set: https://modexp.wordpress.com/2018/10/30/arm64-assembly/
- https://developer.apple.com/documentation/xcode/writing-arm64-code-for-apple-platforms
- Syscall opcode list: https://www.theiphonewiki.com/wiki/Kernel_Syscalls
- ARMv8 menemonic cheat sheet: https://courses.cs.washington.edu/courses/cse469/19wi/arm64.pdf
- Whilst focus on a heap overflow, this gives a good walk through: https://8ksec.io/arm64-reversing-and-exploitation-part-1-arm-instruction-set-simple-heap-overflow/
