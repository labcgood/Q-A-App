//
//  ResultViewController.swift
//  Q&A App
//
//  Created by Labe on 2024/4/11.
//

import UIKit
import AVFoundation

class ResultViewController: UIViewController {

    @IBOutlet weak var showResultLabel: UILabel!
    @IBOutlet weak var againButton: UIButton!
    
    //接收QuestionViewController資料用的變數
    var totalscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //顯示結果分數、設定按鈕
        showResultLabel.text = String(totalscore)
        setButton()
    }
    
    //設定按鈕的function
    func setButton() {
        againButton.titleLabel?.font = UIFont(name: "ChenYuluoyan-Thin-Monospaced", size: 25)
        againButton.titleLabel?.textColor = .black
    }
    
    //再測驗一次的按鈕
    //用到popToRootViewController清除展開的頁面到剩第一頁，以免第一頁被呼叫疊上來後又再次播放音樂，音樂就會重疊
    @IBAction func againButton(_ sender: Any) {
        if let navigationController = self.navigationController {
            navigationController.popToRootViewController(animated: true)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
