//
//  M17ViewController.swift
//  M17Test
//
//  Created by apple on 2018/7/5.
//  Copyright © 2018年 Johnny. All rights reserved.
//

import UIKit

class M17ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var centerView: UIView!
    
    @IBOutlet weak var aspectValue: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initSlider()
        slider.addTarget(self, action: #selector(slideChange(_:)), for: .valueChanged)
    }
    
    func initSlider() {
        slider.maximumValue = 1
        slider.minimumValue = 0.0001
        slider.value = Float(aspectValue.multiplier)
    }
    
    @objc func slideChange(_ slider: UISlider) {
        aspectValue = aspectValue.setMultiplier(multiplier: CGFloat(slider.value))
    }
}

