//
//  ViewController.swift
//  Date Picker
//
//  Created by D7703_03 on 2018. 4. 12..
//  Copyright © 2018년 D7703_03. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        timeLabel.text = formatter.string(from: myDatePicker.date)
        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
            self.updateTime()
        })
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func changeDatePicker(_ sender: Any) {
        //print("change Date Picker")
        //print(myDatePicker.date)
        // dateFormat
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        timeLabel.text = formatter.string(from: myDatePicker.date)
        //        timeLabel.text = String(describing: myDatePicker.date)
    }
    func updateTime(){
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        currentTimeLabel.text = formatter.string(from: date)
        if currentTimeLabel.text == timeLabel.text {
            view.backgroundColor = UIColor.green
            
        }
        
}
    @IBAction func Reset(_ sender: Any) {
        view.backgroundColor = UIColor.white
    }
    
}
