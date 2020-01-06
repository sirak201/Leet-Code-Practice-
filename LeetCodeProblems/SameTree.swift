//
//  SameTree.swift
//  LeetCodeProblems
//
//  Created by Sirak on 1/6/20.
//  Copyright © 2020 Sirak. All rights reserved.
//

import Foundation


/*

Given two binary trees, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical and the nodes have the same value.

*/

  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init(_ val: Int) {
           self.val = val
          self.left = nil
          self.right = nil
       }
   }
 

    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        
       let x = trverseInOrder(p , arr : [])
       let y = trverseInOrder(q , arr : [])

        for i in 0..<x.count {
            if x[i] !=   y[i]  {
                return false
            }
        }
        
        return true
    }
    
    
    func trverseInOrder(_ p: TreeNode? , arr : [Int?]) -> [Int?] {
        var holder = arr
        guard let node = p else {  holder.append(nil);  return holder}
        holder.append(node.val)
        holder = trverseInOrder(node.left , arr : holder )
        
        holder = trverseInOrder(node.right , arr : holder )
        return holder
        
    }
    

