// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let dependencies: [Target.Dependency] = [
    .product(name: "Collections", package: "swift-collections"),
    .product(name: "Algorithms", package: "swift-algorithms"),
]

let package = Package(
    name: "Main",
  dependencies: [
    .package(
      url: "https://github.com/apple/swift-collections.git", 
      .upToNextMinor(from: "1.1.0") // or `.upToNextMajor
    ),
    .package(url: "https://github.com/apple/swift-algorithms", from: "1.2.0"),
  ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(name: "a", dependencies: dependencies, sources: ["a.swift"]),
        .executableTarget(name: "b", dependencies: dependencies, sources: ["b.swift"]),
        .executableTarget(name: "c", dependencies: dependencies, sources: ["c.swift"]),
        .executableTarget(name: "d", dependencies: dependencies, sources: ["d.swift"]),
        .executableTarget(name: "e", dependencies: dependencies, sources: ["e.swift"]),
        .executableTarget(name: "f", dependencies: dependencies, sources: ["f.swift"]),
    ]
)
