//
//  ViewController.swift
//  UIDatePickerView
//
//  Created by UrataHiroki on 2021/09/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let datePickerView = {() -> UIDatePicker in
            
            let datePicker = UIDatePicker()
            datePicker.center = view.center
            
            datePicker.backgroundColor = .tertiarySystemGroupedBackground
            datePicker.datePickerMode = .date  //選択肢の内容
            datePicker.locale = Locale(identifier: "ja_JP")  //表示する地域
            
//            datePicker.date = {() -> Date in
//
//                            let dateFormat = DateFormatter()
//                            dateFormat.locale = Locale(identifier: "ja_JP")
//                            dateFormat.dateStyle = .medium
//                            dateFormat.timeStyle = .none
//                            let nowTime = Date()
//
//                            return nowTime
//                        }()
            datePicker.date = Date()
            
//            datePicker.minimumDate =  {() -> Date in
//
//                            let dateFormat = DateFormatter()
//                            dateFormat.locale = Locale(identifier: "ja_JP")
//                            dateFormat.dateStyle = .medium
//                            dateFormat.timeStyle = .none
//                            let nowTime = Date()
//
//                            return nowTime
//                        }()
            
            datePicker.minimumDate = Date()
            
//            datePicker.maximumDate = {() -> Date in
//
//                            let dateFormat = DateFormatter()
//                            dateFormat.locale = Locale(identifier: "ja_JP")
//                            dateFormat.dateStyle = .medium
//                            dateFormat.timeStyle = .none
//                            let oneWeekLaterTimeInterval = Date(timeInterval: 60 * 60 * 24 * 7, since: Date())
//
//                            return oneWeekLaterTimeInterval
//                        }()
            
            datePicker.maximumDate = Date(timeInterval: 60 * 60 * 24 * 7, since: Date())
            
            return datePicker
        }()
        
        
        
        view.addSubview(datePickerView)
        
    }


}

