//
//  BaseballGame.swift
//  BaseballGame
//
//  Created by 전원식 on 3/21/25.
//

import Foundation

class BaseballGame { // 게임을 시작하는 함수가 있는 클래스
    
    func start() {
        
        print("<야구 게임 시작!>")
        
        let answerStart = MakeAnswer() // 정답 만들기
        let answerNum = answerStart.makeAnswer()
        
        while true {
            
            let userStart = UserInput() // 유저 정답 입력
            let userNum = userStart.userInput()

            let checkStart = Check() //정답 체크
            let result = checkStart.check(userNum: userNum, answerNum: answerNum)
            
            print(result.Strike, result.Ball)
            
            if result.Strike == "3스트라이크" {
                print("정답입니다!")
                break
            }
        }
    }
}


