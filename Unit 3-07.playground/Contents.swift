//Created by: Alireza Teimoori
//Created on: 16 Oct 2017
//Created for: ICS3UR-1
//Lesson: Unit 3-05
//this app calculates the factorial for userNumber

import UIKit
// comment out line below and one at bottom, to make code work in Xcode
import PlaygroundSupport

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var instructionLabel : UILabel!
    var userInputTextField : UITextField!
    var calculateButton : UIButton!
    var answerLabel : UILabel!
    
    override func viewDidLoad() {
        // create the UIView
        
        let view = UIView()
        view.backgroundColor = UIColor.white
        self.view = view
        
        // create all the UIElements
        
        
        
        instructionLabel = UILabel(frame: CGRect(x: 250, y: 50, width: 500, height: 50))
        instructionLabel.text = "enter a number greater than 0 to calculate its factorial"
        view.addSubview(instructionLabel)
        
        userInputTextField = UITextField(frame: CGRect(x: 360, y: 150, width: 200, height: 50))
        userInputTextField.borderStyle = UITextBorderStyle.roundedRect
        userInputTextField.placeholder = "enter here"
        view.addSubview(userInputTextField)
        
        
        calculateButton = UIButton(frame: CGRect(x: 410, y: 230, width: 100, height: 50))
        calculateButton.setTitle("Calculate !", for: UIControlState.normal)
        calculateButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        calculateButton.addTarget(self, action: #selector(CheckTheNumber), for: UIControlEvents.touchUpInside)
        view.addSubview(calculateButton)
        
        
        answerLabel = UILabel(frame: CGRect(x: 300, y: 350, width: 500, height: 50))
        answerLabel.text = nil
        view.addSubview(answerLabel)
        
    }
    
    @objc func CheckTheNumber() {
        // calculate the person's height
        
        var userInput : Int =  Int(userInputTextField.text!)!
        
        if userInput >= 0{
            var answer = 1
            for counter in 1 ... userInput {
                answer = answer * counter
            }
            answerLabel.text = "The answer is \(answer)"
        }else{
            answerLabel.text = "enter a number greater than or equal to 0" 
        }
    }
    // this is for when code is moved to Xcode, the Status bar will be removed
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// need to also comment this out to make work in Xcode
PlaygroundPage.current.liveView = ViewController()



