import PackageDescription

let package = Package(
    name: "Hello",
    platforms: [
        .macOS(.v13),
    ],
    dependencies: [
        .package(url: "https://github.com/twostraws/Ignite.git", branch: "main"),
    ],
    targets: [
      .executableTarget(
          name: "exp-swift-ui-ignite",
          dependencies: ["Ignite"]
      ),
    ]
)