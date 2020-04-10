//
//  JHBaseVC.swift
//  JaiiHo
//
//  Created by apple on 09/07/19.
//  Copyright © 2019 trovend. All rights reserved.
//

import UIKit
import Photos


class JHBaseVC: UIViewController {

    
    /// Singleton class for sharing data
    static let jhBaseShared = JHBaseVC()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //MARK: - Hide navigation bar...
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
    }

    
    /// Dismiss the Popup content view
    /// - Parameter sender: pop view
    @IBAction func popToViewController(_ sender: Any){
        self.navigationController?.popViewController(animated: true)
    }
    
    //MARK: - Pop to selected view controller
    func popToSelectedVc(_ vc: UIViewController){
        self.navigationController?.popToViewController(vc, animated: true)
    }
    
    //MARK: - Navigate to next view controller...
    func navigateTo(viewController: UIViewController){
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}

//MARK: - Storyboard id for next view controller
extension UIViewController{
    
    //MARK: -Add child view controller
    func add(asChildViewController viewController: UIViewController, topView: UIView) {
        // Add Child View Controller
        addChild(viewController)
        
        // Add Child View as Subview
        view.addSubview(viewController.view)
        // Configure Child View
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        viewController.view.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 1).isActive = true
        viewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor , constant: 0).isActive = true
        viewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        viewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        // Notify Child View Controller
        viewController.didMove(toParent: self)
    }
    
    //MARK: - Remove adding child controller
    func remove(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller
        viewController.willMove(toParent: nil)
        viewController.view.removeFromSuperview()
        // Notify Child View Controller
        viewController.removeFromParent()
    }
    
    
    //MARK: - present to next view controller
    func presentVCToNextSB(storyboard: String){
        DispatchQueue.main.async {
            guard let vc = self.storyboard?.instantiateViewController(withIdentifier: storyboard)else{return}
            vc.modalTransitionStyle = .crossDissolve
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    
    //Present view controller...
    func presentVCModally(storyboard: String){
        DispatchQueue.main.async {
            guard let vc = self.storyboard?.instantiateViewController(withIdentifier: storyboard)else{return}
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .overCurrentContext
            nav.modalTransitionStyle = .crossDissolve
            self.tabBarController?.tabBar.isHidden = false
            self.present(nav, animated: true, completion: nil)
        }
    }
    
    // Present view controller with navigation...
    func presentVcWithNavigation(vc: UIViewController){
        DispatchQueue.main.async {
            vc.modalPresentationStyle = .overCurrentContext
            vc.modalTransitionStyle = .crossDissolve
            let nav = UINavigationController(rootViewController: vc)
            self.present(nav, animated: true, completion: nil)
        }
    }
    
    // Dismiss viewcontroller...
    func dismissVC(){
        DispatchQueue.main.async {
            self.dismiss(animated: true, completion: nil)
            
            
            
        }
    }
}



/** Extension for Spinner loading */

//private var loaderImage = UIImageView()
extension JHBaseVC{
    //MARK: - show alert message to user....
    func showAlertMessage(messageText: String, messageImg: UIImage, type: JHMessageType){
        DispatchQueue.main.async {
            self.showMessage(messageText, messageImg: messageImg, type: type, options: [
                .autoHideDelay(3.0),
                .height(30.0),
                .cornerRadius(4.0),
                .textAlignment(.topLeft)
            ])
        }
    }
}



/// Adding extra Method to get PHAsset to thumbnail image
extension JHBaseVC{
    func getPHAssetToImage(asset: PHAsset) -> UIImage {
        let manager = PHImageManager.default()
        let option = PHImageRequestOptions()
        var thumbnail = UIImage()
        option.isSynchronous = true
        option.isNetworkAccessAllowed = true
        
        manager.requestImage(for: asset, targetSize: PHImageManagerMaximumSize, contentMode: .aspectFit, options: option, resultHandler: {(result, info)->Void in
            if let res = result {
                thumbnail = res
            }
        })
        return thumbnail
    }
    
//    func imageData(_ asset: PHAsset, _ dataCompletion: @escaping(ResultData) ->Void){
//        imgOptions.isNetworkAccessAllowed = true
//        PHImageManager.default().requestImageData(for: asset, options: imgOptions) { (data, dataUTI, orientation, info) in
//            if let imgData = data {
//                dataCompletion(.success(imgData))
//            }else{
//                dataCompletion(.message("fail"))
//            }
//        }
//    }
    
    
    /// Get Image Url to convert into image data
    /// - Parameter url: output to image data
    func load(url: URL)-> Data {
        let data = try? Data(contentsOf: url)
        let img = UIImage(data: data!)
        let imgData = img?.jpegData(compressionQuality: 0.2)
        return imgData!
    }
    
    
    
}

