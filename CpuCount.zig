const std = @import("std");
pub fn main() !void {
    const CoreCount: u64 = try std.Thread.getCpuCount();
    std.debug.print("Number of Cores: {d}\n", .{CoreCount});
}
