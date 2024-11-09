// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "VLC",
  platforms: [
    .iOS(.v14),
    .tvOS(.v14),
    .macOS(.v12),
  ],
  products: [
    .library(
      name: "VLC",
      targets: [
        "VLC",
      ]
    ),
  ],
  targets: [
    .target(
      name: "VLC",
      dependencies: [
        .target(name: "VLCKit"),
      ],
      path: "Sources"
    ),
    .binaryTarget(
      name: "VLCKit",
      url: "https://github.com/omaralbeik/VLC/releases/download/3.6.1/VLCKit.zip",
      checksum: "f9a093a3034c405e550b4797024d9d0906847d0703daa6a99978f463f3b006bd"
    ),
  ]
)
