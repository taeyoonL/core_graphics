//
//  ViewController.swift
//  my_practice_11
//
//  Created by 이태윤 on 2023/07/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var image_view: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func drae_button(_ sender: UIButton) {
        UIGraphicsBeginImageContext(image_view.frame.size)
        let context = UIGraphicsGetCurrentContext()!
        
        context.setLineWidth(1.0)
        context.setStrokeColor(UIColor.white.cgColor)
        context.setFillColor(UIColor.blue.cgColor)
        context.move(to: CGPoint(x: 170, y: 200))
        context.addLine(to: CGPoint(x: 200, y: 450))
        context.addLine(to: CGPoint(x: 140, y: 450))
        context.addLine(to: CGPoint(x: 170, y: 200))
        context.fillPath()
        context.strokePath()
        
        context.setLineWidth(2.5)
        context.setStrokeColor(UIColor.black.cgColor)
        context.addEllipse(in: CGRect(x: 120, y: 150, width: 100, height: 100))
        context.addEllipse(in: CGRect(x: 170, y: 150, width: 100, height: 100))
        context.addEllipse(in: CGRect(x: 70, y: 150, width: 100, height: 100))
        context.addEllipse(in: CGRect(x: 120, y: 100, width: 100, height: 100))
        context.addEllipse(in: CGRect(x: 120, y: 200, width: 100, height: 100))
        context.strokePath()
        
        image_view.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }
    
}

