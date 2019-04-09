// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "CAiger",
    products: [
        .library(name: "CAiger", targets: ["CAiger"]),
        .library(name: "CAigerHelper", targets: ["CAigerHelper"]),
    ],
    targets: [
        .target(name: "CAiger"),
        .testTarget(name: "CAigerTests", dependencies: ["CAiger"]),
        .target(name: "CAigerHelper", dependencies:["CAiger"]),
    ]
)
