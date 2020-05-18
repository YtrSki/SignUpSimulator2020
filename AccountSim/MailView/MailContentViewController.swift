//
//  MailContentViewController.swift
//  AccountSim
//
//  Created by Yutaro Sakai on 2020/05/18.
//  Copyright © 2020 Takumi Muraishi. All rights reserved.
//

import Eureka

class MailContentViewController: FormViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.top
        self.navigationController?.title = "メール内容"
        
        form +++ Section()
            <<< LabelRow(){
                $0.title = "メールタイトル"
                $0.cellStyle = .value1
            }
            <<< LabelRow(){
                $0.title = "メール差出人"
            }
        
    }
}
