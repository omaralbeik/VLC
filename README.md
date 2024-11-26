# VLC

[VLC](https://github.com/omaralbeik/VLC) is a repository that provides VLC binaries for use in iOS, tvOS, and macOS projects. This repository allows you to easily include VLC's powerful media playback capabilities in your projects via Swift Package Manager.

## Installation

### Swift Package Manager

To add VLC to your project using Swift Package Manager, follow these steps:

1. In Xcode, select `File > Swift Packages > Add Package Dependency...`.
2. Enter the repository URL: `https://github.com/omaralbeik/VLC`.
3. Choose the version or branch you want to use.

### Package.swift

To manually add VLC as a dependency in your `Package.swift` file, include the following:

```swift
import PackageDescription

let package = Package(
  name: "YourProjectName",
  platforms: [/* */],
  dependencies: [
    .package(url: "https://github.com/omaralbeik/VLC")
  ],
  targets: [
    .target(
      name: "YourTargetName",
      dependencies: [
        "VLC"
      ]
    ),
  ]
)
```

## Usage

Once you’ve added the VLC package to your project, you can import and use it in your code:

```swift
import VLC

class MediaPlayer {
  func playMedia(from url: URL) {
    let player = VLCMediaPlayer()
    player.media = VLCMedia(url: url)
    player.play()
  }
}
```

## License

This repository is licensed under the MIT license. See the [LICENSE](LICENSE) file for more information.

## Acknowledgments

This repository provides binaries and headers for VLC, a free and open-source media player and streaming media server developed by the VideoLAN project.
