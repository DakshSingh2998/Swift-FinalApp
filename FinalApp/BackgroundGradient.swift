//
//  BackgroundGradient.swift
//  FinalApp
//
//  Created by Daksh on 02/02/23.
//

import UIKit

class BackgroundGradient: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        customUI()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        customUI()
    }
    func customUI(){
        print("In Custom View")
        setGradientBackground(colorTop: UIColor(named: "Dark")!, colorBottom: UIColor(named: "Light")!)
        
    }
    
    func setGradientBackground(colorTop: UIColor, colorBottom: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop.cgColor, colorBottom.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.locations = [0.3, 1]
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
