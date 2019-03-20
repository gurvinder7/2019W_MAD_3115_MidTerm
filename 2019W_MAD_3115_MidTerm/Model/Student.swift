//
//  Student.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Student {
    var sId = String()
    var SName = String()
    var sGender = String()
    var sCrsName = String()
    var sEmailId  = String()
    var Sbirth = String()
    var spercent = Float()
    var stotalmarks = Int()
    var sGrade = String()
    var sMarks = [Int]()
    init() {
        self.sId = ""
        self.SName = ""
        self.sGender = ""
        self.sCrsName = ""
        self.sEmailId = ""
        self.Sbirth = ""
        self.spercent = 0.0
        self.stotalmarks = 0
        self.sGender = ""
        self.sMarks = []
    }
    init(sId: String ,SName: String , sGender:String,sCrsName:String,sEmailId:String,Sbirth:String,spercent:Float,stotalmarks:Int,sGrade:String,sMarks:[Int]) {
        self.sId = sId
        self.SName = SName
        self.sGender = sGender
        self.sCrsName = sCrsName
        self.sEmailId = sEmailId
        self.Sbirth = Sbirth
        self.spercent = spercent
        self.stotalmarks = stotalmarks
        self.sGrade = sGrade
        self.sMarks = sMarks
        
    }
}
