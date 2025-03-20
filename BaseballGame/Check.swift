//
//  Check.swift
//  BaseballGame
//
//  Created by 전원식 on 3/21/25.
//

import Foundation

class Check { // 정답과 맞는지 확인하는 클래스
    
    func check(userNum: Int, answerNum: Int ) -> (Strike: String, Ball: String)  {
        
        var ballCount = 0
        var StrikeCount = 0
        
        var userArray = Array(String(userNum)) // 유저가 입력한 숫자 배열로 변환
        var answerArray = Array(String(answerNum)) // 정답 배열로 변환
        
        var userSet = Set(userArray) // 변환한 배열을 set으로 변환
        var answerSet = Set(answerArray)
        
        for num in userSet { // 유저입력 set를 정답 set랑 비교해 포함되는게 있으면 볼카운트를 늘린다
            if answerSet.contains(num) {
                ballCount += 1
            }
        }
        
        for i in 0..<userArray.count { // 유저입력 배열을 정답 배열과 비교해 일치하는게 있으면 스트라이크를 늘린다
            if userArray[i] == answerArray[i] {
                StrikeCount += 1
                ballCount -= 1 // 스트라이크가 하나 늘어날시에 볼은 하나 빠져야된다
            }
        }
        
        return ("\(StrikeCount)스트라이크", "\(ballCount)볼")
    }
}
