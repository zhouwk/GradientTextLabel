//
//  ViewController.swift
//  GraidentTextLabel
//
//  Created by 周伟克 on 2020/10/15.
//

import UIKit

class ViewController: UIViewController {

    

    let textLabel = UILabel()
    lazy var gradientLayer: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.green.cgColor, UIColor.purple.cgColor]
        gradientLayer.startPoint = .zero
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        view.layer.addSublayer(gradientLayer)
        return gradientLayer
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        textLabel.text = "HELLO WORLD"
        textLabel.sizeToFit()
        
        
        gradientLayer.frame.size = textLabel.frame.size
        gradientLayer.position = view.center
        gradientLayer.mask = textLabel.layer
        // 创建GradientLayer，将其mask设置为textLabel.layer，只要textLabel上有文字的区域就可以透出Gradient的部分，
        
        
        // 也可以尝试其他效果，比如给ImageView.layer.mask = textLabel.label
    }


}

