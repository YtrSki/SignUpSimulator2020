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
        
        return cell
    }
}
