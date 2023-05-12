import Foundation

// You are given an array of comparables.

// Write a function which generates all unique permutations of this array.

// This refers to the complete set of possible arrangements or orderings of the elements.

// ============================

//
// Example 1
//
// Input: [1, 2]
//
// Output:
// [1, 2]
// [2, 1]
//

// ============================

//
// Example 2
//
// Input: ["a", "a", "b"]
//
// Output:
// ["a", "a", "b"]
// ["a", "b", "a"]
// ["b", "a", "a"]
//

// ============================

//
// Example 3
//
// Input: [2, 1, 3]
//
// Output:
// [1, 2, 3]
// [1, 3, 2]
// [2, 1, 3]
// [2, 3, 1]
// [3, 1, 2]
// [3, 2, 1]
//

func permutations<Element: Comparable>(input: [Element]) -> [[Element]] {
    func helper(result: inout [[Element]], list: inout [Element], visited: inout [Bool], elements: [Element]) {
        if list.count == elements.count {
            result.append(list)
            return
        }
        for index in elements.indices {
            if visited[index] {
                continue
            }
            if index > 0, !visited[index - 1], elements[index] == elements[index - 1] {
                continue
            }
            list.append(elements[index])
            visited[index] = true
            helper(result: &result,
                list: &list,
                visited: &visited,
                elements: elements)

            list.removeLast()
            visited[index] = false
        }
    }
    
    var result = [[Element]]()
    var list = [Element]()
    let elements = input.sorted()
    var visited = [Bool](repeating: false, count: elements.count)
    
    helper(result: &result,
           list: &list,
           visited: &visited,
           elements: elements)
    return result
}

let test_1_array = [1, 2, 3]
let test_1_results = permutations(input: test_1_array)
print("Results for \(test_1_array):")
for permutation in test_1_results {
    print(permutation)
}
print("=====")

//Expected Result:
// [1, 2, 3]
// [1, 3, 2]
// [2, 1, 3]
// [2, 3, 1]
// [3, 1, 2]
// [3, 2, 1]

let test_2_array = ["a", "a", "b"]
let test_2_results = permutations(input: test_2_array)
print("Results for \(test_2_array):")
for permutation in test_2_results {
    print(permutation)
}
print("=====")
//Expected Result:
// ["a", "a", "b"]
// ["a", "b", "a"]
// ["b", "a", "a"]


let test_3_array = [7, 7, 7]
let test_3_results = permutations(input: test_3_array)
print("Results for \(test_3_array):")
for permutation in test_3_results {
    print(permutation)
}
print("=====")

//Expected Result:
// [7, 7, 7]

let test_4_array = [2, 3, 2, 1]
let test_4_results = permutations(input: test_4_array)
print("Results for \(test_4_array):")
for permutation in test_4_results {
    print(permutation)
}
print("=====")
//Expected Result:
// [1, 2, 2, 3]
// [1, 2, 3, 2]
// [1, 3, 2, 2]
// [2, 1, 2, 3]
// [2, 1, 3, 2]
// [2, 2, 1, 3]
// [2, 2, 3, 1]
// [2, 3, 1, 2]
// [2, 3, 2, 1]
// [3, 1, 2, 2]
// [3, 2, 1, 2]
// [3, 2, 2, 1]

let test_5_array = [1, 1, 2, 2]
let test_5_results = permutations(input: test_5_array)
print("Results for \(test_5_array):")
for permutation in test_5_results {
    print(permutation)
}
print("=====")
//Expected Result:
// [1, 1, 2, 2]
// [1, 2, 1, 2]
// [1, 2, 2, 1]
// [2, 1, 1, 2]
// [2, 1, 2, 1]
// [2, 2, 1, 1]

let test_6_array = [1, 2, 1, 1]
let test_6_results = permutations(input: test_6_array)
print("Results for \(test_6_array):")
for permutation in test_6_results {
    print(permutation)
}
print("=====")
//Expected Result:
// [1, 1, 1, 2]
// [1, 1, 2, 1]
// [1, 2, 1, 1]
// [2, 1, 1, 1]

let test_7_array = [1, 2]
let test_7_results = permutations(input: test_7_array)
print("Results for \(test_7_array):")
for permutation in test_7_results {
    print(permutation)
}
print("=====")
//Expected Result:
// [1, 2]
// [2, 1]
