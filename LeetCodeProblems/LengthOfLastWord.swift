//
//  LengthOfLastWord.swift
//  LeetCodeProblems
//
//  Created by Sirak on 1/6/20.
//  Copyright © 2020 Sirak. All rights reserved.
//

import Foundation


//Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word (last word means the last appearing word if we loop from left to right) in the string.
//
//If the last word does not exist, return 0.
//
//Note: A word is defined as a maximal substring consisting of non-space characters only.


func lengthOfLastWord(_ s: String) -> Int {
    
    var count = 0
    var arr = [Character]()
    
    
    
    
    for  i in s {
         arr.append(i)
    }
    
    for i in (0..<arr.count).reversed() {
        
      if  arr[i] != " " {
          count += 1
      } else {
          if count != 0 {
              return count
          }
      }
    }
    
    return count
    
}
