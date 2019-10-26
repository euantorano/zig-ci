const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    const mode = b.standardReleaseOptions();
    const exe = b.addExecutable("sdl", "src/main.zig");
    exe.setBuildMode(mode);
    exe.install();

    exe.linkSystemLibrary("c");
    exe.linkSystemLibrary("SDL2");

    if (exe.target.isDarwin()) {
        exe.addIncludeDir("/usr/local/Cellar/sdl2/2.0.10/include/SDL2");
        exe.addFrameworkDir("/usr/local/Cellar/sdl2/2.0.10/lib");
    }

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);
}
