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

//쓰기는 래퍼의 예상 값에 액세스
//인스턴스 메서드와 같은 유형의 일부인 코드에서 프로젝션된 값에 액세스할 때 다른 속성에 액세스하는 것처럼 속성 이름 앞에 생략

enum Size {
    case small, large
}


struct SizedRectangle {
    @SmallNumber var height: Int
    @SmallNumber var width: Int


    mutating func resize(to size: Size) -> Bool {
        switch size {
        case .small:
            height = 10
            width = 20
        case .large:
            height = 100
            width = 100
        }
        return $height || $width
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
//반환 값이 없는 함수
func greet(person: String){
	print(\(person)
}
greet(person: “Dave”)

//함수의 반환 값은 호출될때 무시할 수 있음
func printAndCount(string: String) -> Int{
	print(string)
	retutn string.count
}

printAndCount(string: “Hello world”)
//hello world는 프린트 되고 count는 반환만됨 출력X

//반환 값이 여러 개인 함수
func minMax(array: [Int] -> (min: Int, max: Int){
	var currentMin = array[0]
	var currentMax = array[0\]
	for value in array[1..< array.count] {
	if value < currentMin {
			currentMin = value
		}else if value > currentMax {
			currentMax = value
		}
	}
	return (currentMin, currentMax)
} //return 값이 2개 이상 
// 반환값의 이름을 정해두었기 때문에 이름으로 접근가능

let bounds = minMax(array: [8,-6,2,6,-2])
print(“min is \(bounds.min) and max is \(bounds.max)”)
//변수선언후 .(이름)으로 접근 가능

//선택적 튜플 반환 유형
//반환되는 유형 전체 튜플에 값이 없을 가능성이 있을때 선택적으로 가능
func minMax(arr: [Int]) -> (min: Int, max: Int)?{
if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
// 위에서 “?”를 통해 반환값 불확실성을 작성

//암시적 반환이 있는 함수
func greeting(for person: String) -> String {
    "Hello, " + person + "!"
}//일반적인 함수

func anotherGreeting(for person: String) -> String {
    return "Hello, " + person + "!"
}//return의 함수를 사용하여 암시적으로 반환값이 있는 함수

//인수 레이블 생략
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
   
}//매개변수에 대한 명시적 인수 레이블 대신 “_”을 사용가능

//기본 매개변수 값
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    
}//모든 매개변수의 값을 정의하지 않고 기본값을 정의하여 사용 가능

//가변 매개변수
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
//위 한수는 평균을 구하는 함수
//매개변수가 여러개 일수있음으로 가변적으로 사용함

//인-아웃 매개변수
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
} //인-아웃 매개변수에 인수로 전달할 때 변수 이름 바로 앞에 &를 추가해서 함수에서 수정가능

//함수 유형
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
//출력이 있는 함수
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")
//다른 유형과 마찬가지로 상수나 변수에 함수를 할당할 때 함수 유형을 유추하도록 Swift에 맡길 수 있습니다
let anotherMathFunction = addTwoInts
	    
//매개변수 유형으로서의 함수 유형
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

//첫번째는 매개변수, 2-3번째는 유형어로된 입력

//반환 유형으로서의 함수 유형
func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}
//부울 매개변수를 기반으로 함수의 값을 반환함

//중첩 함수
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0 {
    print("\(currentValue)... ")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")

//밖에서는 1개의 함수로 보이지만 안 속은 여러개의 함수로 이루어짐

	    //Closures
//간결하고 집중된 구문으로 인라인 클로저를 작성하는 방법
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)

//일반적인 함수로 작성하고 이를 인수로 전달

//Closures 표현식
//정렬된 방법
//정렬 클로저의 출력을 기반으로 알려진 유형의 값 배열을 정렬하는 메서드를 제공한다
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
	    
//Closures 표현식 구문
{ (<#parameters#>) -> <#return type#> in
   <#statements#>
}
//가변 매개변수는 가변 매개변수의 이름을 지정하면 사용할 수 있습니다. 튜플은 매개변수 유형 및 반환 유형으로도 사용할 수 있다.

//이 인라인 클로저에 대한 매개변수 선언 및 반환 유형은 함수의 선언과 동일
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
//반환 유형은 중괄호 외부가 아닌 내부에 작성

//클로저의 본문이 너무 짧기 때문에 한 줄에 작성 가능
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
//한 쌍의 괄호는 여전히 메서드에 대한 전체 인수를 래핑

//컨텍스트에서 유형 유추
//정렬 클로저가 메소드에 대한 인수로 전달되기 때문에 Swift는 매개변수의 유형과 리턴하는 값의 유형을 유추할 수 있다.
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
//모호성을 피하는경우 좋음

//단일 표현식 클로저의 암시적 반환
//선언에서 키워드를 생략하여 암시적 반환가능
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )

//단축 인수 이름
//클로저에 속기 인수 이름을 제공하며, 클로저의 인수 값을 참조하는데 사용할 수 있다.
reversedNames = names.sorted(by: { $0 > $1 } )

//함수는 인수가 모두 문자열인 클로저를 예상하기 때문에 속기 인수 및 는 모두 유형
reversedNames = names.sorted { $0 > $1 }
// 충분히 길어 한 줄에 인라인으로 작성할 수 없을 때 가장 유용하다

//가치포착
//클로저는 정의된 주변 컨텍스트에서 상수와 변수를 캡처 할 수 있다
//중첩 함수를 포함하는 이라는 함수의 예
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
// 인수 레이블이 이고 매개변수 이름이 인 단일 매개변수가 있다

//함수는 실제 증분을 수행하는 라는 중첩 함수를 정의
func incrementer() -> Int {
    runningTotal += amount
    return runningTotal
}
//함수 본문 내에서 참조
//참조로 캡처하면 호출이 종료될 때 및 이 사라지지 않으며 다음에 함수가 호출
let incrementByTen = makeIncrementer(forIncrement: 10)
//변수 에 추가되는 증분 함수를 참조하기 위해 호출 되는 상수를 설정합니다 . 함수를 여러 번 호출하면 이 동작이 작동

incrementByTen()
// returns a value of 10
incrementByTen()
// returns a value of 20
incrementByTen()
// returns a value of 30
	    
let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()
//다음에 의해 캡처된 변수에는 영향을 미치지 않음
incrementByTen()

//클로저는 참조 유형
//함수나 클로저를 상수나 변수에 할당할 때마다 실제로 해당 상수나 변수를 함수나 클로저에 대한 참조 로 설정
let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()
incrementByTen()

// 둘 다 동일한 클로저를 참조하기 때문에 둘 다 증가하고 동일한 결과를 반환

//이스케이프 클로저
//클로저는 함수에 대한 인수로 전달되지만 함수가 반환된 후에 호출될 때 함수를 이스케이프 함

var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
//클로저가 탈출할 수 있는 한 가지 방법은 함수 외부에 정의된 변수에 저장

//일반적으로 클로저는 변수를 클로저 본문에서 사용하여 암시적으로 변수를 캡처하지만 이 경우에는 명시적

func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }

