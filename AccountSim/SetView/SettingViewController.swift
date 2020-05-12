//
//  SettingViewController.swift
//  AccountSim
//
//  Created by Yutaro Sakai on 2020/05/12.
//  Copyright © 2020 Takumi Muraishi. All rights reserved.
//

import Eureka

class SettingViewController: FormViewController {
    @IBAction func 閉じるボタン(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad(){
        super.viewDidLoad()
        
        form +++ Section("一般")
            <<< TextRow(){
                $0.title = "テキスト入力"
                $0.placeholder = "入力欄"
        }
    }
}
