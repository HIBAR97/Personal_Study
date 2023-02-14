//
//  Hello world.swift
//  Personal_Study
//
//  Created by Kim Andrew on 2023/02/09.
//

import Foundation

//변수 설정
var name : String
var age : Int
var pi : Double

//상수 설정
let greeting = "hello world"

//데이터 구조 (튜플)
let (Name, Age) = data_set1
data_set1 = (Name : kim, Age : 10)
print("dateset 1 \(data_set1.0) and \(data_set1.1)")

let httpError = (404, "Not Found")
let (Code, Message) = httpError
print("Status \(Code) message \(Message)")

//튜플를 모를경우 바뀔경우
let (justCode, _) = httpError
print("Status \(justCode)")

//변수를 모를 경우 nil로 임시 설정가능 위 아래는 같은 문장
var Answer: nil
var Answer2: String?

//문자열 캐릭터 작업
for character in "Dog"{
    print(character)
    //D
    //o
    //g
}

//문자열 값 개수를 검색 가능
let unusualArr = "Koala, Snail, Penguin"
print("unusual has \(unusualArr.count) characters")
//문자열 갯수를 출력 (.count)로 개수 파악 가능

//문자열 접근
let greeting = "Hello World"
greeting[greeting.startIndex]
greeting[greeting.index(befor: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]

//offsetBy로 몇 번째 선택가능
greeting[greeting.index(greeting.stratIndex, offsetBy: 7)]
