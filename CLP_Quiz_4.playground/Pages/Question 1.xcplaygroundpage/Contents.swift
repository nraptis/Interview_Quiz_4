import Foundation

// NOTE: There are 4 pages in this playground.
// There are a total of 4 questions, each on a separate page.

// You are given 2 sorted arrays of comparables, a and b.

// Write a function which merges a and b into 1 sorted array.

// Do not use the built in sort function.

// This is similar to the merge you would use for merge-sort.

// ============================

//
// Example 1:
//
// Input A: [1, 3, 5]
// Input B: [2, 4]
//
// Output: [1, 2, 3, 4, 5]
//

// ============================

//
// Example 2:
//
// Input A: [1, 5, 9]
// Input B: [2, 3, 4, 6, 7, 8]
//
// Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
//

// ============================

func merge<Element: Comparable>(a: [Element], b: [Element]) -> [Element] {
    []
}

let test_1_a = [1, 3, 5]
let test_1_b = [2, 4]
let test_1_result = merge(a: test_1_a, b: test_1_b)
print("\(test_1_a) + \(test_1_b) = \(test_1_result)")
// Expected Result: [1, 2, 3, 4, 5]

let test_2_a = [Int]()
let test_2_b = [1]
let test_2_result = merge(a: test_2_a, b: test_2_b)
print("\(test_2_a) + \(test_2_b) = \(test_2_result)")
// Expected Result: [1]

let test_3_a = [1]
let test_3_b = [Int]()
let test_3_result = merge(a: test_3_a, b: test_3_b)
print("\(test_3_a) + \(test_3_b) = \(test_3_result)")
// Expected Result: [1]

let test_4_a = [1, 2, 3]
let test_4_b = [1, 2, 3]
let test_4_result = merge(a: test_4_a, b: test_4_b)
print("\(test_4_a) + \(test_4_b) = \(test_4_result)")
// Expected Result: [1, 1, 2, 2, 3, 3]

let test_5_a = [0, 0, 0]
let test_5_b = [0, 0, 0]
let test_5_result = merge(a: test_5_a, b: test_5_b)
print("\(test_5_a) + \(test_5_b) = \(test_5_result)")
// Expected Result: [0, 0, 0, 0, 0, 0]

let test_6_a = [1, 5, 9]
let test_6_b = [2, 3, 4, 6, 7, 8]
let test_6_result = merge(a: test_6_a, b: test_6_b)
print("\(test_6_a) + \(test_6_b) = \(test_6_result)")
// Expected Result: [1, 2, 3, 4, 5, 6, 7, 8, 9]

let test_7_a = [1, 3, 4, 5, 7, 8, 9]
let test_7_b = [2, 6, 10]
let test_7_result = merge(a: test_7_a, b: test_7_b)
print("\(test_7_a) + \(test_7_b) = \(test_7_result)")
// Expected Result: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

let test_8_a = [1, 3, 5]
let test_8_b = [2, 4]
let test_8_result = merge(a: test_8_a, b: test_8_b)
print("\(test_8_a) + \(test_8_b) = \(test_8_result)")
// Expected Result: [1, 2, 3, 4, 5]

let test_9_a = [1, 2, 2, 4, 5, 6]
let test_9_b = [1, 1, 3, 4, 4, 5, 7, 8]
let test_9_result = merge(a: test_9_a, b: test_9_b)
print("\(test_9_a) + \(test_9_b) = \(test_9_result)")
// Expected Result: v
