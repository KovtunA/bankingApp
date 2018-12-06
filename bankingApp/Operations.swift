//
//  Different.swift
//  bankingApp
//
//  Created by Anastasia on 12/6/18.
//  Copyright © 2018 Anastasia. All rights reserved.
//

import Foundation


    
func addMoney(currentAmount: Double, changes: Double) -> Double{
    let currentAmount = currentAmount + changes
    return currentAmount
}

func withdrowMoney(currentAmount: Double, changes: Double) -> Double{
    let currentAmount = currentAmount - changes
    return currentAmount
}

func chooseOperation() -> Int {
    print("Choose the operation: \n 1 - add money \n 2 - withdrow money")
    let operationOpt = readLine()
    guard let operationStr = operationOpt, let operation = Int(operationStr) else {
        print("Something went wrong with the optioanl operation")
        abort()
    }
    return operation
}