let instance = SomeClass()
instance.doSomething()
print(instance.x)

completionHandlers.first?()
print(instance.x)

//암시적으로 참조하는 버전
class SomeOtherClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { [self] in x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}
// self그러나 이스케이프 클로저는 when self이 구조체 또는 열거형의 인스턴스일 때 변경 가능한 참조를 캡처

struct SomeStruct {
    var x = 10
    mutating func doSomething() {
        someFunctionWithNonescapingClosure { x = 200 }  // Ok
        someFunctionWithEscapingClosure { x = 100 }     // Error
    }
}
//함수 에 대한 호출은 변경 메서드 내부에 있으므로 오류이므로 변경 가능
//변경 가능한 참조를 캡처할 수 없다는 규칙을 위반

//자동 폐쇄
//자동 클로저 는 함수에 인수로 전달되는 표현식을 래핑하기 위해 자동으로 생성되는 클로저
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
// Prints "5"

let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
// Prints "5"

print("Now serving \(customerProvider())!")
// Prints "Now serving Chris!"
print(customersInLine.count)
// Prints "4"

// 일반적 이지만 그런 종류의 함수를 구현하는 것은 일반적이지 않음

// customersInLine is ["Alex", "Ewa", "Barry", "Daniella"]
func serve(customer customerProvider: () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: { customersInLine.remove(at: 0) } )
// Prints "Now serving Alex!"

//동일한 작업을 수행하지만 명시적인 클로저를 사용하는 대신 매개변수의 유형을 속성으로 표시하여 자동 클로저를 사용

// customersInLine is ["Ewa", "Barry", "Daniella"]
func serve(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: customersInLine.remove(at: 0))
// Prints "Now serving Ewa!"

//자동 클로저를 과도하게 사용하면 코드를 이해하기 어려울 수 있다.
//이스케이프가 허용되는 자동 폐쇄를 원하면 @autoclosure및 @escaping속성을 모두 사용
	
