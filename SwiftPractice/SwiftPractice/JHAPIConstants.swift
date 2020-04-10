//
//  JHAPIConstants.swift
//  JaiiHo
//
//  Created by apple on 09/07/19.
//  Copyright © 2019 trovend. All rights reserved.
//

import Foundation
import UIKit


//MARK: - Base class from other developer
let baseObj = BaseClass()

//MARK: - network error
let networkError = "Please check your network connection"


let kAPISearchKey = "AIzaSyCpqywI57bVJCs6DpACwk7jTuyxEgQnBKM"
let kAPISearchKey2 = "AIzaSyDmeJjDTwOT2uiwf4xvkVoZ5NvQAjBsJ-s"
let kCustomSearchEngKey = "cx=001204954745250745128:zwlxdybjhnp"

/**  Set defaults properties to save information.....*/
let defaults = UserDefaults.standard

enum UserInfo {
    static let token                  = defaults.value(forKey: "token") as? String
    static let userId                =   defaults.value(forKey: "userId") as? String
    static let userName             =   defaults.value(forKey: "userName")
    static let userPhoto           =   defaults.value(forKey: "userPhoto")
    static let profileUpdate    =   defaults.value(forKey: "pUpdate") as? Bool
    static let phone                  =   defaults.value(forKey: "phone") as? String
    static let fcmToken             =   defaults.value(forKey: "fcmToken")
}

/** API service for client communicaton..... */
enum API {
    
    //MARK: - Weather Forecast Report
    static let weatherCastAPI = "https://api.darksky.net/forecast/71b52c9cc92accc64f74efae3e7b447e/"
    
    //MARK: - Jaii Ho logo url
    static let jaiihoLogoUrl = "http://51.75.61.163:5010/images/singleFile-1576653436577.jpg"
    
    /**
     Play tiktok video URL Path....
     */
    //static let JHVideoURL = "http://51.75.61.163:5010/videos/"


    static let JHregister = JHBaseURL + "register"
    static let JHOTPVerify = JHBaseURL + "verifyotp"
    
    static let JHAllPost = JHBaseURL + "jaiiho/getallpost/?pageno=" //"jaiiho"
    /** jaiiho My post ---*/
    static let JHmyPost = JHBaseURL + "jaiiho/myposts/?pageno="
    
    //MARK: - Add stories to social
    static let socialAddStory = JHBaseURL + "story/addStory"
   
    static let socialGetStories = JHBaseURL + "story/getstory"
   
    //MARK: - Social Photo downloaded url send back to server
    static let download = JHBaseURL + "jaiiho/download"
    
    static let JHAddPost = JHBaseURL + "jaiiho/addpost"
    static let JHEditPost = JHBaseURL + "jaiiho/editPost"
    
    static let JHGames = JHBaseURL + "games"
   
    ///MARK: News API
    static let JHNews = JHBaseURL + "news/"
    static let topNews = JHBaseURL + "news/topnews"
    static let getNews = JHBaseURL + "news/getnews"
    static let pageNationNews = JHBaseURL + "news/getnews?pageno="

    static let JHPostMedia = JHBaseURL + "jaiiho/addpostmedia"
    
    //MARK: - social post
    static let JHPostLike = JHBaseURL + "jaiiho/likepost"
    static let JHPostUnlike = JHBaseURL + "jaiiho/unlikepost"
    static let socialDeletePost = JHBaseURL + "jaiiho/postaction"
  
    /** Meida API call.......*/
    static let JHAllmedia = JHBaseURL + "jaiiho/getallmedia"
    
    static let JHCommentPost = JHBaseURL + "jaiiho/commentpost"
    static let JHCommetReply = JHBaseURL + "jaiiho/replycomment"
    //MARK: - Post share in jaiiho and whatsapp
    static let jaiihoShare = JHBaseURL + "jaiiho/jaiihoshare"
    
    /**
     User profile service
     */
    static let JHProfileUpdate = JHBaseURL + "updateprofile"
    static let JHExitUserProfile = JHBaseURL + "users/"
    
