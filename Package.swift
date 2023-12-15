// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "DiskPM",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "DiskPM", targets: ["DiskPM"])
    ],
    targets: [
        .target(
            name: "DiskPM",
            path: "Sources",
            exclude: ["DiskExample"]
        ),
        .testTarget(
            name: "DiskTests",
            dependencies: ["DiskPM"],
            path: "Tests",
            exclude:  ["DiskExample"]
        )
    ]
)
