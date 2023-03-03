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

//연속 모든 문자 인댁스 접근
for index in greeting.indices{
    print("\(greeting[index])".terminator:"")
} //terminator = 중간중간 띄어 쓰기?

//문자열 삽입
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
//문장형 삽입
welcome.insert(contentsOf: " there", at: welcome.index(before:welcome.endIndex))

//삭제도 가능
//문자형
welcome.remove(at: welcome.index(before: welcome.endIndex))
//문장형
welcome.remove(at: welcome.index(welcome.endIndex, offsetBy: -6)..< welcome.endIndex)

//경우에 따라 intsert(_: at:), insert(contentsOf:at:)사용가능

//인스턴스 하위 문자열 (메모리 사용 적게)
let beginning = greeting[..<greeting.firstIndex(of:"h") ?? greeting.endIndex] //hello
let newString = String(beginning)

//newString은 greeting에서 메모리를 접근하기 때문에 추가적인 메모리를 사용하지 않고 변수 사용가능

//문자열 비교 == !=
//러시아, 영어의 캐릭터는 다름

//문자열 검색
for i in arr{
    if i.hasText("name"){
        count += 1
    }
}

//배열, 셑, 사전 3가지 사용
//arr 만들기
var someInts: [Int] = []
var someInts = [] //로 생략가능

//arr 값 넣기
someInts.append(3)

//기본값 배열 만들기
var threeDoubles = Array(rapeating: 0.0, count: 3) //값은 0.0 3개가 추가 전체는 Double

//.count로 갯수, .isEmpty로 비어있는지, .append로 추가, +=로 배열 합체

var shoppingList[4..6] = ["Banana","Apple"]//로 추가가능
shoppingList.insert("Maple Syrup", at: 0)//를 사용해 중간 추가 가능

//arr 삭제
shoppingList.remove(at:0)
shoppingList.removeLast()

//arr 한개씩 접근
for (idx, val) in shoppingList.enumerated(){
    print("Item \(idx + 1) : \(val)")
}

//세트 Set
var letters = Set<Character>() //세트 생성
letters.insert("a")

var favoriteGenres: Set = ["Rock", "Classical", "Hip Hop"]
//count, isEmpty, insert, remove는 그대로 사용가능

//특정 값이 포함되는지 확인
if favoriteGenres.contains("Funk"){
    print("1")
}else{
    print("0")
}

//set도 반복 가능
for i in favoriteGenres{
    print("\(i)")
}

for j in favoriteGenres.sorted(){
    print("\(j)")
}

//set는 집합처럼 사용가능
//집합 작업
let oddDigits: Set = [1,3,5,7]
let evenDigits: Set = [0,2,4,6,8]
let singleDigit: Set = [2,3,5,7]

//short를 통해 쇼팅가능

//union == 합집합
oddDigits.union(evenDigits).sorted()

//intersection == 교집합
oddDigits.intersection(evenDigits).sorted()

//symmeyricDifferece == 여집합 + 여집합
oddDigits.symmeyricDifferece(evenDigits).sorted()

//subtracing == 여집합
oddDigits.subtracing(evenDigits).sorted()

//집합관계는 전부 bool값으로 표현

//사전 서로다른 타입의 정보를 저장 가능
var nameOfInt: [Int: String] = [:]
nameOfInt[16] = "sixteen"

//사전 정보 삽입 가능
var airports: [String: String] = ["YYX" : "Korea", "JP" : "Japan"]

//사전 정보 접근

