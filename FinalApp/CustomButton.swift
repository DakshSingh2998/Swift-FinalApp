//
//  CustomButton.swift
//  FinalApp
//
//  Created by Daksh on 07/02/23.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customUIParent()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        customUIParent()
    }
    
    
    func customUIParent(){
        self.backgroundColor = UIColor(named: "Blue")
        self.layer.cornerRadius = 10
        self.tintColor = .white
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
