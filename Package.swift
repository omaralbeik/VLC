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
        .target(name: "VLCKit", condition: .when(platforms: [.iOS, .tvOS, .macOS])),
      ],
      path: "Sources"
    ),
    .binaryTarget(
      name: "VLCKit",
      url: "https://github.com/omaralbeik/VLC/releases/download/4.0.0a6/VLCKit.zip",
      checksum: "6b377161d4f27f529146d65037b1c62290574f4a775da47b71c107b125427f18"
    ),
  ]
)
