//
//  UIKitViewModel.swift
//  JaiiHo
//
//  Created by apple on 01/01/20.
//  Copyright © 2020 trovend. All rights reserved.
//

import UIKit

final class UIKitViewModel {
    
    var DTHRecharge = ["Aritel Digital TV", "Dish TV", "Reliance Digital TV", "Sun Direct", "Tata Sky", "D2H"]
    var DTHImage = [#imageLiteral(resourceName: "airtelTV"), #imageLiteral(resourceName: "dishTV"), #imageLiteral(resourceName: "relianceTV"), #imageLiteral(resourceName: "sunDirectTV"), #imageLiteral(resourceName: "tataSkyTV"), #imageLiteral(resourceName: "D2h_logo_Brand")]
    var DTHhint = ["Customer ID", "Register Mobile Number & Card Number", "Smart Card Number", "Smart Card Number", "Register Mobile Number & Subscribe ID", "Register Mobile Number & Subscribe ID" ]

    
    var electricityName = ["Northern Power Distribution Company of Telegana Ltd.", "APSPDCL AP South", "TATA POWER - Mumbai", "India Power", "West Bengal State Electricity", "Tamil Nadu Electricity Board (TNEB)", "Southern Power Distribution Company of Telegana Ltd.", "BEST Mumbai", "CESC Kolkata", "CESU, Odisha", "WESCO Odisha", "TSECL Tripura", "TATA POWER DDL", "Torrent Power"]
    
    var electricityImg = [#imageLiteral(resourceName: "TSNPDCL"), #imageLiteral(resourceName: "Wbsedc"), #imageLiteral(resourceName: "tataPower"), #imageLiteral(resourceName: "indiapower"), #imageLiteral(resourceName: "Wbsedc"), #imageLiteral(resourceName: "TamilNadu_Logo"), #imageLiteral(resourceName: "Tsspdcl_logo"), #imageLiteral(resourceName: "BEST"), #imageLiteral(resourceName: "cesc"), #imageLiteral(resourceName: "CESU") , #imageLiteral(resourceName: "wesco"), #imageLiteral(resourceName: "TSECL"), #imageLiteral(resourceName: "Tata_Power-DDL"), #imageLiteral(resourceName: "Torrent_Power")]
    
    var electricityHint = ["Unique Service Number", "Service Number", "CA Number", "Consumer Number", "Customer ID", "Consumer Number", "Unique Service Number", "Consumer Number", "Consumer ID", "Consumer ID", "Consumer Number", "Consumer Account Number", "Consumer Account Number", "Service Number"]
    
    
    
    
    var filteredArray = [String]()
    
    var buttonConstraint: NSLayoutConstraint!

    
    // swiftlint:disable:next identifier_name
     let customColorsGradientActivityIndicatorView: GradientActivityIndicatorView = {
        let gradientActivityIndicatorView = GradientActivityIndicatorView()

        ///MARK: - Chage Gradient view color
        gradientActivityIndicatorView.gradientColors = [
            #colorLiteral(red: 0.9900004268, green: 0.4346202612, blue: 0.009223175235, alpha: 1), #colorLiteral(red: 0.9450980392, green: 0.4784313725, blue: 0.5921568627, alpha: 1), #colorLiteral(red: 1, green: 0.6903896928, blue: 0, alpha: 1), #colorLiteral(red: 0.4274509804, green: 0.8666666667, blue: 0.9490196078, alpha: 1), #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        ]
        gradientActivityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        return gradientActivityIndicatorView
    }()
    
    ///MARK: - View controller for view to view connection activity
    var vc: UIViewController = {
        let viewController = UIViewController()
        return viewController
    }()
        
    
    /// MARK: - Activiry indicator for busy loading
    var activiIndicatorView: UIActivityIndicatorView = {
        let activityView = UIActivityIndicatorView.init(style: .gray)
        activityView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        activityView.startAnimating()
        return activityView
    }()
    
    
    ///MARK: - Custom scroll view
    var customScrollView: UIScrollView = {
        let customSV = UIScrollView()
        customSV.translatesAutoresizingMaskIntoConstraints = false
        customSV.showsVerticalScrollIndicator = false
        customSV.showsHorizontalScrollIndicator = false
        return customSV
    }()
    
    
    //MARK: - UItable view
    var tableDataPopulate: UITableView = {
        let tableSearch = UITableView()
        tableSearch.translatesAutoresizingMaskIntoConstraints = false
        tableSearch.separatorStyle = .none
        tableSearch.clipsToBounds = true
        tableSearch.showsHorizontalScrollIndicator = false
        tableSearch.showsVerticalScrollIndicator = false
        tableSearch.tableFooterView = UIView()
        tableSearch.backgroundColor = UIColor.white
        tableSearch.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        tableSearch.bounces = true
        return tableSearch
    }()
    
    //MARK: - UICollectionview horizontal
    var collectionViewDataPopulate: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        layout.minimumLineSpacing = 0.0
        layout.minimumInteritemSpacing = 0.0
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.clipsToBounds = true
        cv.backgroundColor = .white
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        cv.bounces = true
        return cv
    }()
    
    //MARK: - Stack view
    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.alignment = .center
        stackView.spacing = 20.0
        return stackView
    }()
    
    
    //MARK: - Stack view Leading
    var stackViewLeading: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.spacing = 16.0
        return stackView
    }()
    
