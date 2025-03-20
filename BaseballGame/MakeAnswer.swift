//
//  File.swift
//  BaseballGame
//
//  Created by 전원식 on 3/21/25.
//

import Foundation

class MakeAnswer { // 랜덤으로 3자리 숫자를 만드는 클래스
    
    func makeAnswer() -> Int {
        var select = Set<Int>() // 중복을 제거하기 위해 set 사용
        
        while select.count < 3 { // 1부터 9까지 랜덤한 숫자를 3개까지만 set에 넣음
            select.insert(Int.random(in: 1...9))
        }
        let conversion = Array(select).shuffled() // 내부적으로 비슷한 순서로 저장될 수 있어서 무작위로 섞어줌
        let answer = conversion[0] * 100 + conversion[1] * 10 + conversion[2] //자리수 표현을 위해 10의 거듭제곱을 곱함

        return answer
    }
}

