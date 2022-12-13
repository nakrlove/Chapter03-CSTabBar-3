//
//  ViewController.swift
//  Chapter03-CSTabBar-3
//
//  Created by nakrlove on 2022/12/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let label = UILabel()
        label.frame = CGRect(x: 100, y: 100, width: self.view.frame.width / 2 , height: 50)
        label.text = "첫번째 화면"
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.backgroundColor = .cyan
        self.view.addSubview(label)
    }


}

