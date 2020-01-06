//
//  MajorityElement.swift
//  LeetCodeProblems
//
//  Created by Sirak on 1/6/20.
//  Copyright © 2020 Sirak. All rights reserved.
//

import Foundation

//Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
//
//You may assume that the array is non-empty and the majority element always exist in the array.



func majorityElement(_ nums: [Int]) -> Int {
    
    var hashMap = [Int : [Int]]()
    var height = 0
    var val = 0
    // Time o(n) , Space o(n)
    for i in nums {
        if hashMap[i] == nil {
            hashMap[i] = [i]
            if  hashMap[i]!.count > height {
                height = hashMap[i]!.count
                val  =  i
            }
           } else {
            hashMap[i]!.append(i)
            if  hashMap[i]!.count > height {
                height = hashMap[i]!.count
                val  =  i
            }
          }
    }
    
    print(hashMap)

     print(val)
     return val
                   
}
