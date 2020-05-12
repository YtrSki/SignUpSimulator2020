//
//  HomeBaseViewController.swift
//  AccountSim
//
//  Created by Yutaro Sakai on 2020/04/13.
//  Copyright © 2020 Takumi Muraishi. All rights reserved.
//

import UIKit

class HomeBaseViewController: UIViewController {
    @IBOutlet weak var homeContainerView: UIView!
    @IBAction func ヒントボタン(_ sender: Any) {
    }
    @IBAction func 終了ボタン(_ sender: Any) {
        let firstViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
        firstViewController?.modalTransitionStyle = .flipHorizontal
        firstViewController?.modalPresentationStyle = .fullScreen
        self.present(firstViewController!, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
