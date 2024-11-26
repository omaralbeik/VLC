// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "VLC",
  platforms: [
    .iOS(.v17),
    .tvOS(.v17),
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
      url: "https://github.com/omaralbeik/VLC/releases/download/3.6.2/VLCKit.zip",
      checksum: "fae5c81f564ee89a682b3af2d063a2b3e20a0991536a2e2c3197fd8b5ddf6f88"
    ),
  ]
)