    static let JHCommentUpdate = JHBaseURL + "jaiiho/commentupdate"
    static let JHCommentDelete = JHBaseURL + "jaiiho/deletecomment"
    static let JHProfilePhotoUpload = JHBaseURL + "profile/profileupload"
    static let JHSharePost = JHBaseURL + "jaiiho/postshare"
    static let JHPostView = JHBaseURL + "jaiiho/viewpost"
    
    /** Search Friend API*/
    static let JHSearchFriend = JHBaseURL + "friends/searchuser?User_name="
    static let JHFriendRequestList = JHBaseURL + "friends/friendrequestlist"
    
    
    /** Entertainment Video API */
    static let JHPlayVideo = JHBaseURL + "jaiiho/videos"
    static let JHImages = JHBaseURL + "jaiiho/images"
    static let JHGifImages = JHBaseURL + "jaiiho/gifimages"
    static let JHEditMediaTag = JHBaseURL + "jaiiho/editmediatag"
    static let imageLike = JHBaseURL + "jaiiho/likemedia"
    static let unlikeImage = JHBaseURL + "jaiiho/unlikemedia"

    //Friend search and unfriend///////
    static let unFriendUser = JHBaseURL + "friends/unfrienduser"
    static let unFllowUser = JHBaseURL + "friends/unfollowuser"
    static let JHFollowingUser = JHBaseURL + "friends/followingusers"
    static let JHFollowersList = JHBaseURL + "friends/followerslist"
    static let JHFriendsList = JHBaseURL + "friends/friendslist"
    static let JHFriendshipCount = JHBaseURL + "friends/friendshipcount"
     static let JHFollowUser = JHBaseURL + "friends/followuser"
    
    //MARK: - Friend request rejected and accept
    static let friendsRequestaccept = JHBaseURL + "friends/requestaccept"
    static let friendRequestreject = JHBaseURL + "friends/requestreject"
    static let friendRequest = JHBaseURL + "friends/friendrequest"
    
    /** New chat users list...*/
    static let newChatUsers = "http://51.75.61.163:3300/" + "chat/chatusers"
    
    
    /** User ranking and Stars...*/
    static let userRank = JHBaseURL + "users/categoryrank"
    static let todayRank = JHBaseURL + "users/todayrank"
    static let monthlyRank = JHBaseURL + "users/monthlyrank"
    static let allTimeRank = JHBaseURL + "users/rank"
    
    
    /** JH Image comments and likes   --- */
    static let imageComment = JHBaseURL + "jaiiho/commentmedia"
    
    /** Add stories to social */
    static let addStory = JHBaseURL + "jaiiho/addMedia"

    
    /** Chat status and stories */
    static let chatAddStatus = chatBaseURL + "chat/addstatus"
    static let chatAllStatus = chatBaseURL + "chat/allstatus"

    /**
     Add tiktok video to Jaiiho
    */
    static let addVideo = JHBaseURL + "jaiiho/addMedia"
    
    //MARK: - Post comment like
    static let postCommentLike = JHBaseURL + "jaiiho/likecomment"
    static let postCommentUnlike = JHBaseURL + "jaiiho/unlikecomment"
    
    
    /** Chat user list */
    //static let chatUsers = "http://51.75.61.163:3300/" + "chat/chatusers"
    static let getMedia = JHBaseURL + "jaiiho/getmedia?pageno="
    static let mediaFilter = JHBaseURL + "jaiiho/filtermedia?tag="
    static let searchPost = JHBaseURL + "jaiiho/searchpost?keyword="
    static let pictureDetails = JHBaseURL + "jaiiho/picture?_id="
    static let technology = JHBaseURL + "jaiiho/filtermedia?tag=Technology"
    static let fashion = JHBaseURL + "jaiiho/filtermedia?tag=Fashion"
    static let fitness = JHBaseURL + "jaiiho/filtermedia?tag=Fitness"
    static let nature = JHBaseURL + "jaiiho/filtermedia?tag=Nature"

