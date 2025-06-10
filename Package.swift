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
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.0"),
        .package(url: "https://github.com/Tencent-RTC/Chat_SDK_SwiftPM", from: "8.3.6498"),
        .package(url: "https://github.com/Tencent-RTC/Professional_SwiftPM", from: "12.5.0"),
        .package(url: "https://github.com/1171663207/TUICore_SwiftPM_Noah", from: "1.0.0"),
        .package(url: "https://github.com/1171663207/RTCRoomEngine_SwiftPM", from: "3.0.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.20.0"),
    ],
    targets: [
        .binaryTarget(
            name: "RTCCommon",
            url: "https://sdk-liteav-1252463788.cos.ap-hongkong.myqcloud.com/app/tuikit/download/release/3.1/RTCCommon-1.3.0.zip",
            checksum: "34a54148ed3c7b97185c5ab3b90676eff38c4b2a4f54fdd39dd3cb53e94ca9e3"
        ),
        .target(name:"HookObjc",path:"Sources/HookObjc"),
        .target(
            name: "TUICallKit_Swift",
            dependencies: [
                "RTCCommon",
                "HookObjc",
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "Chat_SDK_SwiftPM", package: "Chat_SDK_SwiftPM"),
                .product(name: "Professional_SwiftPM", package: "Professional_SwiftPM"),
                .product(name: "RoomEngine", package: "RTCRoomEngine_SwiftPM"),
                .product(name: "TUICore_SwiftPM", package: "TUICore_SwiftPM_Noah"),
                .product(name: "SDWebImage", package: "SDWebImage")
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
                .define("USE_PROFESSIONAL")
            ]
        ),
        .testTarget(
            name: "TUICallKit_SwiftTests",
            dependencies: ["TUICallKit_Swift"]
        ),
    ]
)
