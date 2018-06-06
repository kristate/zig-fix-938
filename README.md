# zig-fix-938
Work on [Zig Issue #938](https://github.com/ziglang/zig/issues/938).

*Thanks to @thejoshwolfe for the test child in python.*

### Mac OS X

```
Call graph:
    2689 Thread_32720498   DispatchQueue_1: com.apple.main-thread  (serial)
      2689 start  (in libdyld.dylib) + 1  [0x7fffb78da235]
        2689 main  (in test) + 259  [0x10241d203]  bootstrap.zig:83
          2689 callMainWithArgs  (in test) + 167  [0x10241d2d7]  bootstrap.zig:76
            2689 callMain  (in test) + 9  [0x10241d309]  bootstrap.zig:92
              2689 main.0  (in test) + 186  [0x10241d3da]  test.zig:16
                2689 ChildProcess_exec  (in test) + 1781  [0x10241dd45]  child_process.zig:221
                  2689 InStream(@typeOf(File_read).ReturnType.ErrorSet)_readAllBuffer  (in test) + 722  [0x10241e882]  io.zig:96
                    2689 FileInStream_readFn  (in test) + 92  [0x10241833c]  io.zig:52
                      2689 File_read  (in test) + 736  [0x102417060]  file.zig:316
                        2689 read.0  (in test) + 35  [0x102417143]  darwin.zig:330
                          2689 read  (in libsystem_kernel.dylib) + 10  [0x7fffb7a0a246]
```
