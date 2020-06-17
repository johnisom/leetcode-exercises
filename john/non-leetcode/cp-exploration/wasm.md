# Web Assembly (Wasm) #

Simply put, Wasm allows you to write code in any programming language and run
it in the browser. It is a specification for a binary code that uses an
abstract syntax tree (AST) that runs in a sandboxed environment within the
browser.

## Potential Problems it Solves ##

- JavaScript
  - Floating point numbers (weird)
  - JIT (slow)
  - Automated garbage collection (slow)
- Performance on the web--more than JavaScript
  - Speed and size of code
    - Size of compiled binary is less than equivalent JavaScript
    - It can be faster due to compile-time optimizations
    - No expensive JavaScript parsing
- Code portability
  - When code is compiled to Wasm, it can run on any compliant browser
  - Can also run natively on a server, no web browser needed
- Overcomes the single-language problem
  - If you don’t know the language, tough luck
- Expands the types of programs & programmers who deliver applications on the
  web
  - If you don’t know JavaScript or what you’re doing requires a different
    language, the web browser accepts you with a warm embrace

## How? ##

Code is compiled using the specific toolchain into binary WebAssembly, which
is executed in the browser. When a program is compiled to binary Wasm, it can
be sent to the browser to be executed.

## Other Solutions ##

- Compile to JS (slow, limited)
- JVM (failed)

## Drawbacks ##

- Language has to be compile-able (no Ruby)
- No multi-threading or garbage collection
  - Coming soon!
- Can’t manipulate DOM
  - Have to proxy thru JS
  - Among others
- Integration requires change within application or organization
- Encourages proprietary software