    ///MARK: - Stack view Vertical
    var stackViewVerticalOne: UIStackView = {
        let verticalStck = UIStackView()
        verticalStck.translatesAutoresizingMaskIntoConstraints = false
        verticalStck.axis = .vertical
        verticalStck.distribution = .fillProportionally
        verticalStck.alignment = .fill
        verticalStck.spacing = 2.0
        return verticalStck
    }()
    
    ///MARK: - Stack view Vertical
    var stackViewVerticalTwo: UIStackView = {
        let verticalStck = UIStackView()
        verticalStck.translatesAutoresizingMaskIntoConstraints = false
        verticalStck.axis = .vertical
        verticalStck.distribution = .fillProportionally
        verticalStck.alignment = .fill
        verticalStck.spacing = 2.0
        return verticalStck
    }()
    
    ///MARK: - Stack view Vertical
    var stackViewVerticalThree: UIStackView = {
        let verticalStck = UIStackView()
        verticalStck.translatesAutoresizingMaskIntoConstraints = false
        verticalStck.axis = .vertical
        verticalStck.distribution = .fillProportionally
        verticalStck.alignment = .fill
        verticalStck.spacing = 2.0
        return verticalStck
    }()
    
    ///MARK: - Stack view Vertical
    var stackViewVerticalFour: UIStackView = {
        let verticalStck = UIStackView()
        verticalStck.translatesAutoresizingMaskIntoConstraints = false
        verticalStck.axis = .vertical
        verticalStck.distribution = .fillProportionally
        verticalStck.alignment = .fill
        verticalStck.spacing = 2.0
        return verticalStck
    }()

