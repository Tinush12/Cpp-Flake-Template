{
  description = "A Nix-flake-based C/C++ development environment";

  inputs.nixpkgs.url =
    # Stable Nix Packages
    "github:nixos/nixpkgs/nixos-24.05";

  outputs = { self, nixpkgs, ... }:
    let
      supportedSystems =
        [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forEachSupportedSystem = f:
        nixpkgs.lib.genAttrs supportedSystems
        (system: f { pkgs = import nixpkgs { inherit system; }; });
    in {
      devShells = forEachSupportedSystem ({ pkgs }: {
        default = pkgs.mkShell {

          packages = with pkgs; [
            #gcc
            #clang # compiler
            lldb # llvm Debugger
            #clang-tools 
            cmake # build system generator
            #codespell # spellchecker
            #conan # package manager
            #cppcheck # code anylizer
            #doxygen # documantion generation
            #gtest # google test framework
            #lcov # code coverage reporting
            #vcpkg # package manager
            #vcpkg-tool # interaction with package manager
            #setupClangd
            #stdenv.cc.cc.lib
            #llvmPackages.libcxx
            #gdb # GNU Debugger
            ncurses
          ];

          shellHook = ''
            echo "C++ Dev Shell"
          '';

        };
      });
    };
}
