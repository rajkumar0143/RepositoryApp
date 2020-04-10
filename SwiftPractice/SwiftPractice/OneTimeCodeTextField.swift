//
//  OneTimeCodeTextField.swift
//  JaiiHo
//
//  Created by apple on 20/08/19.
//  Copyright © 2019 trovend. All rights reserved.
//

import UIKit
class OneTimeCodeTextField: UITextField{
    
    private var digitLbl = [UILabel]()
    private var isConfigured = false
    var didEnterLastDigit: ((String) -> Void)?
    private var defaultCharacter = "-"

    //Tap Gesture Recogizaer
    private lazy var tapGesture: UITapGestureRecognizer = {
        let tapRecognizer = UITapGestureRecognizer()
        tapRecognizer.addTarget(self, action: #selector(becomeFirstResponder))
        return tapRecognizer
    }()
    
    //MARK: - Configurable Text Field
     func configure(with slotCount: Int = 4){
        guard  isConfigured == false else {return}
        isConfigured.toggle()
        configureTextField()
        addGestureRecognizer(tapGesture)
        
        let labelStackView = createLableStackView(with: slotCount)
        addSubview(labelStackView)
        NSLayoutConstraint.activate([
            labelStackView.topAnchor.constraint(equalTo: topAnchor),
            labelStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            labelStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            labelStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
    }
    
    private func createLableStackView(with count: Int) -> UIStackView {
        let stackViwe = UIStackView()
        stackViwe.translatesAutoresizingMaskIntoConstraints = false
        stackViwe.axis = .horizontal
        stackViwe.alignment = .fill
        stackViwe.distribution = .fillEqually
        stackViwe.spacing = 15
    
        for _  in 1...count{
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textAlignment = .center
            label.isUserInteractionEnabled = true
            label.text = defaultCharacter
            label.font = .systemFont(ofSize: 40)
            stackViwe.addArrangedSubview(label)
            digitLbl.append(label)
        }
        
        return stackViwe
    }
    
    //Text Field properties
    private func configureTextField(){
        tintColor = .clear
        textColor = .clear
        keyboardType = .numberPad
        textContentType = .oneTimeCode
        addTarget(self, action: #selector(textDidChange), for: .editingChanged)
        delegate = self
    }
    
    @objc
    private func textDidChange(){
        guard let text = self.text, text.count <= digitLbl.count else {return}
        for i in 0 ..< digitLbl.count{
            let currentLbl  = digitLbl[i]
            if i < text.count{
                let index = text.index(text.startIndex, offsetBy: i)
                currentLbl.text  = String(text[index])
            }else{
                currentLbl.text = defaultCharacter
            }
        }
        
        //compare the text and UIlabel
        if text.count == digitLbl.count{
            didEnterLastDigit?(text)
        }
    }
    
}

//MARK: - Text Field Delegate
extension OneTimeCodeTextField: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let characterCount = textField.text?.count else {return false}
        return characterCount < digitLbl.count || string == " "
    }
}

