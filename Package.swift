// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TUICallKit_Swift",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TUICallKit_Swift",
            targets: ["TUICallKit_Swift"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/Tencent-RTC/Chat_SDK_SwiftPM", from: "8.3.6498"),
        .package(url: "https://github.com/Tencent-RTC/Professional_SwiftPM", from: "12.5.0"),
        .package(url: "https://github.com/1171663207/TUICore_SwiftPM_Noah", from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "RTCCommon",
            url: "https://liteav.sdk.qcloud.com/app/tuikit/download/customer/zhenxin/RTCCommon.xcframework.zip",
            checksum: "3ea71a4bf1c372d5e33abe223a76f27b79ec948425071f0cdee367db07b51778"
        ),
        .binaryTarget(
            name: "RTCRoomEngine",
            url: "https://liteav.sdk.qcloud.com/app/tuikit/download/customer/zhenxin/RTCRoomEngine.xcframework.zip",
            checksum: "094f773e4b6b757908d8d53c30d27a64cefb06a03a14e094b34d3eb5aabc72ce"
        ),
        .target(name:"HookObjc",path:"Sources/HookObjc"),
        .target(
            name: "TUICallKit_Swift",
            dependencies: [
                "RTCCommon",
                "RTCRoomEngine",
                "HookObjc",
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "Chat_SDK_SwiftPM", package: "Chat_SDK_SwiftPM"),
                .product(name: "Professional_SwiftPM", package: "Professional_SwiftPM"),
                .product(name: "TUICore_SwiftPM", package: "TUICore_SwiftPM_Noah")
            ],
            resources: [
                .process("Resources/**"),
                .process("Resources/AudioFile/phone_dialing.m4a"),
                .process("Resources/AudioFile/phone_hangup.mp3"),
                .process("Resources/AudioFile/phone_ringing.mp3"),
                .copy("Resources/TUICallKitTheme.bundle"),
                .copy("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: [
                .define("USE_PROFESSIONAL"),
                .unsafeFlags(["-fmodules"], .when(configuration: .release))
            ]
        ),
        .testTarget(
            name: "TUICallKit_SwiftTests",
            dependencies: ["TUICallKit_Swift"]
        ),
    ]
)
