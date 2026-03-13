{ pkgs ? import <nixpkgs> { } }:

let
    foo = 3;
  # dlopenLibraries = with pkgs; [
  #   libxkbcommon
  #
  #   # GPU backend
  #   vulkan-loader
  #   # libGL
  #
  #   # Window system
  #   wayland
  #   # xorg.libX11
  #   # xorg.libXcursor
  #   # xorg.libXi
  # ];
in pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    zola
    # cargo
    # rustc
  ];

  # env.RUSTFLAGS = "-C link-arg=-Wl,-rpath,${pkgs.lib.makeLibraryPath dlopenLibraries}";
}
