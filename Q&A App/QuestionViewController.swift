//
//  QuestionViewController.swift
//  Q&A App
//
//  Created by Labe on 2024/4/11.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var selectButton: [UIButton]!
    @IBOutlet weak var showNumOfQuestionLabel: UILabel!
    @IBOutlet weak var nextQuestionButton: UIButton!
    
    var numOfQuestion = 1
    var newScore = 0
    var currentScore = 0
    var groupAArray: [Question] = []
    var groupBArray: [Question] = []
    let originalButtonColor = CGColor(red: 67/255, green: 82/255, blue: 139/255, alpha: 0.5)
    let selectButtonColor = CGColor(red: 67/255, green: 82/255, blue: 139/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //測驗前為了題目與陣列位置對上，會先在第0個位置加入一個佔位的tempQuestion。但因為ResultViewController有再次測驗的按鈕，所以測驗前先檢查題目的陣列裡是否有tempQuestion，如果有就先移除
        for i in 0...questionArray.count - 1 {
            if questionArray[i].group == "" {
                questionArray.remove(at: i)
                break
            }
        }
        //將題目打亂後加入tempQuestion佔位
        questionArray.shuffle()
        let tempQuestion = Question(group: "", question: "", score: 0)
        questionArray.insert(tempQuestion, at: 0)
        
        //設定元件
        questionLabel.text = questionArray[numOfQuestion].question
        questionLabel.layer.backgroundColor = originalButtonColor
        questionLabel.font = UIFont(name: "ChenYuluoyan-Thin-Monospaced", size: 30)
        nextQuestionButton.titleLabel?.font = UIFont(name: "ChenYuluoyan-Thin-Monospaced", size: 30)
        
        //初始化選項按鈕並先將下一題的按鈕關起來
        resetButton()
        nextQuestionButton.isEnabled = false
    }
    
    //下一題的function
    func nextQuestion(questionNum: Int) {
        questionLabel.text = questionArray[numOfQuestion].question
        showNumOfQuestionLabel.text = "\(numOfQuestion)/48"
        resetButton()
    }
    
    //計算分數
    func calculateScore() {
        for group in questionArray {
            if group.group == "A" {
                groupAArray.append(group)
            } else if group.group == "B" {
                groupBArray.append(group)
            }
        }
        let groupAScore = groupAArray.reduce(0) { sum, question in
            sum + question.score
        }
        let groupBScore = groupBArray.reduce(0) { sum, question in
            sum + question.score
        }
        print(groupAScore)
        print(groupBScore)
        currentScore = groupAScore - groupBScore
    }
    
    //重置選項按鈕
    func resetButton() {
        for i in 0...4 {
            selectButton[i].layer.backgroundColor = originalButtonColor
            selectButton[i].layer.cornerRadius = 10
        }
        nextQuestionButton.isEnabled = true
    }
    
    //選項按鈕
    //利用switch判斷使用者選到的選項，並在裡面先重置newScore(以防再選到其他選項時，newScore的值會再變動，導致結果錯誤)，並呼叫resetButton()來儲存當題分數
    @IBAction func selectItem(_ sender: UIButton) {
        let option = Option(rawValue: sender.tag)
        switch option {
        case .doesNotMatchAtAll:
            resetButton()
            newScore = 0
            sender.layer.backgroundColor = selectButtonColor
            newScore += 0
        case .almostDoesNotMatch:
            resetButton()
            newScore = 0
            sender.layer.backgroundColor = selectButtonColor
            newScore += 1
        case .somewhatMatches:
            resetButton()
            newScore = 0
            sender.layer.backgroundColor = selectButtonColor
            newScore += 2
        case .almostMatches:
            resetButton()
            newScore = 0
            sender.layer.backgroundColor = selectButtonColor
            newScore += 3
        case .completelyMatches:
            resetButton()
            newScore = 0
            sender.layer.backgroundColor = selectButtonColor
            newScore += 4
        default:
            newScore = 0
            break
        }
    }
    
    //下一題的按鈕
    //將當題選項的分數存入當題的Question物件屬性裡(score)
    //如果題數來到48就計算分數並呼叫segue，將總分傳至下一頁
    @IBAction func nextQuestion(_ sender: Any) {
        questionArray[numOfQuestion].score = newScore
        if numOfQuestion == 48 {
            calculateScore()
            performSegue(withIdentifier: "toResultViewController", sender: nil)
        } else if numOfQuestion == 47 {
            nextQuestionButton.setTitle("查看結果", for: .normal)
            numOfQuestion += 1
        } else {
            numOfQuestion += 1
        }
        
        nextQuestion(questionNum: numOfQuestion)
        nextQuestionButton.isEnabled = false
    }
    
    //連至ResultViewController的segue
    @IBSegueAction func toResultViewController(_ coder: NSCoder) -> ResultViewController? {
        let controller = ResultViewController(coder: coder)
        controller?.totalscore = currentScore
        return controller
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
