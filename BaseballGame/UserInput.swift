//
//  UserInput.swift
//  BaseballGame
//
//  Created by 전원식 on 3/21/25.
//

import Foundation

class UserInput { // 유저가 정답을 입력하는 클래스
    
    func userInput() -> Int {
        print("숫자를 입력하세요")
        
        while true {
            if let input = readLine(), let userNum = Int(input), input.count == 3 {
                
                let numSet = Set(input) // 중복 방지를 위해 Set으로 변환
                
                if numSet.count == 3 && !numSet.contains("0") { // 입력된 숫자가 3개면서 0이 포함되지 않으면 통과
                    print("입력한 숫자: \(input)")
                    return userNum
                }
            }
            print("잘못된 입력입니다. 1~9로만 이루어진 중복 없는 세자리 숫자를 입력해주세요")
        }
    }
}
