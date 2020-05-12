//
//  SettingViewController.swift
//  AccountSim
//
//  Created by Yutaro Sakai on 2020/04/30.
//  Copyright © 2020 Yutaro Sakai. All rights reserved.
//

import Eureka

class SettingViewController: FormViewController {
    override func viewDidLoad(){
        super.viewDidLoad()
        
        form +++ Section("一般")
            <<< TextRow(){
                $0.title = "テキスト入力"
                $0.placeholder = "入力欄"
        }
    }
}
