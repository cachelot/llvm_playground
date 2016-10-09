# LLVM Playground for Fun and Profit!

## Makefile to generate LLVM Internal Representation (IR) listings

Makefile woodoo to generate LLVM IR `'*.ll'` listings from `'*.c, *.cpp'` files with for each optimization level: -O0, -O1..-O3, -Os

For any `'*.c'` file in directory it will generate something like this:

```
             example-O0.ll
             example-O1.ll
example.c -> example-O2.ll
             example-O3.ll
             example-Os.ll
```

## There are some examples to understand how optimizer works

Examples were made for the blog post: "TODO: *URL*"


Check out **[cachelot](https://github.com/cachelot/cachelot)**

Super fast LRU cache library and Memcached'ish server with only 5-7% memory overhead and 99% single core utlilization.

### Contacts
 * Twitter: [@cachelot_io](https://twitter.com/cachelot_io)
 * Facebook: [cachelot.io](https://facebook.com/cachelot.io)


