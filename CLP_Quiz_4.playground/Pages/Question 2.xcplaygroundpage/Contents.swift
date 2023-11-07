import Foundation

// Write a function which partitions an input array based on a value (pivot).
// The pivot is guaranteed to be in the array, unless the array is empty.

// The function returns the partition index, such that:
// a.) All values to the left of the partition are less than ( < ) the pivot.
// b.) All values to the right of the partition are greater than or equal to ( >= ) the pivot.

// Order does not matter.

// This is similar to a partition that you would use for quick-sort.

// ============================

//
// Example 1
//
// Input: [3, 2, 1]
//
// Output: 1
// Input Modified To: [1, 2, 3]
//

// ============================

//
// Example 2
//
// Input: [1, 2, 3, 1, 2, 3, 1, 2, 3]
//
// Output: 3
// Input Modified To: [1, 1, 1, 2, 2, 2, 3, 3, 3]
//

// ============================

func partition<Element: Comparable>(input: inout Array<Element>,
                        pivot: Element) -> Int {
    0
}

var test_1_array = [3, 2, 1]
let test_1_pivot = 2
let test_1_partition = partition(input: &test_1_array, pivot: test_1_pivot)
validatePartition(input: test_1_array, partition: test_1_partition)
// Sample Result:
// [1{2}3]
// partition = 1

var test_2_array = [1, 2, 3, 1, 2, 3, 1, 2, 3]
let test_2_pivot = 2
let test_2_partition = partition(input: &test_2_array, pivot: test_2_pivot)
validatePartition(input: test_2_array, partition: test_2_partition)
// Sample Result:
// [111{2}23323]
// partition = 3

var test_3_array = [2, 2, 2, 1, 1, 1]
let test_3_pivot = 2
let test_3_partition = partition(input: &test_3_array, pivot: test_3_pivot)
validatePartition(input: test_3_array, partition: test_3_partition)
// Sample Result:
// [111{2}22]
// partition = 3

var test_4_array = [1, 1, 1, 2, 2, 2]
let test_4_pivot = 2
let test_4_partition = partition(input: &test_4_array, pivot: test_4_pivot)
validatePartition(input: test_4_array, partition: test_4_partition)
// Sample Result:
// [111{2}22]
// partition = 3

var test_5_array = [2, 2, 1, 1, 1]
let test_5_pivot = 2
let test_5_partition = partition(input: &test_5_array, pivot: test_5_pivot)
validatePartition(input: test_5_array, partition: test_5_partition)
// Sample Result:
// [111{2}2]
// partition = 3

var test_6_array = [1, 1, 1, 2, 2]
let test_6_pivot = 2
let test_6_partition = partition(input: &test_6_array, pivot: test_6_pivot)
validatePartition(input: test_6_array, partition: test_6_partition)
// Sample Result:
// [111{2}2]
// partition = 3

var test_7_array = [2, 2, 2, 2, 1, 1, 1]
let test_7_pivot = 2
let test_7_partition = partition(input: &test_7_array, pivot: test_7_pivot)
validatePartition(input: test_7_array, partition: test_7_partition)
// Sample Result:
// [111{2}222]
// partition = 3

var test_8_array = [1, 1, 1, 2, 2, 2, 2]
let test_8_pivot = 2
let test_8_partition = partition(input: &test_8_array, pivot: test_8_pivot)
validatePartition(input: test_8_array, partition: test_8_partition)
// Sample Result:
// [111{2}222]
// partition = 3

var test_9_array = [2]
let test_9_pivot = 2
let test_9_partition = partition(input: &test_9_array, pivot: test_9_pivot)
validatePartition(input: test_9_array, partition: test_9_partition)
// Sample Result:
// [{2}]
// partition = 0

var test_10_array: [Int] = []
let test_10_pivot = 2
let test_10_partition = partition(input: &test_10_array, pivot: test_10_pivot)
validatePartition(input: test_10_array, partition: test_10_partition)
// Sample Result:
// []

