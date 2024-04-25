//
//  Qna.swift
//  Q&A App
//
//  Created by Labe on 2024/4/11.
//

import Foundation

struct Question {
    let group:String
    let question:String
    var score:Int
}

var questionArray:[Question] = [
    Question(group: "A", question: "聽到優美的音樂，會覺得興奮。", score: 0),
    Question(group: "A", question: "每天花許多心力預測各種可能的失敗，並準備因應對策。", score: 0),
    Question(group: "A", question: "善於察覺新的可能性或選擇。", score: 0),
    Question(group: "A", question: "靈感源源不絕，常想出許多好點子。", score: 0),
    Question(group: "A", question: "知道世界上存在著許多不是耳聽或眼見為憑的事物。", score: 0),
    Question(group: "A", question: "很怕痛。", score: 0),
    Question(group: "A", question: "他人眼裡微不足道的小事卻讓你深受打擊。", score: 0),
    Question(group: "A", question: "每天都需要時間獨處。", score: 0),
    Question(group: "A", question: "獨處再久都不覺得累，跟外人在一起不到兩三個小時就不行了。", score: 0),
    Question(group: "A", question: "一發現氣氛變得很僵，就想趕快逃離現場。", score: 0),
    Question(group: "A", question: "旁人發怒的對象就算不是自己，同樣備感壓力。", score: 0),
    Question(group: "A", question: "對他人受到的傷痛彷彿深入神經般地感同身受。", score: 0),
    Question(group: "A", question: "想盡一切辦法只為了想避開讓人不快的驚訝或誤解。", score: 0),
    Question(group: "A", question: "充滿創意力。", score: 0),
    Question(group: "A", question: "欣賞藝術作品時常深受感動。", score: 0),
    Question(group: "A", question: "面對大量資訊或刺激時容易焦慮。", score: 0),
    Question(group: "A", question: "不喜歡到遊樂園、大型購物中心、體育館等熱鬧的地方。", score: 0),
    Question(group: "A", question: "看到電視上的暴力畫面，情緒會被影響好幾天。", score: 0),
    Question(group: "A", question: "比一般人更願意花時間在思考上。", score: 0),
    Question(group: "A", question: "善於觀察動植物的各種微小變化。", score: 0),
    Question(group: "A", question: "在大自然的包圍下心情特別舒暢。", score: 0),
    Question(group: "A", question: "隨時打開覺察的天線，善於觀察旁人的情緒。", score: 0),
    Question(group: "A", question: "做出違背本心的決定時會很愧疚，充滿罪惡感。", score: 0),
    Question(group: "A", question: "工作時若有人盯著你看會渾身不自在。", score: 0),
    Question(group: "A", question: "善於看透真相，擁有察覺欺瞞的能力。", score: 0),
    Question(group: "A", question: "容易受到驚嚇。", score: 0),
    Question(group: "A", question: "善於與人深入交流。", score: 0),
    Question(group: "A", question: "他人聽來覺得還好的聲音，你聽卻覺得特別刺耳。", score: 0),
    Question(group: "A", question: "直覺很強。", score: 0),
    Question(group: "A", question: "很享受獨處。", score: 0),
    Question(group: "A", question: "極少衝動行事，習慣深思熟慮後再行動。", score: 0),
    Question(group: "A", question: "對噪音、強烈的氣味、強光感到困擾。", score: 0),
    Question(group: "A", question: "常常需要到安靜的空間稍微喘口氣。", score: 0),
    Question(group: "A", question: "感到飢餓或寒冷時，餓跟冷的感覺一直在腦中揮之不去。", score: 0),
    Question(group: "A", question: "很容易感動落淚。", score: 0),
    Question(group: "B", question: "即使無法事先準備，也樂於接受新挑戰。", score: 0),
    Question(group: "B", question: "當事情順著計畫走時，心裡會特別得意。", score: 0),
    Question(group: "B", question: "對社交場合樂此不疲（不需要離席透氣，也不介意從早待到晚）。", score: 0),
    Question(group: "B", question: "喜愛生存體驗營。", score: 0),
    Question(group: "B", question: "享受在壓力中工作。", score: 0),
    Question(group: "B", question: "覺得人生若有不如意，問題大多在當事人自己身上。", score: 0),
    Question(group: "B", question: "不太受到外界影響，隨時都能保持活力。", score: 0),
    Question(group: "B", question: "參加聚會都是最後離開的那一個。", score: 0),
    Question(group: "B", question: "甚少杞人憂天，凡事都能冷靜以對。", score: 0),
    Question(group: "B", question: "週末喜歡跟朋友聚會，不需要刻意離開喘口氣。", score: 0),
    Question(group: "B", question: "喜愛朋友的突然到訪。", score: 0),
    Question(group: "B", question: "不太重視睡眠，睡一下就會飽。", score: 0),
    Question(group: "B", question: "喜歡放煙火跟鞭炮。", score: 0)
]
