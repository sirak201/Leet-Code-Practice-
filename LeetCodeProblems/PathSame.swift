//
//  PathSame.swift
//  LeetCodeProblems
//
//  Created by Sirak on 1/6/20.
//  Copyright © 2020 Sirak. All rights reserved.
//

import Foundation


//Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.


func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
       
       guard let roott = root else {return false }
       if preTreverse(roott, 0 , sum) == sum {
                   return true
       } else {
           return false
       }

   }
   
   
   func preTreverse(_ root : TreeNode , _ currentSum : Int  , _ sum : Int) -> Int?{
       
       if root.left == nil && root.right == nil {
           print("I am also being called")
          let newSum = currentSum + root.val
           if newSum == sum {
             print("I three lso being called")

               return newSum
           }
       }
       
       let newSum = currentSum + root.val
       
       if root.left != nil {
           print("I am being called")
           if preTreverse(root.left! , newSum  , sum) == sum  {
               return preTreverse(root.left! , newSum  , sum)
           }
       }
       
        if root.right != nil {
          print("I am being called")
           if preTreverse(root.right! , newSum  , sum) == sum {
               return preTreverse(root.right! , newSum  , sum)
           }
       }
       
       print(newSum)
       
       
       return nil
   }
