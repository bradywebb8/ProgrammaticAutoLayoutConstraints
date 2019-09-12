//
//  ViewController.swift
//  ProgrammaticAutoLayoutConstraints
//
//  Created by Brady Webb on 9/11/19.
//  Copyright © 2019 Brady Webb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    weak var square: UIView!
    var imageView = UIImageView()
    
    var leadingConstraint: NSLayoutConstraint?
    var trailingConstraint: NSLayoutConstraint?
    var topConstraint: NSLayoutConstraint?
    var bottomConstraint: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.image = UIImage(named: "test.jpg")
        imageView.contentMode = .scaleAspectFit
        imageView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        leadingConstraint = NSLayoutConstraint(item: imageView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1.0, constant: 20.0)
        
        trailingConstraint = NSLayoutConstraint(item: imageView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1.0, constant: -20.0)
        
        topConstraint = NSLayoutConstraint(item: imageView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1.0, constant: 20.0)
        
        bottomConstraint = NSLayoutConstraint(item: imageView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1.0, constant: -20.0)
        
        leadingConstraint?.isActive = true
        trailingConstraint?.isActive = true
        topConstraint?.isActive = true
        bottomConstraint?.isActive = true
    
        let square = UIView()
        self.view.addSubview(square)
        square.transform = CGAffineTransform(translationX: 0, y: -150)
        square.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            square.widthAnchor.constraint(equalToConstant: 75),
            square.heightAnchor.constraint(equalToConstant: 75),
            square.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            square.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            ])
        self.square = square
        self.square.backgroundColor = .blue
        
    }

}

