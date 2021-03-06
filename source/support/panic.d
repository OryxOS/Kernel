deprecated("Compiler intrinsics. Do not invoke") module support.panic;

import io.console;
import support.string;

// ``assert`` function
extern (C) void __assert(const char* exp, const char* file, uint line) {
    writeln("Kernel panic: ", fromCString(exp));
    writeln("Where: ", fromCString(file), ":", line);

    while(1) {} // Hang the kernel
}