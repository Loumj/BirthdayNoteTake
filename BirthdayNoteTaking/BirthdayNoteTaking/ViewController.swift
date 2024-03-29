//
//  ViewController.swift
//  BirthdayNoteTaking
//
//  Created by  on 3/29/24.
//






import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var birthdayText: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "Name")
        
        let storedBirthday = UserDefaults.standard.object(forKey: "Birthday")
        
        if let newName = storedName as? String{
            nameLabel.text = "Name: \(newName)"
        }
        
        if let newBirthday = storedBirthday as? String{
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
        
        
    }

    
    @IBAction func savedClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameText.text!,forKey: "Name")
        
        UserDefaults.standard.set(birthdayText.text!,forKey: "Birthday")
        
        nameLabel.text = "Name: \(nameText.text!)"
        
        birthdayLabel.text = "Birthday: \(birthdayText.text!)"
        
        
    }
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "Name")
        let storedBirthday = UserDefaults.standard.object(forKey: "Birthday")
        
        if (storedName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "Name")
            nameLabel.text = "Name: "
        }
        
        if (storedBirthday as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "Birthday")
            birthdayLabel.text = "Birthday: "
        }
        
    }
    
}

