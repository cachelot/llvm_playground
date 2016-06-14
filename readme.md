# LLVM Playground for Fun and Profit!

## Makefile to generate LLVM Internal Representation (IR) listings

Some Makefile woodoo to generate LLVM IR from `'*.c'` files with for each optimization level: -O0, -Os, -O1, and so on.

For any `'*.c'` file in directory it will generate something like this:

```
             example-O0.ll
             example-O1.ll
example.c -> example-O2.ll
             example-O3.ll
             example-Os.ll
```

## There are some examples to understand how optimizer works

Examples were made for blog post: (URL will be here)


## Check out (https://github.com/cachelot/cachelot)[cachelot] - super fast LRU cache library and Memcached'ish server with only 5-7% memory overhead.

