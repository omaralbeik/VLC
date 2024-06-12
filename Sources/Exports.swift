#if os(tvOS)
@_exported import TVVLCKit
#endif

#if os(iOS) && !targetEnvironment(macCatalyst)
@_exported import MobileVLCKit
#endif
