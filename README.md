# zig-ci

This repository is a companion to my blog post [`Automated Testing for Zig projects`](https://www.euantorano.co.uk/posts/zig-ci/) in which I look at a variety of options for automatically testing Zig projects.

This repository contains two projects:

- `simple` - a simple project that is automatically created by `zig init-lib` - this project includes a basic test that should be tested by the CI services.
- `sdl` - a slightly more involved project that makes use of SDL 2 to create a "hello world" window - this project should simply be built by the CI services.