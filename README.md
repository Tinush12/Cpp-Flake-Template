# C++ Project Template with Nix Flakes

## How to manage the project with Nix Flakes?

This project manages the project dependencies with a flake.nix file.
Activate direnv to allow Nix to create a dev shell on entering the directory containing the repository.
Run:
```bash
direnv allow .
```

## How to build the project?

### CMake - Create Build Env

```bash
cd project/build
cmake ../CMakeLists.txt
```

### Make - Build the Project

```bash
cd project/build  
make
```