// customersInLine is ["Barry", "Daniella"]
var customerProviders: [() -> String] = []
func collectCustomerProviders(_ customerProvider: @autoclosure @escaping () -> String) {
    customerProviders.append(customerProvider)
}
collectCustomerProviders(customersInLine.remove(at: 0))
collectCustomerProviders(customersInLine.remove(at: 0))

print("Collected \(customerProviders.count) closures.")
// Prints "Collected 2 closures."
for customerProvider in customerProviders {
    print("Now serving \(customerProvider())!")
}
// Prints "Now serving Barry!"
// Prints "Now serving Daniella!"

//함수는 인수 로 전달된 클로저를 호출하는 대신 클로저를 배열에 추가합니다. 배열은 함수 범위 밖에서 선언
//겨롸적으로 인수 값이 함수 범위를 벗어날 수 있어야함

//열거형
//enum하고 전체 정의를 한 쌍의 중괄호 안에 배치
enum CompassPoint {
	case north
	case south
	case east
	case west
}
//혹은 한줄로 구분 가능
enum Planet {
	case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}	
//새로운 열거형을 정의	
	
//사용법
var directionToHead = CompassPoint.west
directionToHead = .east
//으로 변경가능

//열거형 값을 Switch 문과 일치시키기

//개별 열거값을 Switch문으로 일치가능

directionToHead = .south
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}
// Prints "Watch out for penguins"

//명시적으로 처리되지 않은 사례를 포함 Case문

let somePlanet = Planet.earth
switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}

//Default문 사용	
	
//열거 사례 반복
enum Beverage: CaseIterable {
    case coffee, tea, juice
}
let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")

//같은 동작을 수행하지만 열거형으로 표현 가능

for beverage in Beverage.allCases {
    print(beverage)
}
// 프로토콜을 준수하는 열거형

//관련 값

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)

//동일 제품 다양한 바코드 할당가능
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

	switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}

//해당코드의 간결성을 위해 let를 사용가능

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
    print("QR code: \(productCode).")
}

//원시 값
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

//케릭터 형태나 문자열, 문자, 정수, 부동 소수점 등 여러가지를 사용할 수 있다.
	
//암시적으로 할당된 원시 값
//각 사례에 원시 겂을 명시적으로 할당할 피요는 없다.

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

//문자열이 원시 값에 사용되는 경우 각 사례에 대한 암시적 값은 텍스트	

	enum CompassPoint: String {
    case north, south, east, west
}

//예를 들어 암시적인 결과
//해당 속성을 사용하여 열거 사례의 원시 값에 접근

let earthsOrder = Planet.earth.rawValue
// earthsOrder is 3

let sunsetDirection = CompassPoint.west.rawValue
// sunsetDirection is "west"

//원시 값에서 초기화
// 이니셜라이저를 자동으로 수신하고 열거형 케이스 또는 를 반환
let possiblePlanet = Planet(rawValue: 7)

//원시값으로 천왕성을 식별

let positionToFind = 11
if let somePlanet = Planet(rawValue: positionToFind) {
    switch somePlanet {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at position \(positionToFind)")
}
// Prints "There isn't a planet at position 11"

//선택적 바인딩을 사용

//재귀 열겨형
//재귀 열거형은 하나 이상의 열거 사례에 대한 연결된 값으로 열거형의 다른 인스턴스가 있는 열거형

enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

//indirect연관된 값이 있는 열거의 모든 사례에 대해 간접 참조를 활성화하기 위해 열거 시작 전에 작성

indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}	
	
//산술 식을 저장
//사용되는 열거형도 중첩을 지원해야 합니다. 즉, 열거형이 재귀적

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

//간단한 방법
func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))
	
//구조와 클래스
// 빌딩 블록이 되는 범용의 유연한 구조

//구조에와 클래스 비교
/* 값을 저장할 속성 정의
* 기능을 제공하는 방법 정의
* 첨자 구문을 사용하여 해당 값에 대한 액세스를 제공하도록 첨자를 정의합니다.
* 초기화를 정의하여 초기 상태를 설정합니다.
* 기본 구현 이상으로 기능을 확장하도록 확장
* 특정 종류의 표준 기능을 제공하기 위한 프로토콜 준수
*/

//정의 구문
struct SomeStructure {
    // structure definition goes here
}
class SomeClass {
    // class definition goes here
}

struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}
	
//구조 및 클랫 인스턴스
//그렇게 하려면 구조체 또는 클래스의 인스턴스를 만들어야 합니다

