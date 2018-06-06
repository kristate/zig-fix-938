//
// Zig Issue #938 Test
// Copyright (c) MMXVIII kristopher tate
//
// zig build-exe test.zig
//

const std = @import("std");

pub fn main() void {
  std.debug.warn("Starting Test\n");

  var allocator = std.heap.c_allocator;

  std.debug.warn("Exec Start\n");
  var output = std.os.ChildProcess.exec(allocator, [][]const u8{ "./child.py" }, null, null, 1024*4);
  std.debug.warn("Exec End\n");

  std.debug.warn("Ended Test\n");
}
