// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "SmartCodable",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "SmartCodable",
            targets: ["SmartCodable"]
        ),
    ],
    dependencies: [
        //.package(url: "")
    ],
    targets: [
        .target(
            name: "SmartCodable",
            dependencies: [
                
            ],
            path: "SmartCodable/Classes"
        )
    ],
   swiftLanguageVersions: [.v5]
)
