# learning_opengl

## Video Playlist Link

https://youtube.com/playlist?list=PLlrATfBNZ98foTJPJ_Ev03o2oq3-GGOS2&si=LGOWqZDjoJ-in4Xn

| #   | Video                                                                                                                                         | Code                                                                                                       |
| --- | --------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| 2   | [Setting up OpenGL and Creating a Window in C++](https://www.youtube.com/watch?v=OR4fNpBjmq8&list=PLlrATfBNZ98foTJPJ_Ev03o2oq3-GGOS2&index=2) | [5d65684](https://github.com/dhananjaylatkar/learning_opengl/tree/5d65684e51f08d6e82391dada99d08400a453421) |
| 3   | [Using Modern OpenGL in C++](https://www.youtube.com/watch?v=H2E3yO0J7TM&list=PLlrATfBNZ98foTJPJ_Ev03o2oq3-GGOS2&index=3) | [4e2ec93](https://github.com/dhananjaylatkar/learning_opengl/tree/4e2ec9357a8dc9580d7a3391a252e9f86b860a4c) |

## Developing

This is tested on Fedora Workstation (GNOME Wayland)

### Prerequisites

These are required to build GLFW and GLEW

```shell
sudo dnf install wayland-devel libxkbcommon-devel
sudo dnf install libXmu-devel libXi-devel libGL-devel
```

### Build

Build the APP

```shell
make build
```

### Run

Build the APP and Run it

```shell
make run
```

### Build And Run

Same as `make run`. Just less keystrokes

```shell
make
```
