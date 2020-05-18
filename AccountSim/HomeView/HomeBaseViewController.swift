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
        終了アラート表示()
//        let firstViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
//        firstViewController?.modalTransitionStyle = .flipHorizontal
//        firstViewController?.modalPresentationStyle = .fullScreen
//        self.present(firstViewController!, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func 終了アラート表示() {
        let 終了アラート: UIAlertController!
        終了アラート = UIAlertController(title: "終了しますか？", message: "終了すると、最初の画面に戻ります。\nまた、次回は初めからやり直しになります。", preferredStyle: .alert)
        終了アラート.addAction(UIAlertAction(title: "終了する", style: .default, handler: {(action:UIAlertAction!) in
                let firstViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()
                firstViewController?.modalTransitionStyle = .flipHorizontal
                firstViewController?.modalPresentationStyle = .fullScreen
                self.present(firstViewController!, animated: true)
            })
        )
        終了アラート.addAction(UIAlertAction(title: "終了せずに続ける", style: .cancel, handler: nil))
        present(終了アラート, animated: true, completion: nil)
    }
}
