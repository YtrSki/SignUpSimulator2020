//
//  MailContentViewController.swift
//  AccountSim
//
//  Created by Yutaro Sakai on 2020/06/06.
//  Copyright © 2020 Takumi Muraishi. All rights reserved.
//

import UIKit

class MailContentViewController: UIViewController {
    
    //var メール内容一式: メール内容
    
    @IBOutlet weak var メールタイトル: UILabel!
    @IBOutlet weak var メール差出人: UILabel!
    @IBOutlet weak var メール本文: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = ""
    }
}
