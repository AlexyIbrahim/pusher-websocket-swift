// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "PusherSwift",
    platforms: [.iOS("13.0"), .macOS("10.15"), .tvOS("13.0")],
    products: [
        .library(name: "PusherSwift", targets: ["PusherSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/AlexyIbrahim/NWWebSocket.git", .upToNextMajor(from: "0.5.3")),
        .package(url: "https://github.com/AlexyIbrahim/tweetnacl-swiftwrap.git", .upToNextMajor(from: "1.1.1")),
    ],
    targets: [
        .target(
            name: "PusherSwift",
            dependencies: [
                "NWWebSocket",
                "TweetNacl",
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "PusherSwiftTests",
            dependencies: ["PusherSwift"],
            path: "Tests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
