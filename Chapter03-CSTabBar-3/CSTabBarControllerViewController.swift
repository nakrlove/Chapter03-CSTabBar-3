//
//  CSTabBarControllerViewController.swift
//  Chapter03-CSTabBar-3
//
//  Created by nakrlove on 2022/12/13.
//

import UIKit

class CSTabBarControllerViewController: UITabBarController {

    
    var csView = UIView()
    let tabItem01 = UIButton()
    let tabItem02 = UIButton()
    let tabItem03 = UIButton()
    let secondView = SecondViewController()
    override func viewDidLoad() {
        super.viewDidLoad()

        self.initView()
        // Do any additional setup after loading the view.
    }
    

    func initView(){
       
        
        let width = self.view.frame.width
        let height: CGFloat = 100
        let x: CGFloat = 0
        let y = self.view.frame.height - height
        
        self.csView.frame = CGRect(x: x, y: y, width: width, height: height)
        self.csView.backgroundColor = .brown
        self.tabBar.isHidden = true
    
        self.view.addSubview(csView)
        
        let tabBtnWidth = self.csView.frame.size.width / 3
        let tabBtnHeight = self.csView.frame.height
        
        print("tabBtnWidth = \(tabBtnWidth) , tabBtnHeight = \(tabBtnHeight)")
        self.tabItem01.frame = CGRect(x: 0, y: 0, width: tabBtnWidth, height: tabBtnHeight)
        self.tabItem02.frame = CGRect(x: tabBtnWidth , y: 0, width: tabBtnWidth, height: tabBtnHeight)
        self.tabItem03.frame = CGRect(x: tabBtnWidth * 2, y: 0, width: tabBtnWidth, height: tabBtnHeight)
        
        
        self.addTabBarBtn(btn: tabItem01 , title: "첫 번째 버튼", tag:100)
        self.addTabBarBtn(btn: tabItem02 , title: "두 번째 버튼", tag:200)
        self.addTabBarBtn(btn: tabItem03 , title: "세 번째 버튼", tag:300)
        
        
        self.onTabBarItemClick(self.tabItem01)
    }

    
    func addTabBarBtn(btn: UIButton, title: String, tag: Int){
        print(" 1 addTabBarBtn ======================= ")
        btn.setTitle(title, for: .normal)
        btn.tag = tag
        
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.yellow, for: .selected)
        
        btn.addTarget(self, action: #selector(onTabBarItemClick(_:)), for: .touchUpInside)
        self.csView.addSubview(btn)
    }
    
    
    @objc func onTabBarItemClick(_ sender: UIButton){
        print(" 2 onTabBarItemClick =======\(sender.tag)")
        self.tabItem01.isSelected = false
        self.tabItem02.isSelected = false
        self.tabItem03.isSelected = false
        
        sender.isSelected = true
        self.selectedIndex = sender.tag
        
        self.view.addSubview(secondView)
//        self.csView = SecondViewController.self as! UIView()
        
    }
}
