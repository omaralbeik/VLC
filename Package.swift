// swift-tools-version: 5.10

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
        .target(name: "MobileVLCKit", condition: .when(platforms: [.iOS])),
        .target(name: "TVVLCKit", condition: .when(platforms: [.tvOS])),
        .target(name: "VLCKit", condition: .when(platforms: [.macOS])),
      ],
      path: "Sources",
      linkerSettings: [
        .linkedFramework("MobileVLCKit", .when(platforms: [.iOS])),
        .linkedFramework("TVVLCKit", .when(platforms: [.tvOS])),
        .linkedFramework("VLCKit", .when(platforms: [.macOS])),
      ]
    ),
    .binaryTarget(
      name: "MobileVLCKit",
      url: "https://github.com/omaralbeik/VLC/releases/download/3.6.0/MobileVLCKit.zip",
      checksum: "b3d864ca6b85ce52655aa0b2fc43665c8f3f4f1fd304bc1ed4cc7ea75719d9f3"
    ),
    .binaryTarget(
      name: "TVVLCKit",
      url: "https://github.com/omaralbeik/VLC/releases/download/3.6.0/TVVLCKit.zip",
      checksum: "de4d6918a0b85ba22a4154ae4ed28e0d1be6b84ec3f7593b6914dfe081e86add"
    ),
    .binaryTarget(
      name: "VLCKit",
      url: "https://github.com/omaralbeik/VLC/releases/download/3.6.0/VLCKit.zip",
      checksum: "dcbf06e611e88487afe2d08c0c36cddb5f0b36196bf4ebb2a3a34abf3e8f6b9a"
    ),
  ]
)
