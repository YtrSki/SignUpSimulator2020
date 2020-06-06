//
//  HomeViewController.swift
//  AccountSim
//
//  Created by Yutaro Sakai on 2020/04/13.
//  Copyright © 2020 Takumi Muraishi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{
    
    @IBOutlet weak var 壁紙画像: UIImageView!
    
    @IBAction func 設定アイコンボタン(_ sender: Any) {
        let settingViewController = UIStoryboard(name: "SettingViewController", bundle: nil).instantiateInitialViewController()
        self.present(settingViewController!, animated: true)
    }
    
    @IBAction func メールアイコンボタン(_ sender: Any) {
        let mailViewController = UIStoryboard(name: "MailViewController", bundle: nil).instantiateInitialViewController()
        self.present(mailViewController!, animated: true)
    }
    
    @IBAction func ブラウザアイコンボタン(_ sender: Any) {
        let browserViewController = UIStoryboard(name: "BrowserViewController", bundle: nil).instantiateInitialViewController()
        self.present(browserViewController!, animated: true)
    }
    
    @IBAction func smartPayアイコンボタン(_ sender: Any) {
        let smartPayTopViewController = UIStoryboard(name: "SmartPayTopViewController", bundle: nil).instantiateInitialViewController()
        self.present(smartPayTopViewController!, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        壁紙画像 = UIImageView(image: セットされた壁紙)
    }
}
