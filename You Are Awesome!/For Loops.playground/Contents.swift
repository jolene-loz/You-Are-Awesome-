import UIKit

for increment in 1...5{
    print(increment)
}

print("")
var quizzes = [72,81,89,95,92]
var sum = 0

//for index in 0..<quizzes.count{
//    print("index = \(index), quizzes[index] = \(quizzes[index])")
//    sum = sum + quizzes[index]
//
//}
//print("Sum = \(sum)")

for quiz in quizzes{
    sum = sum + quiz
}
print("The sum of all quizzes is: \(sum)")

for countByFours in stride(from: 0, through: 100, by: 4){
    print(countByFours)
}

for countByFours in stride(from: 1, to: 100, by: 4){
    print(countByFours)
}

for myBank in stride (from: 100, to: 0, by: -20){
    print("\(myBank/20) Tubmans = $\(myBank)")
}
