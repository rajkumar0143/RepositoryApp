//
//  JHAPI.swift
//  JaiiHo
//
//  Created by apple on 12/08/19.
//  Copyright © 2019 trovend. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class JHJsonData: NSObject{
    
    //Singleton classes for static access properties
    static let shared = JHJsonData()
    
    //Properties
    var mobileRegisterResult: MobileRegisterResult?
    var otpResult: OTPResult?
    var allPost: AllPost?
    var games: Games?
    var news: News?
    var chatUsers: ChatUsers?
    var imageList: ImageList?
    var playVideo: PlayVideo?
    
    private let reachability = Reachability()!
    
    func customAlert(title: String, andMessage: String) {
        DispatchQueue.main.async {
            let alertWindow = UIWindow(frame: UIScreen.main.bounds)
            alertWindow.rootViewController = UIViewController()
            alertWindow.windowLevel = UIWindow.Level.alert + 1
            alertWindow.makeKeyAndVisible()
            
            let alert = UIAlertController(title: title, message:andMessage, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .destructive, handler: nil))
            alertWindow.rootViewController?.present(alert, animated: true, completion: nil)
        }
    }

    //Mobile Number register service call
    func mobileNumebrRegister(mobileNumebr: String, language: Int, deviceId: String, completionHandler completion: @escaping (_ decodableObject: Decodable) -> Void){
       // var request = URLRequest(url: URL(string: API.JHregister)
        if reachability.isReachable {
             var urlRequest = URLRequest(url: URL(string: API.JHregister)!)
            urlRequest.httpMethod = "POST"
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            let post = MobileRegister(phone: mobileNumebr, device: deviceId, PreferredLanguage: language)
            do
            {
                let jsonBody = try JSONEncoder().encode(post)
                urlRequest.httpBody = jsonBody
            }catch
            {}
            URLSession.shared.dataTask(with: urlRequest) { (data, _, _) in
                guard let data = data else {return }
                do {
                    self.mobileRegisterResult = try JSONDecoder().decode(MobileRegisterResult.self, from: data)
                    return completion(self.mobileRegisterResult)
                } catch {
                }
            }.resume()
        }else{
            customAlert(title: "Network Erorr", andMessage: "Please check your internet connection.")
        }
    }

    
    //OTP Verification 
    func OTPVerification(token: String, otp: String, mobileNumber: String, completionHandler completion: @escaping (_ decodableObject: Decodable) -> Void){
        if reachability.isReachable {
            let sessionConfig = URLSessionConfiguration.default
            let token:String? = "Bearer \(token)"
            var urlRequest = URLRequest(url: URL(string: API.JHOTPVerify)!)
            urlRequest.httpMethod = "POST"
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            sessionConfig.httpAdditionalHeaders = ["Authorization": token ?? "Authorization Fail"]
            let session = URLSession(configuration: sessionConfig, delegate: self as? URLSessionDelegate, delegateQueue: nil)
            
            let post = OTP(OTP: otp, phone: mobileNumber)
            do
            {
                let jsonBody = try JSONEncoder().encode(post)
                urlRequest.httpBody = jsonBody
            }catch
            {}
            session.dataTask(with: urlRequest) { (data, _, _) in
                guard let data = data else {return }
                do {
                    self.otpResult = try JSONDecoder().decode(OTPResult.self, from: data)
                    return completion(self.otpResult)
                } catch {
                }
            }.resume()
        }else{
            customAlert(title: "Network Erorr", andMessage: "Please check your internet connection.")
        }
    }
    
    
    
    
    
    
    
    
    //Game service call
    //typealias gameCompletionHandler = (_ decodableObject: Decodable) -> Void
    func gameServiceCall(token: String, completionHandler completion: @escaping (_ decodableObject: Decodable) -> Void){
        if reachability.isReachable {
            let sessionConfig = URLSessionConfiguration.default
            let token:String? = "Bearer \(token)"
            var urlRequest = URLRequest(url: URL(string: API.JHGames)!)
            urlRequest.httpMethod = "GET"
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            sessionConfig.httpAdditionalHeaders = ["Authorization": token ?? "Authorization Fail"]
            let session = URLSession(configuration: sessionConfig, delegate: self as? URLSessionDelegate, delegateQueue: nil)
            session.dataTask(with: urlRequest) { (data, _, _) in
                guard let data = data else {return }
                do {
                    self.games = try JSONDecoder().decode(Games.self, from: data)
                    return completion(self.games)
                } catch {
                }
            }.resume()
        }else{
            customAlert(title: "Network Erorr", andMessage: "Please check your internet connection.")
        }
    }
    
    
    
    
    
    
    ///////////////////////// NEWS Service call /////////////////////////////
    func newsReaderServiceCall(token: String, newsLang: String, completionHandler completion: @escaping  (_ decodableObject: Decodable) -> Void){
        if reachability.isReachable{
            let sessionConfig = URLSessionConfiguration.default
            let token:String? = "Bearer \(token)"
            var urlRequest = URLRequest(url: URL(string: API.JHNews + newsLang)!)
            urlRequest.httpMethod = "GET"
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            sessionConfig.httpAdditionalHeaders = ["Authorization": token ?? "Authorization Fail"]
            let session = URLSession(configuration: sessionConfig, delegate: self as? URLSessionDelegate, delegateQueue: nil)
            session.dataTask(with: urlRequest) { (data, _, _) in
                guard let data = data else {return }
                do {
                    self.news = try JSONDecoder().decode(News.self, from: data)
                    return completion(self.news)
                } catch {
                }
            }.resume()
        }else{
            customAlert(title: "Network Erorr", andMessage: "Please check your internet connection.")
        }
    }

    
    
    
    
    
    
    
    
    ///////////////////////// Allpost Service call /////////////////////////////
    func getAllPostServiceCall(token: String, pageNo: String,completionHandler completion: @escaping  (_ decodableObject: Decodable) -> Void){
        if reachability.isReachable {
            let sessionConfig = URLSessionConfiguration.default
            let token:String? = "Bearer \(token)"
            guard let postUrl = URL(string: API.JHAllPost + pageNo) else {return}
            var urlRequest = URLRequest(url: postUrl)
            urlRequest.httpMethod = "GET"
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            sessionConfig.httpAdditionalHeaders = ["Authorization": token ?? "Authorization Fail"]
            let session = URLSession(configuration: sessionConfig, delegate: self as? URLSessionDelegate, delegateQueue: nil)
            session.dataTask(with: urlRequest) { (data, _, _) in
                guard let data = data else {return }
                do {
                    self.allPost = try JSONDecoder().decode(AllPost.self, from: data)
                    return completion(self.allPost)
                } catch {
                }
            }.resume()
        }else{
            customAlert(title: "Network Erorr", andMessage: "Please check your internet connection.")
        }
    }
    
    ///////////////////////// Allpost Service call /////////////////////////////
    func getAllMorePost<T: Codable>(token: String, pageNo: String, type: T.Type ,completionHandler completion: @escaping  (_ decodableObject: T) -> Void){
        if reachability.isReachable {
            let sessionConfig = URLSessionConfiguration.default
            let token:String? = "Bearer \(token)"
            guard let postUrl = URL(string: API.JHAllPost + pageNo) else {return}
            var urlRequest = URLRequest(url: postUrl)
            urlRequest.httpMethod = "GET"
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            sessionConfig.httpAdditionalHeaders = ["Authorization": token ?? "Authorization Fail"]
            let session = URLSession(configuration: sessionConfig, delegate: self as? URLSessionDelegate, delegateQueue: nil)
            session.dataTask(with: urlRequest) { (data, _, _) in
                guard let data = data else {return }
                do {
                    let decodable = try JSONDecoder().decode(type, from: data)
                    return completion(decodable)
                } catch {
                }
            }.resume()
        }else{
            customAlert(title: "Network Erorr", andMessage: "Please check your internet connection.")
        }
    }
    
    
    
    func createNewChat(token: String, parmas: [String: Any], completionHandler completion: @escaping(_ decodableObject: Decodable)-> Void){
        if reachability.isReachable{
            let sessionConfig = URLSessionConfiguration.default
            let token: String? = "Bearer \(token)"
            let postData = try? JSONSerialization.data(withJSONObject: parmas, options: [])
            guard let url = URL(string: API.newChatUsers) else {return}
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = postData
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            sessionConfig.httpAdditionalHeaders = ["Authorization": token ?? "Authorization Fail"]
            let session = URLSession(configuration: sessionConfig)
            session.dataTask(with: urlRequest as URLRequest, completionHandler: { (data, response, error) -> Void in
                guard let dataResponse = data, error == nil else{
                    guard let err = error else{return}
                    return
                }
                do{
                let  decoder = JSONDecoder()
                //decoder.keyDecodingStrategy = .convertFromSnakeCase
                    self.chatUsers = try decoder.decode(ChatUsers.self, from: dataResponse)
                    completion(self.chatUsers)
                }catch {
                    
                }
            }).resume()
        }else{
            customAlert(title: "Network Erorr", andMessage: "Please check your internet connection.")
        }
    }
    
    
    
    ////////////////////-------Get Entertainment images----------//////////////////////////
    func getEntertainmentImagesServiceCall(token: String, completionHandler completion: @escaping  (_ decodableObject: Decodable) -> Void){
        if reachability.isReachable{
            let sessionConfig = URLSessionConfiguration.default
            let token:String? = "Bearer \(token)"
            guard let postUrl = URL(string: API.JHImages) else {return}
            var urlRequest = URLRequest(url: postUrl)
            urlRequest.httpMethod = "GET"
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            sessionConfig.httpAdditionalHeaders = ["Authorization": token ?? "Authorization Fail"]
            let session = URLSession(configuration: sessionConfig, delegate: self as? URLSessionDelegate, delegateQueue: nil)
            session.dataTask(with: urlRequest) { (data, _, _) in
                guard let data = data else {return }
                do {
                    self.imageList = try JSONDecoder().decode(ImageList.self, from: data)
                    return completion(self.imageList)
                } catch {
                }
            }.resume()
        }else{
            customAlert(title: "Network Erorr", andMessage: "Please check your internet connection.")
        }
    }

    func fetchVideoList(token: String, url: String, completionHandler completion: @escaping  (_ decodableObject: Decodable) -> Void){
        if reachability.isReachable{
        let sessionConfig = URLSessionConfiguration.default
        let token:String? = "Bearer \(token)"
        var urlRequest = URLRequest(url: URL(string: url)!)
        urlRequest.httpMethod = "GET"
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        sessionConfig.httpAdditionalHeaders = ["Authorization": token ?? "Authorization Fail"]
        let session = URLSession(configuration: sessionConfig, delegate: self as? URLSessionDelegate, delegateQueue: nil)
        session.dataTask(with: urlRequest) { (data, _, _) in
            guard let data = data else {return }
            do {
                self.playVideo = try JSONDecoder().decode(PlayVideo.self, from: data)
                return completion(self.playVideo)
            } catch {
            }
        }.resume()
            }else{
                customAlert(title: "NetWork Erorr", andMessage: "Please check your internet connection.")
            }
    }
    //////////////////////////----End Entertainment images------------/////////////////////
    
    ///Create POST Service call
    func serviceWithPost<T: Codable>(token: String, parmas: [String: Any], url:String, type: T.Type, completionHandler: @escaping (_ details: T) -> Void){
        if reachability.isReachable{
            let sessionConfig = URLSessionConfiguration.default
            let token: String? = "Bearer \(token)"
            let postData = try? JSONSerialization.data(withJSONObject: parmas, options: [])
            var urlRequest = URLRequest(url: URL(string: url)!)
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = postData
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            sessionConfig.httpAdditionalHeaders = ["Authorization": token ?? "Authorization Fail"]
            let session = URLSession(configuration: sessionConfig)
            session.dataTask(with: urlRequest as URLRequest, completionHandler: { (data, response, error) -> Void in
                guard let dataResponse = data, error == nil else{
                    guard let err = error else{return}
                    return
                }
                do{
                    let  decoder = JSONDecoder()
                    //decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let decodedData = try decoder.decode(type, from: dataResponse)
                    completionHandler(decodedData)
                }catch {
                }
            }).resume()
        }else{
            customAlert(title: "Network Erorr", andMessage: "Please check your internet connection.")
        }
    }
    //////////////// Service with GET API
    func serviceWithGET<T: Codable>(token: String, url:String,type: T.Type, completionHandler: @escaping (_ details: T) -> Void){
        if reachability.isReachable{
            let sessionConfig = URLSessionConfiguration.default
            let token: String? = "Bearer \(token)"
            var urlRequest = URLRequest(url: URL(string: url)!)
            urlRequest.httpMethod = "GET"
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            sessionConfig.httpAdditionalHeaders = ["Authorization": token ?? "Authorization Fail"]
            let session = URLSession(configuration: sessionConfig)
            session.dataTask(with: urlRequest as URLRequest, completionHandler: { (data, response, error) -> Void in
                guard let dataResponse = data, error == nil else{
                    guard let err = error else{return}
                    return
                }
                do{
                    let decoder = JSONDecoder()
                    //decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let decodedData = try decoder.decode(type, from: dataResponse)
                    completionHandler(decodedData)
                }catch {
                }
            }).resume()
        }else{
            customAlert(title: "Network Erorr", andMessage: "Please check your internet connection.")
        }
    }
    
    
    ///Create POST Service call
    func serviceWithPatch<T: Codable>(token: String, parmas: [String: Any], url:String,type: T.Type, completionHandler: @escaping (_ details: T) -> Void){
        let sessionConfig = URLSessionConfiguration.default
        let token: String? = "Bearer \(token)"
        let postData = try? JSONSerialization.data(withJSONObject: parmas, options: [])
        var urlRequest = URLRequest(url: URL(string: url)!)
        urlRequest.httpMethod = "PATCH"
        urlRequest.httpBody = postData
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        sessionConfig.httpAdditionalHeaders = ["Authorization": token ?? "Authorization Fail"]
        let session = URLSession(configuration: sessionConfig)
        session.dataTask(with: urlRequest as URLRequest, completionHandler: { (data, response, error) -> Void in
            guard let dataResponse = data,error == nil else{
                guard let serviceError = error else{return}
                return
            }
            do{
                let  decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let decodedData = try decoder.decode(type, from: dataResponse)
                completionHandler(decodedData)
            }catch {
            }
        }).resume()
    }
    
    
    
    
    ///////GET Service using rx no Token //////////////////
    func rxGETService<T: Codable>(token: String, url: String, type: T.Type) -> Observable<T> {
        return Observable<T>.create { observer in
            let sessionConfig = URLSessionConfiguration.default
            let token:String? = "Bearer \(token)"
            
            var urlRequest = URLRequest(url: URL(string: url)!)
            urlRequest.httpMethod = "GET"
            urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
            sessionConfig.httpAdditionalHeaders = ["Authorization": token ?? "Authorization Fail"]
            let session = URLSession(configuration: sessionConfig)
            let task = session.dataTask(with: urlRequest as URLRequest, completionHandler: { (data, response, error) -> Void in
                guard let dataResponse = data,error == nil else{
                    guard let serviceError = error else{return}
                    return
                }
                do{
                    let  decoder = JSONDecoder()
                    let decodedData = try decoder.decode(type, from: dataResponse)
                    observer.onNext(decodedData)
                }catch {
                    
                }
            })
            task.resume()
            return Disposables.create {
                task.cancel()
            }
        }
    }
}




