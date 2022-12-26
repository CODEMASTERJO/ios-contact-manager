import Foundation

struct UserInfo {
    var name: String
    var age: Int
    var phoneNumbers: [String]
}

var allUsersData: [UserInfo] = []

var validInput:String = ""

func inputNewUser() {
    print("연락처 정보를 입력해주세요 : ")
    let input = readLine()
    if let someInput = input, someInput.count > 0 {
        validInput = someInput
    }  else {
        print("아무것도 입력되지 않았습니다. 입력 형식을 확인해주세요.")
        return }
}

var transformedInput: [String] = []

func transform(input: String) {
    let spaceRemovedInput = input.replacingOccurrences(of: " ", with: "")
    let splitedInput = spaceRemovedInput.components(separatedBy: "/")
    guard splitedInput.count == 3 else {return}
    
    transformedInput = splitedInput
}

var checkedName: String = ""
var checkedAge: Int = 0
var checkedPhoneNumber: String = ""

enum regularExpressionChecker: String {
    case nameChecker = "^[a-zA-Z]*$"
    case ageChecker = "^[0-9]{1,3}$"
    case phoneNumberChecker = "^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$"
}
