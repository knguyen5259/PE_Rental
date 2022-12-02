// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "PE_Rental",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "PE_Rental",
            targets: ["AppModule"],
            bundleIdentifier: "org.jhhs.625259.PE-Rental",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .chatMessage),
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk", .branch("master"))
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            dependencies: [
                .product(name: "FirebaseDatabase", package: "firebase-ios-sdk")
            ],
            path: ".",
            resources: [
                .process("Resources")
            ]
        )
    ]
)