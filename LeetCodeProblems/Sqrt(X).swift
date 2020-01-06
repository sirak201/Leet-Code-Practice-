//
//  Sqrt(X).swift
//  LeetCodeProblems
//
//  Created by Sirak on 1/6/20.
//  Copyright © 2020 Sirak. All rights reserved.
//

import Foundation


//
//Add to List
//
//Share
//Implement int sqrt(int x).
//
//Compute and return the square root of x, where x is guaranteed to be a non-negative integer.
//
//Since the return type is an integer, the decimal digits are truncated and only the integer part of the result is returned.
//



func mySqrt(_ x: Int) -> Int {
    var i = 0
    while i*i <= x {
        i += 1
    }
    
    return i-1
}
