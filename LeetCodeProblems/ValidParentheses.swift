//
//  ValidParentheses.swift
//  LeetCodeProblems
//
//  Created by Sirak on 1/6/20.
//  Copyright © 2020 Sirak. All rights reserved.
//

import Foundation


//Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//An input string is valid if:
//
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.
//Note that an empty string is also considered valid.

    
    func isValid(_ s: String) -> Bool {
        
        var stack = [Character]()
        var lastChar : Character?
        
        for i in s {
            if (i == "(" || i ==  "[" || i ==  "{" ){
                stack.append(i)
                lastChar = i
            } else if  i == ")" || i ==   "]" || i ==   "}"{
                guard let chr = lastChar else { return false }
                if i == ")" && chr == "(" {
                    stack.removeLast()
                   if !stack.isEmpty {
                       lastChar = stack[stack.count - 1]
                   } else {
                       lastChar = nil
                   }
                    continue
                }
                 if i == "]" && chr == "[" {
                    stack.removeLast()
                      if !stack.isEmpty {
                       lastChar = stack[stack.count - 1]
                   } else {
                       lastChar = nil
                   }
                     continue
                }
                  if i == "}" && chr == "{" {
                    stack.removeLast()
                       if !stack.isEmpty {
                       lastChar = stack[stack.count - 1]
                   } else {
                       lastChar = nil
                   }
                      continue
                }
               return false
            }
        }
        return stack.isEmpty ? true : false
    }

