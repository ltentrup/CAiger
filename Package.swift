import PackageDescription

let package = Package(
    name: "CAiger",
    targets: [
        Target(name: "CAiger"),
        Target(name: "CAigerHelper", dependencies:["CAiger"]),
    ]
)
