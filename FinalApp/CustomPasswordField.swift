//
//  CustomPasswordField.swift
//  FinalApp
//
//  Created by Daksh on 07/02/23.
//

import UIKit

class CustomPasswordField: UITextField {
    let padding = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 48)
    required init?(coder: NSCoder) {
        
        super.init(coder: coder)
        customView()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        customView()
    }
    func customView(){
        self.layer.cornerRadius = 10
        self.font = UIFont(name: "GillSans-SemiBold", size: 20.0)
        self.backgroundColor = .white.withAlphaComponent(0.1)
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor(named: "Grey")?.cgColor
    }
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
