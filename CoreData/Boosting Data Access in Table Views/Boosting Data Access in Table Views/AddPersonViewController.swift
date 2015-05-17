//
//  AddPersonViewController.swift
//  Boosting Data Access in Table Views
//
//  Created by Domenico Solazzo on 17/05/15.
//  License MIT
//

import UIKit

class AddPersonViewController: UIViewController {
    //- MARK: Private variables
    var textFieldFirstName: UITextField!
    var textFieldLastName: UITextField!
    var textFieldAge: UITextField!
    var barButtonAdd: UIBarButtonItem!

    //- ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "New Person"
        
        var textFieldRect = CGRect(x: 20,
            y: 80,
            width: view.bounds.size.width - 40,
            height: 31)
        
        textFieldFirstName = UITextField(frame: textFieldRect)
        textFieldFirstName.placeholder = "First Name"
        textFieldFirstName.borderStyle = .RoundedRect
        textFieldFirstName.autoresizingMask = .FlexibleWidth
        textFieldFirstName.contentVerticalAlignment = .Center
        view.addSubview(textFieldFirstName)
        
        textFieldRect.origin.y += 37
        textFieldLastName = UITextField(frame: textFieldRect)
        textFieldLastName.placeholder = "Last Name"
        textFieldLastName.borderStyle = .RoundedRect
        textFieldLastName.autoresizingMask = .FlexibleWidth
        textFieldLastName.contentVerticalAlignment = .Center
        view.addSubview(textFieldLastName)
        
        textFieldRect.origin.y += 37
        textFieldAge = UITextField(frame: textFieldRect)
        textFieldAge.placeholder = "Age"
        textFieldAge.borderStyle = .RoundedRect
        textFieldAge.autoresizingMask = .FlexibleWidth
        textFieldAge.keyboardType = .NumberPad
        textFieldAge.contentVerticalAlignment = .Center
        view.addSubview(textFieldAge)
        
        barButtonAdd = UIBarButtonItem(title: "Add",
            style: .Plain,
            target: self,
            action: "createNewPerson:")
        
        navigationItem.rightBarButtonItem = barButtonAdd
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        textFieldFirstName.becomeFirstResponder()
    }
}