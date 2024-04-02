// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExpoFpCommon",
    platforms: [.iOS(.v14)],

    products: [
        .library(
            name: "ExpoFpCommon",
            targets: ["ExpoFpCommonTarget"]),
    ],
    dependencies: [
    ],
    targets: [
 	.target(name: "ExpoFpCommonTarget",
                dependencies: [
                    .target(name: "ExpoFpCommon")
                ],
                path: "ExpoFpCommonTarget",
                resources: [.copy("PrivacyInfo.xcprivacy")]
        ),
        .binaryTarget(name: "ExpoFpCommon",
                      path: "ExpoFpCommon.xcframework"
        ),
        
    ],
    swiftLanguageVersions: [.v5]
)
