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
//count, isEmpty 사용가능
print("\(airports.count)")

//새항목 추가
airports["LHR"] = "London"
//특정키 변경
airports["LHR"] = "London Heathrow"

//해당키 삭제 nil사용 혹은 removeValue 사용
airports["APL"] = nil
if let removeValue = airports.removeValue(forKey: "DUB")

//사전 반복 + 각각 튜플 접근
for (airportCode, airportName) in airports{
    print("\(airportCode) : \(airportName)")
}

for airportCode in airports.keys{
    print("\(airportCode)")
}

for airportCode in airports.values {
    print("\(airportName)")
}

//사전의 값을 임의의 데이터 값으로 변경해서 출력 가능
let airportCodes = [String](airports.keys)
let aorportNames = [String](airports.values)

//제어문
let names = ["Andy", "Alex", "Brian", " Jack"]
for name in names { //name은 변수로 할당할 수 있다.
    print("Hello, \(name)!")
}

//제어문 사전 접근
let numberOfLegs = {"spider" : 8, "ant" : 6, "Cat" : 4}
for (animalName, legCount) in numberOfLegs { //두개의 변수를 선언 -> 앞이 count 뒤가 velue로 자동할당
    print("\(animalName)s have \(legCount)" legs)
}

for index in 1..5{ //기존방식도 그대로 사용가능
    print("\(index)")
}

//특정 범위를 특정 조건에 따라 사용가능
let minuteInterval = 5
for tickMark in stride(from: 0, to: 60, by: minuteInterval){
    //0..60까지 5단위로 출력 (0,5,10,15,20..)
}

//while 루프 기존이랑 같음
var square = 0
var diceRoll = 0
while square < finalSquare {
    diceRoll += 1
    if diceRoll == 7 {
        diceRoll = 1
    }
    square += diceRoll
    if square < board.count{
        square += board[square]
    }
}
print("Game over")

//repeat을 통해서 비슷하게 사용가능
repeat {
    square += board[square]
    diceRoll += 1
    
    if diceRoll == 7
        diceRoll = 1
        
    square += diceRoll
}while square < finalSquare
//위에랑 같지만 while문이 아래 있고 일단 한번 실행함

//if 조건문은 기존과 똑같음

//switch문
//case 조건은 여러개도 가능
switch Num {
case 1:
    print("1")
case 2:
    print("2")
    
default:
    print("Number")
}

//case에 코드가 없을경우에는 런타임 에러를 출력
//case는 범위도 가능

//튜플 형태
let somePoint = (1,1)
switch somePoint {
case (0,0):
    print("0,0")

case (_,0): //범위를 모를경우 _로 대체가능
    print("X,0")
    
case (0,_) :
    print("0,X")
    
case (-2...2, -2...2): //범위를 선택가능
    print("-2,2")
}

//값을 바인딩
let anotherPoint = (2,0)
switch anotherPoint {
case (let x, 0):
    print("\(x)")

case (0, let y):
    print("\(y)")
    
case let (x,y):
    print("\(x), \(y)")
}

//where문
switch anotherPoint {
case let (x,y) where x == y:
    print ("\(x), \(y) is x == y")
}
//case문에 속해져있는 if절 느낌

//제어문 5가지
//continue, break, fallthrough, return, throw

//continue -> 수행중인 루프를 중지하고 다음 루프를 실행합니다.
//break -> 전체 제어 흐름 명령문을 즉시 종료합니다.
//fallthrough -> case문에서 여러 사례를 실행하는 것을 방지하고 사용할경우 명시적으로 써야함
//throw ->

//함수 선언
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}//person은 함수 내부의 변수 String으로 선언, String으로 출력

print(greet(person: "Anna"))

//변수 없는 함수
func sayHelloWorld() -> String(){
return “hello, world”
}

print(sayHelloWorld())

//여러 매개변수가 있는 함수
func greet(person : String, alreadyGreeted: Bool) -> String{
if alreadyGreeted{
	return greetAgain(person: person)
	}else {
		return greet(person: person
	}
}
//여러 매개변수가 있는 함수
