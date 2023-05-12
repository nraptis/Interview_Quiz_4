import Foundation

// You are given an array of comparables.

// Write a function which generates all unique subsets of this array.

// A subset is a collection of elements taken from the original set, where the order of the elements does not matter.
// This also includes the empty set.

// ============================

//
// Example 1
//
// Input: [1, 2]
//
// Output:
// []
// [1]
// [2]
// [1, 2]
//

// ============================

//
// Example 2
//
// Input: [1, 2, 3]
//
// Output:
// []
// [1]
// [2]
// [1, 2]
// [3]
// [1, 3]
// [2, 3]
// [1, 2, 3]
//

// ============================

func subsets<Element: Comparable>(input: [Element]) -> [[Element]] {
    let input = input.sorted()
    var result = [[Element]]()
    result.append([])
    var index = 0
    while index < input.count {
        var duplicateCount = 1
        while (index + duplicateCount) < input.count && input[index + duplicateCount] == input[index] {
            duplicateCount += 1
        }
        let resultCount = result.count
        for resultIndex in 0..<resultCount {
            var array = result[resultIndex]
            for _ in 0..<duplicateCount {
                array.append(input[index])
                result.append(array)
            }
        }
        index += duplicateCount
    }
    return result
}

let test_1_array = [1, 2, 3]
let test_1_results = subsets(input: test_1_array)
print("Results for \(test_1_array):")
for subset in test_1_results {
    print(subset)
}
print("=====")

// Expected Result:
// []
// [1]
// [2]
// [1, 2]
// [3]
// [1, 3]
// [2, 3]
// [1, 2, 3]

let test_2_array = [1, 2]
let test_2_results = subsets(input: test_2_array)
print("Results for \(test_2_array):")
for subset in test_2_results {
    print(subset)
}
print("=====")
// Expected Result:
// []
// [1]
// [2]
// [1, 2]

let test_3_array = [1, 2, 2]
let test_3_results = subsets(input: test_3_array)
print("Results for \(test_3_array):")
for subset in test_3_results {
    print(subset)
}
print("=====")

// Expected Result:
// []
// [1]
// [2]
// [2, 2]
// [1, 2]
// [1, 2, 2]

let test_4_array = [2, 3, 2, 1]
let test_4_results = subsets(input: test_4_array)
print("Results for \(test_4_array):")
for subset in test_4_results {
    print(subset)
}
print("=====")

// Expected Result:
// []
// [1]
// [2]
// [2, 2]
// [1, 2]
// [1, 2, 2]
// [3]
// [1, 3]
// [2, 3]
// [2, 2, 3]
// [1, 2, 3]
// [1, 2, 2, 3]

let test_5_array = [1, 1, 2, 2]
let test_5_results = subsets(input: test_5_array)
print("Results for \(test_5_array):")
for subset in test_5_results {
    print(subset)
}
print("=====")

// Expected Result:
// []
// [1]
// [1, 1]
// [2]
// [2, 2]
// [1, 2]
// [1, 2, 2]
// [1, 1, 2]
// [1, 1, 2, 2]

let test_6_array = [1, 2, 1, 1]
let test_6_results = subsets(input: test_6_array)
print("Results for \(test_6_array):")
for subset in test_6_results {
    print(subset)
}
print("=====")

// Expected Result:
// []
// [1]
// [1, 1]
// [1, 1, 1]
// [2]
// [1, 2]
// [1, 1, 2]
// [1, 1, 1, 2]

let test_8_array = [7, 7, 7]
let test_8_results = subsets(input: test_8_array)
print("Results for \(test_8_array):")
for subset in test_8_results {
    print(subset)
}
print("=====")

// Expected Result:
// []
// [7]
// [7, 7]
// [7, 7, 7]
