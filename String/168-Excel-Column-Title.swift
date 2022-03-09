//
//  168-Excel-Column-Title.swift
//  
//
//  Created by Khadija's Macbook Pro on 30/06/21.
//

import Foundation
class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        var result = ""
        var n = columnNumber
        
        while(n > 0){
            result = String(UnicodeScalar((n - 1) % 26 + 65)!) + result
            n = (n - 1) / 26
        }
        return result
    }
}
