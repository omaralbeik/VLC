# VLC (deprecated)

> [!WARNING]
> **This repository is no longer maintained.**
> It has been superseded by **[SwiftVLC](https://github.com/harflabs/SwiftVLC)**, a modern Swift 6 wrapper that binds **libVLC 4.0** directly to Swift, with no Objective-C bridge in between.

## What changed

This repository was a thin Swift Package wrapper around VLCKit, which is itself an Objective-C wrapper around libVLC 3.x. The original goal was simply to make VLCKit installable via SPM.

[SwiftVLC](https://github.com/harflabs/SwiftVLC) replaces that approach entirely:

- Built on **libVLC 4.0** instead of 3.x
- **Direct C → Swift bindings**, no Objective-C layer in between
- Modern Swift 6 API: `@Observable @MainActor Player`, `throws(VLCError)`, `AsyncStream<PlayerEvent>`, and `VideoView(player)` for SwiftUI
- Strict concurrency end-to-end, every public type `Sendable`
- 13 conceptual DocC guides plus the full API reference, hosted on [Swift Package Index](https://swiftpackageindex.com/harflabs/SwiftVLC/documentation)
- Showcase app with 40 numbered case studies plus full VideoPlayer and MusicPlayer demo apps
- Comprehensive test suite running against the real libVLC binary

## Migrating

The two packages are not drop-in compatible. SwiftVLC binds to a different version of libVLC and exposes a different API surface.

| This repo (VLCKit) | SwiftVLC |
|---|---|
| `import VLC` | `import SwiftVLC` |
| `VLCMediaPlayer` (Objective-C, KVO, `NSNotificationCenter`) | `Player` (`@Observable @MainActor`, `AsyncStream<PlayerEvent>`) |
| `VLCMedia` | `Media` (`Sendable`, async parsing) |
| Manual `UIView` setup | `VideoView(player)` |
| `NSError` codes | `throws(VLCError)` |
| libVLC 3.x | libVLC 4.0 |

The [Comparison with VLCKit guide](https://swiftpackageindex.com/harflabs/SwiftVLC/documentation/swiftvlc/comparisonwithvlckit) walks through the differences in detail.

## Status

This repository will remain published so existing dependents continue to resolve, but it will receive no further updates. New issues and pull requests will not be accepted. For new work, please use [SwiftVLC](https://github.com/harflabs/SwiftVLC).

---

*The original README is preserved below for historical reference.*


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
