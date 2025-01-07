// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "VLC",
  platforms: [
    .iOS(.v17),
    .tvOS(.v17),
    .macOS(.v14),
    .visionOS(.v1),
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
      url: "https://github.com/omaralbeik/VLC/releases/download/4.0.0/VLCKit.zip",
      checksum: "91d725c1d6444dc16e0cb195fb0623c598bf8cba7a9fdc4fa582b1c670b94159"
    ),
  ]
)