var test_11_array = [2, 2]
let test_11_pivot = 2
let test_11_partition = partition(input: &test_11_array, pivot: test_11_pivot)
validatePartition(input: test_11_array, partition: test_11_partition)
// Sample Result:
// [{2}2]
// partition = 0

var test_12_array = [2]
let test_12_pivot = 2
let test_12_partition = partition(input: &test_12_array, pivot: test_12_pivot)
validatePartition(input: test_12_array, partition: test_12_partition)
// Sample Result:
// [{2}]
// partition = 0

var test_13_array = [1, 2]
let test_13_pivot = 2
let test_13_partition = partition(input: &test_13_array, pivot: test_13_pivot)
validatePartition(input: test_13_array, partition: test_13_partition)
// Sample Result:
// [1{2}]
// partition = 1

var test_14_array = [1, 2, 2]
let test_14_pivot = 2
let test_14_partition = partition(input: &test_14_array, pivot: test_14_pivot)
validatePartition(input: test_14_array, partition: test_14_partition)
// Sample Result:
// [1{2}2]
// partition = 1

var test_15_array = [3, 3, 2, 3, 2, 3, 1, 1, 2, 3]
let test_15_pivot = 2
let test_15_partition = partition(input: &test_15_array, pivot: test_15_pivot)
validatePartition(input: test_15_array, partition: test_15_partition)
// Sample Result:
// [11{2}3233323]
// partition = 2

var test_16_array = [2, 1, 2, 1, 2, 1, 1, 1]
let test_16_pivot = 2
let test_16_partition = partition(input: &test_16_array, pivot: test_16_pivot)
validatePartition(input: test_16_array, partition: test_16_partition)
// Sample Result:
// [11111{2}22]
// partition = 5

var test_17_array = [1, 1, 1, 1, 2]
let test_17_pivot = 2
let test_17_partition = partition(input: &test_17_array, pivot: test_17_pivot)
validatePartition(input: test_17_array, partition: test_17_partition)
// Sample Result:
// [1111{2}]
// partition = 4

var test_18_array = [1, 1, 1, 1, 3, 3, 3, 2, 2, 2, 1, 2, 3]
let test_18_pivot = 2
let test_18_partition = partition(input: &test_18_array, pivot: test_18_pivot)
validatePartition(input: test_18_array, partition: test_18_partition)
// Sample Result:
// [11111{2}3322323]
// partition = 5

var test_19_array = [5, 4, 4, 2, 3, 3, 1, 1]
let test_19_pivot = 2
let test_19_partition = partition(input: &test_19_array, pivot: test_19_pivot)
validatePartition(input: test_19_array, partition: test_19_partition)
// Sample Result:
// [11{2}53344]
// partition = 2

var test_20_array = [2, 2, 2, 2, 2, 2, 2, 2, 1]
let test_20_pivot = 2
let test_20_partition = partition(input: &test_20_array, pivot: test_20_pivot)
validatePartition(input: test_20_array, partition: test_20_partition)
// Sample Result:
// [1{2}2222222]
// partition = 1

func validatePartition<Element: Comparable & CustomStringConvertible>(input: [Element], partition: Int) {
    var outputBuffer = [String]()
    outputBuffer.append("[")
    for index in 0..<input.count {
        if index == partition {
            outputBuffer.append("{")
            outputBuffer.append("\(input[index])")
            outputBuffer.append("}")
        } else {
            outputBuffer.append("\(input[index])")
        }
    }
    outputBuffer.append("]")
    let output = String(outputBuffer.joined())
    
    if input.count <= 0 {
        print(output)
        return
        
    }
    let pivot = input[partition]
    var index = 0
    while index < partition {
        if input[index] >= pivot {
            print("Partition Is Invalid!!! @ \(index)")
            return
        }
        index += 1
    }
    index = partition + 1
    while index < input.count {
        if input[index] < pivot {
            print("Partition Is Invalid!!! @ \(index)")
            return
        }
        index += 1
    }
    print("\(output)")
}
