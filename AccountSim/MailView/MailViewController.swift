//
//  MailViewController.swift
//  AccountSim
//
//  Created by Yutaro Sakai on 2020/05/18.
//  Copyright © 2020 Takumi Muraishi. All rights reserved.
//

import UIKit

class MailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TableView: UITableView!
    @IBAction func 閉じるボタン(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    var contents = ["abc", "def", "ghi", "jkl"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SampleCell", for: indexPath)
        cell.textLabel!.text = contents[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let mailContentViewController = UIStoryboard(name: "MailContentViewController", bundle: nil).instantiateInitialViewController() else { return }
        self.navigationController?.pushViewController(mailContentViewController, animated: true)
    }
}

//メールの具体内容の構造をstructで定義
struct メール内容 {
    let タイトル: String
    let 差出人: String
    let 本文: String
    
    init(タイトル: String, 差出人: String, 本文: String) {
        self.タイトル = タイトル
        self.差出人 = 差出人
        self.本文 = 本文
    }
}
