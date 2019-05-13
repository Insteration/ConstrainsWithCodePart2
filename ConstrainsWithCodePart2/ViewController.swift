//
//  ViewController.swift
//  ConstrainsWithCodePart2
//
//  Created by Art Karma on 5/13/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let blueView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .blue
        myView.translatesAutoresizingMaskIntoConstraints = false
        return myView
    }()
    
    let redView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .red
        myView.translatesAutoresizingMaskIntoConstraints = false
        return myView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(blueView)
        view.addSubview(redView)
        
        let viewVFL = ["redView": redView, "blueView": blueView]
        let metrics = ["height": 100, "width": (view.bounds.width / 3), "myTop": (view.bounds.height / 2)]
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-myTop-[redView(height)]|",
                                                           options: [], // внутренние параметры объекта (отступы, центровка(left, right) и тд)
                                                           metrics: metrics,
                                                           views: viewVFL))
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-myTop-[blueView(height)]|",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: viewVFL))
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[redView(width)]-50-[blueView(width)]-|",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: viewVFL))
        
        
    }
    
    
    
}