    ///MARK: - Stack view Vertical
    var stackViewVerticalFive: UIStackView = {
        let verticalStck = UIStackView()
        verticalStck.translatesAutoresizingMaskIntoConstraints = false
        verticalStck.axis = .vertical
        verticalStck.distribution = .fillProportionally
        verticalStck.alignment = .fill
        verticalStck.spacing = 2.0
        return verticalStck
    }()
    
    
    ///MARK: - Stack view Vertical
    var stackViewVerticalSix: UIStackView = {
        let verticalStck = UIStackView()
        verticalStck.translatesAutoresizingMaskIntoConstraints = false
        verticalStck.axis = .vertical
        verticalStck.distribution = .fillProportionally
        verticalStck.alignment = .fill
        verticalStck.spacing = 2.0
        return verticalStck
    }()
    
    
    ///MARK: - Stack view Vertical
    var stackViewVerticalSeven: UIStackView = {
        let verticalStck = UIStackView()
        verticalStck.translatesAutoresizingMaskIntoConstraints = false
        verticalStck.axis = .vertical
        verticalStck.distribution = .fillProportionally
        verticalStck.alignment = .fill
        verticalStck.spacing = 2.0
        return verticalStck
    }()
    
    
    //MARK: - Stack view Horizontal
    var stackViewHorizontal: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 20.0
        return stackView
    }()
    
    var stackViewHorizontalOne: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.alignment = .fill
        stackView.spacing = 20.0
        return stackView
    }()
    
    
    
    ///MARK: - Stack view Vertical
    var stackViewVertical: UIStackView = {
        let verticalStck = UIStackView()
        verticalStck.translatesAutoresizingMaskIntoConstraints = false
        verticalStck.axis = .vertical
        verticalStck.distribution = .fillProportionally
        verticalStck.alignment = .fill
        verticalStck.spacing = 8.0
        return verticalStck
    }()
    
    //MARK: - UIButton for done
    let defaultButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Cancel", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = .systemFont(ofSize: 15, weight: .regular)
        btn.setTitleColor(UIColor.blue, for: .normal)
        btn.layer.borderWidth = 1.0
        btn.layer.borderColor = UIColor.orange.cgColor
        btn.backgroundColor = UIColor.white
        btn.layer.shadowOffset = .zero
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOpacity = 0.2
        btn.layer.cornerRadius = 16.0
        return btn
    }()
    
    
    //MARK: - UIButton for done
    let doneButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Done", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.layer.borderWidth = 1.0
        btn.layer.borderColor = UIColor.orange.cgColor
        btn.layer.cornerRadius = 16.0
        return btn
    }()
    
    
    //MARK: UIButton for cancel button
    let cancelButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Cancel", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.layer.borderWidth = 1.0
        btn.layer.borderColor = UIColor.orange.cgColor
        btn.layer.cornerRadius = 16.0
        return btn
    }()
    
    
    //MARK: - UIButton for Navigation
    let naviButton: UIButton = {
        let naBtn = UIButton()
        naBtn.setImage(#imageLiteral(resourceName: "left_navigation"), for: .normal)
        naBtn.translatesAutoresizingMaskIntoConstraints = false
        return naBtn
    }()
    
    //MARK: - UIButton for done
    let rightArrowButton: UIButton = {
        let naBtn = UIButton()
        naBtn.setImage(#imageLiteral(resourceName: "left_arrow"), for: .normal)
        naBtn.translatesAutoresizingMaskIntoConstraints = false
        return naBtn
    }()
    
    //MARK: - UIButton for done
    let leftArrowButton: UIButton = {
        let naBtn = UIButton()
        naBtn.setImage(#imageLiteral(resourceName: "right_arrow"), for: .normal)
        naBtn.translatesAutoresizingMaskIntoConstraints = false
        return naBtn
    }()
    
    ///MARk: - Dummy button
    let dummyButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    ///MARk: - Dummy button
    let dummyButtonOne: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    ///MARk: - Tag button
    let tagButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(#imageLiteral(resourceName: "tag"), for: .normal)
        return btn
    }()
    
    //MARK: - UIButton for Conform
    let conformButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("CONFORM", for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor = UIColor.orange
        return btn
    }()
    
    //MARK: - UIButton for adding
    let addButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(#imageLiteral(resourceName: "add_friend_req"), for: .normal)
        return btn
    }()

    
    ///MARk: - like button
    let likeButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    ///MARk: - Dummy button
    let commentButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    //MARK: - Top view
    let naviView: UIView = {
        let naView = UIView()
        naView.translatesAutoresizingMaskIntoConstraints = false
        naView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return naView
    }()
    
    
    //MARK: - UIlable
    let titleLbl: UILabel = {
        let titleLbl = UILabel()
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.text = "Tag Friend"
        titleLbl.font = .systemFont(ofSize: 17.0, weight: .semibold)
        return titleLbl
    }()
    
    //MARK: - UIlable
    let titleLblOne: UILabel = {
        let titleLbl = UILabel()
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.text = "Nil"
        titleLbl.textColor = UIColor.white
        titleLbl.textAlignment = .center
        titleLbl.font = .systemFont(ofSize: 11.0, weight: .bold)
        return titleLbl
    }()
    
    //MARK: - UIlable
    let titleLblTwo: UILabel = {
        let titleLbl = UILabel()
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.text = "Nil"
        titleLbl.textAlignment = .center
        titleLbl.textColor = UIColor.white
        titleLbl.font = .systemFont(ofSize: 11.0, weight: .bold)
        return titleLbl
    }()
    
    //MARK: - UIlable
    let titleLblThree: UILabel = {
        let titleLbl = UILabel()
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.text = "Audio not available"
        titleLbl.textColor = UIColor.white
        titleLbl.textAlignment = .center
        titleLbl.font = .systemFont(ofSize: 11.0, weight: .bold)
        return titleLbl
    }()
    
    //MARK: - UIlable
    let titleLblFour: UILabel = {
        let titleLbl = UILabel()
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.text = "11"
        titleLbl.textColor = UIColor.white
        titleLbl.textAlignment = .center
        titleLbl.font = .systemFont(ofSize: 11.0, weight: .bold)
        return titleLbl
    }()

    //MARK: - UIlable
    let titleLblFive: UILabel = {
        let titleLbl = UILabel()
        titleLbl.translatesAutoresizingMaskIntoConstraints = false
        titleLbl.text = "11"
        titleLbl.textColor = UIColor.white
        titleLbl.textAlignment = .center
        titleLbl.font = .systemFont(ofSize: 11.0, weight: .bold)
        return titleLbl
    }()
    
    ///MARK: - Progress view counting image
    let progressViewOne: UIProgressView = {
        let progressView = UIProgressView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.progressViewStyle = .default
        progressView.progressTintColor = UIColor.orange
        progressView.trackTintColor = UIColor.gray
        progressView.progress = 0.0
        progressView.layer.cornerRadius = 8.0
        progressView.clipsToBounds = true
        return progressView
    }()

    ///MARK: - Progress view counting image
    let progressViewTwo: UIProgressView = {
        let progressView = UIProgressView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.progressViewStyle = .default
        progressView.progressTintColor = UIColor.orange
        progressView.trackTintColor = UIColor.gray
        progressView.progress = 0.0
        progressView.layer.cornerRadius = 8.0
        progressView.clipsToBounds = true
        return progressView
    }()
    
    ///MARK: - Progress view counting image
    let progressViewThree: UIProgressView = {
        let progressView = UIProgressView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.progressViewStyle = .default
        progressView.progressTintColor = UIColor.orange
        progressView.trackTintColor = UIColor.gray
        progressView.progress = 0.0
        progressView.layer.cornerRadius = 8.0
        progressView.clipsToBounds = true
        return progressView
    }()
    
    ///MARK: - Progress view counting image
    let progressViewFour: UIProgressView = {
        let progressView = UIProgressView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.progressViewStyle = .default
        progressView.progressTintColor = UIColor.orange
        progressView.trackTintColor = UIColor.gray
        progressView.progress = 0.0
        progressView.layer.cornerRadius = 8.0
        progressView.clipsToBounds = true
        return progressView
    }()
    
    //MARK: - Semibold UILable
    let semiboldTitleLbl: UILabel = {
        let semiboldLbl = UILabel()
        semiboldLbl.translatesAutoresizingMaskIntoConstraints = false
        semiboldLbl.text = ""
        semiboldLbl.font = .systemFont(ofSize: 16.0, weight: .semibold)
        semiboldLbl.textColor = UIColor.black
        return semiboldLbl
    }()
    
    
    
    let topView: UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = UIColor.lightGray
        return topView
    }()
    
    
    let expandableView: UIView = {
        let expaView = UIView()
        expaView.translatesAutoresizingMaskIntoConstraints = false
        expaView.backgroundColor = UIColor.clear
        return expaView
    }()
    
    
    //MARK: - Top view
    let cleareViewOne: UIView = {
        let cleaView = UIView()
        cleaView.translatesAutoresizingMaskIntoConstraints = false
        return cleaView
    }()
    
    
    //MARK: - Top view
    let cleareView: UIView = {
        let cleaView = UIView()
        cleaView.translatesAutoresizingMaskIntoConstraints = false
        cleaView.backgroundColor = UIColor.green
        return cleaView
    }()
    
    
     //MARK: - Default View
    let circleViewOne: UIView = {
        let cornerRadiousView = UIView()
        cornerRadiousView.translatesAutoresizingMaskIntoConstraints = false
        return cornerRadiousView
    }()
    
    

    
     //MARK: - Default View
    let defaultViewOne: UIView = {
        let cornerRadiousView = UIView()
        cornerRadiousView.translatesAutoresizingMaskIntoConstraints = false
        return cornerRadiousView
    }()
    
     //MARK: - Default View
    let defaultViewTwo: UIView = {
        let cornerRadiousView = UIView()
        cornerRadiousView.translatesAutoresizingMaskIntoConstraints = false
        return cornerRadiousView
    }()
    
     //MARK: - Default View
    let defaultViewThree: UIView = {
        let cornerRadiousView = UIView()
        cornerRadiousView.translatesAutoresizingMaskIntoConstraints = false
        return cornerRadiousView
    }()
    
    
    //MARK: - Default View circle 50% corner radious .........
    let defaultViewCircle: JHViewCircle = {
        let cornerRadiousView = JHViewCircle()
        cornerRadiousView.translatesAutoresizingMaskIntoConstraints = false
        
        return cornerRadiousView
    }()

    
    
    let cornerRadiousView: UIView = {
        let cornerRadiousView = UIView()
        cornerRadiousView.translatesAutoresizingMaskIntoConstraints = false
        cornerRadiousView.backgroundColor = UIColor.clear
        cornerRadiousView.layer.cornerRadius = 4.0
        cornerRadiousView.layer.masksToBounds = true
        return cornerRadiousView
    }()
    
    //MARK: - Search controller
    let searchController: UISearchController = {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder = "Search"
        searchController.searchBar.tintColor = UIColor.orange
        searchController.searchBar.barStyle = .blackOpaque
        searchController.searchBar.returnKeyType = .search
        return searchController
    }()
    
    
    //MARK: - Search controller
    let searchControllerDefault: UISearchController = {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder = "Jaiiho chat user"
        searchController.searchBar.tintColor = UIColor.black
        searchController.searchBar.searchBarStyle = .minimal
        searchController.searchBar.returnKeyType = .search
        return searchController
    }()
    
    
    //MARK: - Image view
    let imageView: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFill
        imgView.image = UIImage(named: "megha-akash4.jpg")
        imgView.layer.cornerRadius = 30.0
        imgView.clipsToBounds = true
        return imgView
    }()
    
    
    //MARK: - Image view
    let imageViewNoCorner: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()
    
    
    //MARK: - Image view chat Additional action
    let imageViewActionSheet: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        return imgView
    }()
    
    //MARK: - Image view full circle
    let heartImg: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.contentMode = .scaleAspectFill
        imgView.image = #imageLiteral(resourceName: "unlike_heart")
        return imgView
    }()
    
    //MARK: - Default image view
       let imageViewDefaultOne: UIImageView = {
           let imgView = UIImageView()
           imgView.translatesAutoresizingMaskIntoConstraints = false
           imgView.contentMode = .scaleAspectFill
           return imgView
       }()
       
       //MARK: - Default image view
       let imageViewDefaultTwo: UIImageView = {
           let imgView = UIImageView()
           imgView.translatesAutoresizingMaskIntoConstraints = false
           imgView.contentMode = .scaleAspectFill
           return imgView
       }()
    
    
    ///MARK: - Make circle image
     let circleImageOne: UIImageView = {
         let cornerRadiousImage = UIImageView()
         cornerRadiousImage.translatesAutoresizingMaskIntoConstraints = false
         cornerRadiousImage.contentMode = .scaleAspectFill
         cornerRadiousImage.image = #imageLiteral(resourceName: "Kiara-Advani-Photos")
         cornerRadiousImage.layer.cornerRadius = 25.0
         cornerRadiousImage.clipsToBounds = true
         return cornerRadiousImage
     }()
    
     
     ///MARK: - Make circle image
     let circleImageTwo: UIImageView = {
         let cornerRadiousImage = UIImageView()
         cornerRadiousImage.translatesAutoresizingMaskIntoConstraints = false
         cornerRadiousImage.contentMode = .scaleAspectFill
         cornerRadiousImage.image = #imageLiteral(resourceName: "JH-Logo")
         cornerRadiousImage.layer.cornerRadius = 25.0
         cornerRadiousImage.clipsToBounds = true
         return cornerRadiousImage
     }()
    
    
    ///MARK: - Gallery data will play video and images ...........
    let galleryData : JHVideoPlayerView = {
        let imageView = JHVideoPlayerView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    ///MARK: Custome Text Field
    let customTextField: UITextField = {
        let cusText = UITextField()
        cusText.translatesAutoresizingMaskIntoConstraints = false
        cusText.placeholder = "Customer Id"
        cusText.borderStyle = .none
        return cusText
    }()
    
    let lineView: UIView = {
        let lineVie = UIView()
        lineVie.translatesAutoresizingMaskIntoConstraints = false
        lineVie.backgroundColor = #colorLiteral(red: 0.9900004268, green: 0.4346202612, blue: 0.009223175235, alpha: 1)
        return lineVie
    }()
    
}
