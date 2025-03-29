// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "SwiftUICentered",
    
    products: [
        .library(
            name: "SwiftUICentered",
            targets: ["SwiftUICentered"]),
    ],
    
    targets: [
        .target(
            name: "SwiftUICentered",
            dependencies: [],
            resources: [
                .process("Resources") // Add this to process the Resources folder
            ]
        ),
    ]
)