    ///MARK: - Notification Activity
    static let activityUrl = JHBaseURL + "users/myactivity"
    
    
}

//MARK: View controlers Storyboard IDs
enum JHStoryboardId {
    static let JHSelectLanguageVC = "JHSelectLanguageVC"
    static let JHMobileNumberRegisterVC = "JHMobileNumberRegisterVC"
    static let JHOTPVerifiedVC = "JHOTPVerifiedVC"
    static let JHProfileVC = "JHProfileVC"
    static let JHPostVC = "JHPostVC"
    static let JHTabBarVC = "JHTabBarVC"
    static let JHPlayGameVC = "JHPlayGameVC"
    static let JHCommentVC = "JHCommentVC"
    static let JHSharePostHalfVC = "SharePostHalfVC"
    static let JHSharePostFullVC = "SharePostFullVC"
    static let JHPostOptionsVC = "PostOptionsVC"
    static let JHCommentReplyVC = "JHCommentReplyVC"
    static let SocialFriendAndPost = "SocialFriendAndPost"
    static let JHNewsDetailsVC = "JHNewsDetailsVC"
    static let JHVideoPlayVC = "JHVideoPlayVC"
    static let JHChattingVC = "JHChattingVC"
    static let JHManualCameraControl = "JHManualCameraControl"
    static let JHMediaCommentVC = "JHMediaCommentVC"
    static let JHImageFilterVC = "JHImageFilterVC"
    static let JHStoryVC = "JHStoryVC"
    static let JHLadderVC = "JHLadderVC"
    static let FullAndHalfCircleVC = "FullAndHalfCircleVC"
    static let JHChatHomeVC = "JHChatHomeVC"
    
    
    ///MARK: - Add child view controller
    static let JHSocialVC = "JHSocialVC"
    static let JHNewsVC = "JHNewsVC"
    static let JHGamesVC = "JHGamesVC"
    static let JHPaymentVC = "JHPaymentVC"
}

//Header keys
enum Headers{
    static let authorization = "Authorization"
    static let deviceUniqueId = "DeviceUniqueId"
    static let nonce            = "Nonce"
    static let hash             = "Hash"
    static let contentType = "Content-Type"
    static let accept          = "Accept"
}

//Content-Type
enum ContentType{
    static let X_www_form     = "application/x-www-form-urlencoded"
    static let Json           = "application/json"
}

// Authorization Tokens

enum Authorization{
    static let Login            = ""
    static let AdminLogin     = " "
    static let Registration   = "Bearer \(UserDefaults.standard.value(forKey: "admin_access")as? String ?? "")"
    
}


//MARK: - JH Manual color
enum JHColor{
    static let orange = UIColor(red: 247.0/255.0, green: 111.0/255.0, blue: 2.0/255.0, alpha: 1.0)
    static let buttonColor = UIColor(red: 67/255, green: 204/255, blue: 0/255, alpha: 1)
    static let imgTintColor = UIColor(red: 49.0/255.0, green: 160.0/255.0, blue: 132.0/255.0, alpha: 1.0)
}


//API Request type
public enum RequestType: String {
    case GET, POST, PUT
}

/** Cloudinary...folder name.....*/
enum CloudUploadPreset {
    static let imageUpload = "jaiiho_upload"
    static let videoUpload = "JaiiHo"
    static let trove_upload = "trove_upload"
    static let profilePicture = "upload_profile_pic"
}


//MARK: TYPE CAST VARIABLES
func toString(val:Any) -> String {
    if val is String {
        return val as! String
    } else if val is Int {
        let temp = val as! Int
        return String(temp)
    } else if val is Double {
        let temp = val as! Double
        return String(temp)
    } else {
        return ""
    }
}

//MARK: Constraints For Notch Devices
struct Constraints {
    static let bottom:CGFloat = baseObj.isIphoneX() ? 30 : 0
    static let top:CGFloat = baseObj.isIphoneX() ? 85 : 65
    static let btm:CGFloat = baseObj.isIphoneX() ? 50 : 30
}

