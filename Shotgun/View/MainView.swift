//
//  MainView.swift
//  Shotgun
//
//  Created by Sherman Shi on 5/4/19.
//  Copyright © 2019 Sherman Shi. All rights reserved.
//

import UIKit

class MainView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        addViewSetup()
        addViewConstraintSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let reloadButton: UIButton = {
        let button = UIButton()
        let text = "RELOAD"
        button.setTitle(text, for: .normal)
        button.titleLabel?.font = UIFont.init(name: "HelveticaNeue", size: 100)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.red
        return button
    }()
    
//    let reloadLabel: UIButton = {
//        let label = UIButton()
//        label.text = "RELOAD"
//        label.font = UIFont(name: "HelveticaNeue", size: 100)
//        label.textAlignment = .center
//        label.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    func addViewSetup() {
        self.addSubview(reloadButton)
    }
    
    func addViewConstraintSetup() {
//        reloadLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
//        reloadLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        reloadButton.anchorwithConstant(top: self.topAnchor, bottom: self.bottomAnchor, leading: self.leadingAnchor, trailing: self.trailingAnchor, paddingTop: 0, paddingBottom: 0, paddingLeading: 0, paddingTrailing: 0, width: 0, height: 0)
    }
}