let someResolution = Resolution()
let someVideoMode = VideoMode()

//가져오는거는 방법은 같음	

	//속성 접근
print("The width of someResolution is \(someResolution.width)")

print("The width of someVideoMode is \(someVideoMode.resolution.width)")

someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")

//안속에 안속까지 연결가능
	
//구조체 유형에 대한 멤버별 초기화 프로그램
let vga = Resolution(width: 640, height: 480)

//구조체와 열거형 값 유형
//값 유형은 변수 또는 상수에 할당되거나 함수에 전달될 때 값이 복사되는 유형
	
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

//기존 인스턴스의 복사본이cinema 만들어지고 이 새 복사본이 에 할당

cinema.width = 2048
//덮어 쓰기 가능
print("cinema is now \(cinema.width) pixels wide")
// Prints "cinema is now 2048 pixels wide"

print("hd is still \(hd.width) pixels wide")
// Prints "hd is still 1920 pixels wide"

//최종 결과는 동일한 숫자 값을 포함하는 완전히 별개의 두 인스턴스
//열거형에도 동일한 동작

	enum CompassPoint {
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()


print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")
// Prints "The current direction is north"
// Prints "The remembered direction is west"

//이후 값을 변경해 도 에 저장된 원래 값의 복사본에는 영향을 주지 않는다

	//클래스는 참조 유형

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

//다음으로 라는 새 상수에 할당되고 의 프레임 속도가 수정
let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
//클래스는 참조 유형 이고 실제로 둘 다 동일한 인스턴스를 참조

print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
//어디에서 를 사용하든 를 사용하는 코드에 대해서도 생각해야 하며 그 반대의 경우도 마찬가지

	//ID 연산자
//클래스는 참조 유형이기 때문에 여러 상수와 변수가 배후에서 클래스의 동일한 단일 인스턴스를 참조

if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}

//고유한 사용자 지정 구조 및 클래스를 정의할 때 두 인스턴스가 동일한 것으로 간주되는 항목을 결정하는 것은 사용자의 책임

//포인터
//일부 참조 유형의 인스턴스를 참조하는 Swift 상수 또는 변수는 C의 포인터와 유사하지만 메모리의 주소에 대한 직접 포인터가 아니며 별표( )를 작성하여 표시할 필요가 없다	

	//속성
//속성은 값을 특정 클래스, 구조 또는 열거형과 연결합니다. 저장 속성은 상수 및 변수 값을 인스턴스의 일부로 저장

//저장된 속성
//특정 클래스 또는 구조의 인스턴스의 일부로 저장되는 상수 또는 변수
//초기화 중에 저장된 속성의 초기 값을 설정하고 수정 가능

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
// the range represents integer values 0, 1, and 2
rangeOfThreeItems.firstValue = 6
// the range now represents integer values 6, 7, and 8

	//상수 구조 인스턴스의 저장된 속성
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
// this range represents integer values 0, 1, 2, and 3
rangeOfFourItems.firstValue = 6
// this will report an error, even though firstValue is a variable property

//변수 속성 이더라도 속성을 변경할 수 없다
//값 형식의 인스턴스가 상수로 표시되면 모든 속성도 마찬가지

	//Lazy Stored Properties
//초기 값이 처음 사용될 때까지 계산되지 않는 속성
//초기 값이 인스턴스의 초기화가 완료될 때까지 값을 알 수 없는 외부 요인에 따라 달라질 때 유용

class DataImporter {
    /*
    DataImporter is a class to import data from an external file.
    The class is assumed to take a nontrivial amount of time to initialize.
    */
    var filename = "data.txt"
    // the DataImporter class would provide data importing functionality here
}


class DataManager {
    lazy var importer = DataImporter()
    var data: [String] = []
    // the DataManager class would provide data management functionality here
}

//지속된 속성 및 인스턴스 변수
//이러한 개념을 단일 속성 선언으로 통합

//계산된 속성
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
    size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
// initialSquareCenter is at (5.0, 5.0)
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
// Prints "square.origin is now at (10.0, 10.0)"
let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// the DataImporter instance for the importer property hasn't yet been created

	//Point점의 x 좌표와 y 좌표를 캡슐화합니다.
//Sizea width및 a 를 캡슐화합니다 height.
//Rect원점과 크기로 사각형을 정의합니다.

//속기 세터 선언
struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

