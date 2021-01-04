// swift-tools-version:5.3

import PackageDescription

let opensslVersion = "1.1.1i"

let package = Package(
    name: "OpenSSL",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "OpenSSL",
            targets: ["OpenSSL"]),
    ],
    targets: [
        .binaryTarget(
            name: "OpenSSL",
            url: "https://github.com/krzyzanowskim/OpenSSL/releases/download/\(opensslVersion)/OpenSSL-\(opensslVersion).dynamic-framework.zip",
            checksum: "The checksum of the ZIP archive that contains the XCFramework."
        )
    ]
)
