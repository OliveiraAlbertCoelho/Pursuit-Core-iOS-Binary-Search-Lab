import Foundation


func albertSearch<T: Comparable>(arr: [T],
                                 target: T,
                                 range: Range<Int>? = nil,
                                 numberOfOperations: Int = 1) -> Bool {
    let searchRange: Range<Int>
    if let range = range {
        searchRange = range
    } else {
        searchRange = (0..<arr.endIndex)
    }
    // Base Case
    if searchRange.lowerBound >= searchRange.upperBound {
        print("Didn't find \(target) in \(numberOfOperations) operations")
        return false
    }
    
    // Recursive Call
    
    let middleIndex = (searchRange.lowerBound + searchRange.upperBound) / 2
    if target == arr[middleIndex] {
        print("Found \(target) in \(numberOfOperations) operations")
        return true
    } else if target < arr[middleIndex] {
        return albertSearch(arr: arr,
                            target: target,
                            range: searchRange.lowerBound..<middleIndex,
                            numberOfOperations: numberOfOperations + 1)
    } else {
        return albertSearch(arr: arr,
                            target: target,
                            range: (middleIndex + 1)..<searchRange.upperBound,
                            numberOfOperations: numberOfOperations + 1)
    }
}

// 1. Find if an element is contained within a sorted array in O(log(n)) time.  Do not use recursion.

func binarySearch<T: Comparable>(arr: [T], target: T) -> Bool {
 
    
    return false
}
// 2. Find if an element is contained within a sorted array in O(log(n)) time.  Use recursion.
func recursiveBinarySearch<T: Comparable>(arr: [T], target: T) -> Bool {
    let middleIndex = (arr.endIndex-1) / 2
    var newArray = arr
    while newArray.count > 2{
        if target == arr[middleIndex]{
            return true
        }else if target < arr[middleIndex] {
            newArray = Array(arr[0..<middleIndex])
            return recursiveBinarySearch(arr: newArray, target: target)
        }
        else {
            newArray = Array(arr[middleIndex..<arr.endIndex])
             return recursiveBinarySearch(arr: newArray, target: target)
    }
    }
     return false
    }

// https://www.interviewbit.com/problems/matrix-search/

// 3. Find if a value is contained in a matrix of dimensions m x n. This matrix has the following properties:

// Integers in each row are sorted from left to right.
// The first integer of each row is greater than or equal to the last integer of the previous row.

func contains(value: Int, in arr: [[Int]]) -> Bool {
    var minIndex = 0
    var maxIndex = arr.count - 1
    while minIndex < maxIndex {
        let middleIndex = (minIndex + maxIndex)/2
        if arr[middleIndex][0] == value{return true
        }
        else if value < arr[middleIndex][0]{
            maxIndex = middleIndex - 1
        } else if value > arr[middleIndex][0] {
            minIndex = middleIndex + 1
        }
    }
    let targetArray = arr[minIndex]
        return albertSearch(arr: targetArray, target: value)
}
    
    
    
    // https://www.techiedelight.com/find-first-or-last-occurrence-of-a-given-number-sorted-array/
    // 4. Given a sorted array of integers, find the index of the last occurrence of a given number.  Your solution should work in O(log(n)) time
    
    func lastOccurrence<T: Comparable>(of value: T, in arr: [T]) -> Int? {
        return nil
    }
    
    // https://www.techiedelight.com/find-smallest-missing-element-sorted-array/
    // 5. Given a sorted array of distinct non-negative integers, find the smallest missing number.  Your solution should work in O(log(n)) time
    
    func smallestMissingNumber(in arr: [Int]) -> Int {
        let missingNum = -1
        var newArray = arr
        while newArray.count > 2{

        }
        return -1
}