//속기 Getter 선언
struct CompactRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            Point(x: origin.x + (size.width / 2),
                  y: origin.y + (size.height / 2))
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}
//returnGetter에서 생략하는 것은 함수에서 생략하는 것과 동일한 규칙 을 return따른다

//읽기 전용 계산 속성
//게터는 있지만 세터는 없는 계산 속성을 읽기 전용 계산 속성이다.
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}
let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")

//이 구조 에는 직육면체의 현재 부피를 계산하고 반환하는 라는 읽기 전용 계산 속성도 있다.

//속성 관찰자
//속성 관찰자는 속성 값의 변화를 관찰하고 이에 반응

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// About to set totalSteps to 200
// Added 200 steps
stepCounter.totalSteps = 360
// About to set totalSteps to 360
// Added 160 steps
stepCounter.totalSteps = 896
// About to set totalSteps to 896
// Added 536 steps
	
//속성 래퍼

//속성 래퍼를 사용하는 경우 래퍼를 정의할 때 관리 코드를 한 번 작성하고 여러 속성에 적용하여 해당 관리 코드를 재사용
//속성을 정의하는 구조, 열거형 또는 클래스를 만듦

@propertyWrapper
struct TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
}
//래퍼를 속성에 적용하면 컴파일러는 래퍼에 저장소를 제공하는 코드와 래퍼를 통해 속성에 대한 액세스를 제공하는 코드를 합성

struct SmallRectangle {
    private var _height = TwelveOrLess()
    private var _width = TwelveOrLess()
    var height: Int {
        get { return _height.wrappedValue }
        set { _height.wrappedValue = newValue }
    }
    var width: Int {
        get { return _width.wrappedValue }
        set { _width.wrappedValue = newValue }
    }
}

//속성에 대한 getter 및 setter 및 래핑 액세스

//래핑된 속성의 초기값 설정
@propertyWrapper
struct SmallNumber {
    private var maximum: Int
    private var number: Int


    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, maximum) }
    }


    init() {
        maximum = 12
        number = 0
    }
    init(wrappedValue: Int) {
        maximum = 12
        number = min(wrappedValue, maximum)
    }
    init(wrappedValue: Int, maximum: Int) {
        self.maximum = maximum
        number = min(wrappedValue, maximum)
    }
}

//래핑된 속성에 대해 다른 초기 값을 지정할 수 없습니다
struct ZeroRectangle {
    @SmallNumber var height: Int
    @SmallNumber var width: Int
}


var zeroRectangle = ZeroRectangle()
//래퍼를 속성에 적용하고 초기 값을 지정하지 않으면 Swift는 init()이니셜라이저를 사용하여 래퍼를 설정

struct ZeroRectangle {
    @SmallNumber var height: Int
    @SmallNumber var width: Int
}


var zeroRectangle = ZeroRectangle()
print(zeroRectangle.height, zeroRectangle.width)
	
print(zeroRectangle.height, zeroRectangle.width)
// Prints "0 0"

//해당 랩 의 인스턴스는 를 호출 하여 생성
//이는 이니셜라이저에 대한 호출로 변환
//이니셜라이저는 여기에 지정된 래핑된 값을 사용하며 기본 최대값인 12를 사용

struct NarrowRectangle {
    @SmallNumber(wrappedValue: 2, maximum: 5) var height: Int
    @SmallNumber(wrappedValue: 3, maximum: 4) var width: Int
}


var narrowRectangle = NarrowRectangle()
print(narrowRectangle.height, narrowRectangle.width)
// Prints "2 3"


narrowRectangle.height = 100
narrowRectangle.width = 100
print(narrowRectangle.height, narrowRectangle.width)
//속성 래퍼에 대한 인수를 포함하면 래퍼에서 초기 상태를 설정하거나 생성 시 래퍼에 다른 옵션을 전달할 수 있습니다. 이 구문은 속성 래퍼를 사용하는 가장 일반적인 방법

struct MixedRectangle {
    @SmallNumber var height: Int = 1
    @SmallNumber(maximum: 9) var width: Int = 2
}


var mixedRectangle = MixedRectangle()
print(mixedRectangle.height)
// Prints "1"


mixedRectangle.height = 20
print(mixedRectangle.height)
//랩핑 의 인스턴스는 기본 최대값인 12를 사용하는 를 호출하여 생성됩니다 . 랩핑 인스턴스는 를 호출하여 생성	

	//속성 래퍼에서 값 프로젝션
//예상 값의 이름은 달러 기호( )로 시작한다는 점을 제외하면 래핑된 값과 동일

@propertyWrapper
struct SmallNumber {
    private var number: Int
    private(set) var projectedValue: Bool


