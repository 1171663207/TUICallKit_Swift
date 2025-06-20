//
//  Constants.swift
//  TUICallKit
//
//  Created by vincepzhang on 2022/12/30.
//

import UIKit
// Default avatar
let TUI_CALL_DEFAULT_AVATAR: String = "https://imgcache.qq.com/qcloud/public/static//avatar1_100.20191230.png"
@MainActor
struct Screen {
    static let size = UIScreen.main.bounds.size
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let StatusBar_Height: CGFloat = {
        var statusBarHeight: CGFloat = 0
        if #available(iOS 13.0, *) {
            statusBarHeight = UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        } else {
            statusBarHeight = UIApplication.shared.statusBarFrame.height
        }
        return statusBarHeight
    }()

    static let Bottom_SafeHeight = {
        var bottomSafeHeight: CGFloat = 0
        if #available(iOS 11.0, *) {
            let window = UIApplication.shared.windows.first
            bottomSafeHeight = window?.safeAreaInsets.bottom ?? 0
        }
        return bottomSafeHeight
    }()
}
// MARK: Screen Size Param
//let ScreenSize = UIScreen.main.bounds.size
//let Screen.width = UIScreen.main.bounds.size.width
//let Screen.height = UIScreen.main.bounds.size.height
//let Screen.StatusBar_Height: CGFloat = {
//    var statusBarHeight: CGFloat = 0
//    if #available(iOS 13.0, *) {
//        statusBarHeight = UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
//    } else {
//        statusBarHeight = UIApplication.shared.statusBarFrame.height
//    }
//    return statusBarHeight
//}()
//
//let Screen.Bottom_SafeHeight = {
//    var bottomSafeHeight: CGFloat = 0
//    if #available(iOS 11.0, *) {
//        let window = UIApplication.shared.windows.first
//        bottomSafeHeight = window?.safeAreaInsets.bottom ?? 0
//    }
//    return bottomSafeHeight
//}()

// MARK: FloatWindow UI Param

let kMicroAudioViewWidth = 88.scale375Width()
let kMicroAudioViewHeight = 88.scale375Width()
let kMicroVideoViewWidth = 110.scale375Width()
let kMicroVideoViewHeight = 196.scale375Height()
let kMicroGroupViewWidth = 88.scale375Width()
let kMicroGroupViewHeight = 106.scale375Width()

@preconcurrency
let kMicroAudioViewRect = CGRect(x: Screen.width - kMicroAudioViewWidth,
                                 y: 150.scale375Height(),
                                 width: kMicroAudioViewWidth,
                                 height: kMicroAudioViewHeight)

@preconcurrency
let kMicroVideoViewRect = CGRect(x: Screen.width - kMicroVideoViewWidth,
                                 y: 150.scale375Height(),
                                 width: kMicroVideoViewWidth,
                                 height: kMicroVideoViewHeight)

@preconcurrency
let kMicroGroupViewRect = CGRect(x: Screen.width - kMicroGroupViewWidth,
                                 y: 150.scale375Height(),
                                 width: kMicroGroupViewWidth,
                                 height: kMicroGroupViewHeight)

// MARK: UI Size Param
let kFloatWindowButtonSize = CGSize(width: 30, height: 30)
let kInviteUserButtonSize = CGSize(width: 30, height: 30)

// MARK: Color
let Color_OweWhite = UIColor(hex: "#D5E0F2")
let Color_White = UIColor(hex: "#FFFFFF")

// MARK: TUICore & IM
let TMoreCell_Image_Size = CGSize(width: 65, height: 65)

let TUI_CALLING_BELL_KEY = "CallingBell"
let MAX_USER = 9
let ENABLE_MUTEMODE_USERDEFAULT = "ENABLE_MUTEMODE_USERDEFAULT"
let TUI_CALLKIT_SIGNALING_MAX_TIME : Int32 = 30

let kControlBtnSize = CGSize(width: 100.scale375Width(), height: 94.scale375Width())
let kBtnLargeSize = CGSize(width: 64.scale375Width(), height: 64.scale375Width())
let kBtnSmallSize = CGSize(width: 60.scale375Width(), height: 60.scale375Width())

let EVENT_SHOW_TUICALLKIT_VIEWCONTROLLER = "eventShowTUICallKitViewController"
let EVENT_CLOSE_TUICALLKIT_VIEWCONTROLLER = "eventCloseTUICallKitViewController"


// MARK: TUICore Define
let TUICore_TUICore_TUIVoIPExtensionNotify_MuteSubKey_IsMuteKey = "TUICore_TUICore_TUIVoIPExtensionNotify_MuteSubKey_IsMuteKey"
let TUICore_TUICore_TUIVoIPExtensionNotify_UpdateInfoSubKey_InviterIdKey = "TUICore_TUICore_TUIVoIPExtensionNotify_UpdateInfoSubKey_InviterIdKey"
let TUICore_TUICore_TUIVoIPExtensionNotify_UpdateInfoSubKey_InviteeListKey = "TUICore_TUICore_TUIVoIPExtensionNotify_UpdateInfoSubKey_InviteeListKey"
let TUICore_TUICore_TUIVoIPExtensionNotify_UpdateInfoSubKey_GroupIDKey = "TUICore_TUICore_TUIVoIPExtensionNotify_UpdateInfoSubKey_GroupIDKey"
let TUICore_TUICore_TUIVoIPExtensionNotify_UpdateInfoSubKey_MediaTypeKey = "TUICore_TUICore_TUIVoIPExtensionNotify_UpdateInfoSubKey_MediaTypeKey"

let TUICore_TUICallingService_SetIsMicMuteMethod_IsMicMute = "TUICore_TUICallingService_SetIsMicMuteMethod_IsMicMute"
let TUICore_TUICallingService_SetAudioPlaybackDevice_AudioPlaybackDevice = "TUICore_TUICallingService_SetAudioPlaybackDevice_AudioPlaybackDevice"
let TUICore_TUICallingService_ShowCallingViewMethod_UserIDsKey = "TUICore_TUICallingService_ShowCallingViewMethod_UserIDsKey"
let TUICore_TUICallingService_ShowCallingViewMethod_CallTypeKey = "TUICore_TUICallingService_ShowCallingViewMethod_CallTypeKey"

class Observer {}
