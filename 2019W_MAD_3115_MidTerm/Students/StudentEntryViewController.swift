//
//  StudentEntryViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentEntryViewController: UIViewController ,UIPickerViewDelegate, UIPickerViewDataSource {

  
    var studentobj = Student()
    var courses = ["MADT", "MODT", "CSD", "WADT"]
    
    @IBOutlet weak var lblId: UITextField!
    @IBOutlet weak var lnlName: UITextField!
    @IBOutlet weak var lblEmail: UITextField!
    @IBOutlet weak var lblMarks1: UITextField!
    @IBOutlet weak var lblMarks2: UITextField!
    @IBOutlet weak var lblMarks3: UITextField!
    @IBOutlet weak var lblMarks4: UITextField!
    @IBOutlet weak var lblMarks5: UITextField!
  
    @IBOutlet weak var lblCouursePicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.lblCouursePicker.dataSource = self
        self.lblCouursePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutbtn(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let loginnVc = sb.instantiateViewController(withIdentifier: "loginVc") as! LoginViewController
        self.present(loginnVc,animated: true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
            return self.courses.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courses[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let couselist = courses[row]
        studentobj.sCrsName = couselist
        print(couselist)
        
    }
    
    @IBAction func lbldate(_ sender: UIDatePicker) {
        print(sender.date)
    }
    @IBAction func lblGender(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            studentobj.sGender = "Male"
        case 1:
            studentobj.sGender = "Female"
       
        default:
            print("default case")
        }
        
    }
    
    @IBAction func Savebtn(_ sender: UIButton) {
        if(lblId.text != nil && lnlName.text != nil && lblCouursePicker != nil && lblEmail != nil && lblMarks1 != nil && lblMarks2 != nil && lblMarks3 != nil && lblMarks4 != nil && lblMarks4 != nil){
            
        
        studentobj.sId = lblId.text!
        studentobj.SName = lnlName.text!
        studentobj.sEmailId = lblEmail.text!
        studentobj.sMarks.append(Int(lblMarks1.text!)!)
        studentobj.sMarks.append(Int(lblMarks2.text!)!)
        studentobj.sMarks.append(Int(lblMarks3.text!)!)
        studentobj.sMarks.append(Int(lblMarks4.text!)!)
        studentobj.sMarks.append(Int(lblMarks5.text!)!)
            let  totalmarks : Int = (Int(lblMarks1.text!)! + Int(lblMarks2.text!)! + Int(lblMarks3.text!)! + Int(lblMarks4.text!)! + Int(lblMarks5.text!)!)
            studentobj.stotalmarks = totalmarks
            
            let per : Float = Float(totalmarks/500)
            studentobj.spercent = Float(per)
            
            
            
        
        }
        else{
            let alertController = UIAlertController(title: "Error", message: "enter data in all fields ", preferredStyle: .alert)
            let okbuton = UIAlertAction(title: "ok", style: .default, handler: nil)
            let Cancelbuton = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
            alertController.addAction(okbuton)
            alertController.addAction(Cancelbuton)
            self.present(alertController,animated: true)
        }
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