    var wrappedValue: Int {
        get { return number }
        set {
            if newValue > 12 {
                number = 12
                projectedValue = true
            } else {
                number = newValue
                projectedValue = false
            }
        }
    }


    init() {
        self.number = 0
        self.projectedValue = false
    }
}
struct SomeStructure {
    @SmallNumber var someNumber: Int
}
var someStructure = SomeStructure()


someStructure.someNumber = 4
print(someStructure.$someNumber)
// Prints "false"


someStructure.someNumber = 55
print(someStructure.$someNumber)
//속성 래퍼 구문은 getter 및 setter가 있는 속성의 구문 설탕일 뿐이므로 다른 속성에 액세스하는 것과 동일하게 액세스 height하고 동작

//글로벌 및 로컬 변수
//속성 계산 및 관찰에 대해 위에서 설명한 기능은 전역 변수 및 지역 변수 에도 사용

func someFunction() {
    @SmallNumber var myNumber: Int = 0


    myNumber = 10
    // now myNumber is 10


    myNumber = 24
    // now myNumber is 12
}
	
//유형 속성
//생성하는 해당 유형의 인스턴스 수에 관계없이 이러한 속성의 복사본은 하나만 존재

//유형 속성 구문
struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}
enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}
class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }

//유형 속성 쿼리 및 설정

print(SomeStructure.storedTypeProperty)
// Prints "Some value."
SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)
// Prints "Another value."
print(SomeEnumeration.computedTypeProperty)
// Prints "6"
print(SomeClass.computedTypeProperty)
// Prints "27"

//제에서는 여러 오디오 채널에 대한 오디오 레벨 미터를 모델링하는 구조의 일부로 두 개의 저장된 유형 속성을 사용
}
	
struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                // cap the new audio level to the threshold level
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                // store this as the new overall maximum input level
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}
//구조 는 해당 기능을 지원하기 위해 두 개의 저장된 유형 속성을 정의합니다. 첫 번째는 오디오 레벨이 취할 수 있는 최대 임계값을 정의

//두 개의 새 오디오 채널을 생성하여 스테레오 사운드 시스템의 오디오 레벨을 나타낼 수 있다
var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7
print(leftChannel.currentLevel)
// Prints "7"
print(AudioChannel.maxInputLevelForAllChannels)
// Prints "7"
	
//오른쪽 채널 의 를 로 설정하려고 하면 오른쪽 채널의 속성이 의 최대값으로 제한되고 type 속성이 equal 로 업데이트되는 것을 볼 수 있다
rightChannel.currentLevel = 11
print(rightChannel.currentLevel)
// Prints "10"
print(AudioChannel.maxInputLevelForAllChannels)
// Prints "10"
	
//문자열과 문자
//Swift의 String및 Character유형은 코드의 텍스트 작업을 위한 빠르고 유니코드 호환 방법을 제공합니다. 문자열 생성 및 조작을 위한 구문은 C와 유사한 문자열 리터럴 구문을 사용하여 가볍고 읽기 쉽다

//문자열 리터럴
let someString = "Some string literal value"	

//행동양식
//인스턴스 메소드

	class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}
//클래스 는 현재 카운터 값을 추적하기 위해 Counter변수 속성을 선언합니다 .count 속성과 동일한 점 구문을 사용하여 인스턴스 메서드를 호출

	let counter = Counter()
// the initial counter value is 0
counter.increment()
// the counter's value is now 1
counter.increment(by: 5)
// the counter's value is now 6
counter.reset()
// the counter's value is now 0

//함수 매개변수에는 함수 인수 레이블 및 매개변수 이름 에 설명된 대로 이름(함수 본문 내에서 사용)과 인수 레이블(함수 호출 시 사용)이 모두 있을 수 있다.

//자기 개산
//유형의 모든 인스턴스에는 self인스턴스 자체와 정확히 동일한 이라는 암시적 속성이 있습니다. 속성을 사용하여 self자체 인스턴스 메서드 내에서 현재 인스턴스를 참조
	
func increment() {
    self.count += 1
}
//명시적으로 작성하지 않으면 selfSwift는 메소드 내에서 알려진 속성 또는 메소드 이름을 사용할 때마다 현재 인스턴스의 속성 또는 메소드를 참조하고 있다고 가정
//인스턴스의 속성과 동일한 이름을 가질 때 발생

struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}
let somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOf(x: 1.0) {
    print("This point is to the right of the line where x == 1.0")
}
	
