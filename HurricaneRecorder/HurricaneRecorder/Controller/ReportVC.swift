//
//  ReportVC.swift
//  HurricaneRecorder
//
//  Created by chuxiang zhou on 12/12/17.
//  Copyright © 2017 chuxiang zhou. All rights reserved.
//



import UIKit
import Alamofire

class ReportVC: UIViewController {
    
   
    @IBOutlet weak var summary: UILabel!
    private var _userData:Array<String>!
    private var _timespan:String!
    @IBOutlet weak var GenRep: UITextView!
    
    @IBAction func backBtnPressed(_ sender: Any) {
         dismiss(animated: false, completion: nil)
    }
    var userData:Array<String>{
        
        get{
            return _userData
        }set{
            _userData = newValue
        }
    }
    
    var timespan:String{
        
        get{
            return _timespan
        }set{
            _timespan = newValue
        }
        
    }
    
    
    
    override func viewDidLoad() {
        
      //  report.text = String(describing: userData)
        print(userData[2])
        var text = ""
        var hurricane_count:Int = 0
        var landfall_count:Int = 0
        
        for item in userData{
        
            if !item.contains("0") && !item.contains("1") && !item.contains("2") && !item.contains("3") && !item.contains("4") && !item.contains("4") && !item.contains("5") && !item.contains("6") && !item.contains("7") && !item.contains("8") && !item.contains("9"){
                text = text + "\n\nHurricane name:"+String(describing: item)+"\n\n"
                hurricane_count += 1
            }
            else if item.count > 4 {
                
                text = text + "Date of landfall:" + String(describing: item) + "\n"
                landfall_count = landfall_count+1
            }
            else{
                text = text + "Max speed:" + String(describing: item) + "\n"
            }
            
        }
        
        GenRep.text = text
        GenRep.textColor = .white
        GenRep.layer.cornerRadius = 10
        
        summary.text = "Between year "+timespan+", " + String(describing: hurricane_count) + " hurricanes have resulted in  " + String(describing: landfall_count) + " landfalls in the state of Florida."
        
        
        
        super.viewDidLoad()
    }
    
    
}
