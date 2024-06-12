// swift-tools-version: 5.10

import PackageDescription

let package = Package(
  name: "VLC",
  platforms: [
    .iOS(.v14),
    .tvOS(.v14),
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
      ],
      path: "Sources",
      linkerSettings: [
        .linkedFramework("MobileVLCKit", .when(platforms: [.iOS])),
        .linkedFramework("TVVLCKit", .when(platforms: [.tvOS])),
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
  ]
)