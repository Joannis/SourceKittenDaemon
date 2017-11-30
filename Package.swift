// swift-tools-version:4.0
import PackageDescription

let package = Package(
  name: "SourceKittenDaemon",
  products: [
    .executable(name: "SourceKittenDaemon", targets: ["SourceKittenDaemon"]),
    .library(name: "sourcekittend", targets: ["sourcekittend"])
  ],

  dependencies: [
    .package(url: "https://github.com/Carthage/Commandant.git", from: "0.12.0"),
    .package(url: "https://github.com/vapor/vapor.git", .revision("3.0.0-alpha.4")),
    .package(url: "https://github.com/jpsim/SourceKitten.git", from: "0.18.0"),
    .package(url: "https://github.com/nanzhong/Xcode.swift.git", from: "0.4.1")
  ],

  targets: [
    .target(name: "SourceKittenDaemon", dependencies: ["Vapor", "SourceKittenFramework", "Xcode", "Commandant"]),
    .target(name: "sourcekittend", dependencies: ["SourceKittenDaemon"]),
  ]
)
