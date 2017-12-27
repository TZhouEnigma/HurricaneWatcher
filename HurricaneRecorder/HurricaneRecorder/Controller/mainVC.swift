//
//  ViewController.swift
//  HurricaneRecorder
//
//  Created by chuxiang zhou on 12/10/17.
//  Copyright © 2017 chuxiang zhou. All rights reserved.
//

import UIKit
import Alamofire

class mainVC: UIViewController {

    var URLresponse = "can't reach server"
    
    var shouldRun = true
    
    var requestURL = " "
    
    @IBOutlet weak var start: UITextField!
    @IBOutlet weak var end: UITextField!
    
    @IBAction func btn_pressed(_ sender: Any) {
        
        
        requestURL = "http://hurricanerecorder.pythonanywhere.com/" + start.text! + "-" + end.text!
        getResponse{temp in
            
            let data = self.stringToArray(input: self.URLresponse)
            
            self.performSegue(withIdentifier: "ReportVC", sender: data)
        }
        
        
    }
    
    func getResponse(completion: @escaping (String) -> Void) {
        Alamofire.request(requestURL).responseString { response in
            if response.result.isSuccess {
                self.URLresponse = String(describing: (response.result.value)!)
                completion(self.URLresponse)
            }
            
        }
    }
    
    func stringToArray(input: String) -> Array<Substring> {
        let tempstr = input.replacingOccurrences(of: "[", with: "").replacingOccurrences(of: "]", with: "").replacingOccurrences(of: "'", with: "")
        let ans = tempstr.split(separator: ",")
        return ans
    }
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ReportVC{
            let timespan = start.text!+"-"+end.text!
            if let data = sender as? Array<String>{
                destination.timespan = timespan
                destination.userData = data
            }
        }
    }
    
    
    
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
   }
 
    


}

