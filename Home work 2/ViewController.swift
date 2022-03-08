//
//  ViewController.swift
//  Home work 2
//
//  Created by Мустафа Натур on 24.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let const = ( sliderValueRed.maximumValue - sliderValueRed.minimumValue)/2
        
        setConstValue(value: const) // set const for sliderValue
        changeViewValue() // ViewColor -> sliderValue
    }


    @IBOutlet weak var labelValueSliderRed: UILabel!
    @IBOutlet weak var labelValueSliderGreen: UILabel!
    @IBOutlet weak var labelValueSliderBlue: UILabel!
    
    @IBOutlet weak var ViewForColor: UIView!
    
    @IBOutlet weak var sliderValueRed: UISlider!
    @IBOutlet weak var sliderValueGreen: UISlider!
    @IBOutlet weak var sliderValueBlue: UISlider!
    
    func changeViewValue(){
        labelValueSliderRed.text = "\(Int(sliderValueRed.value))"
        labelValueSliderGreen.text = "\(Int(sliderValueGreen.value))"
        labelValueSliderBlue.text = "\(Int(sliderValueBlue.value))"
        ViewForColor.backgroundColor = UIColor(red: CGFloat(sliderValueRed.value)/255, green: CGFloat(sliderValueGreen.value)/255, blue: CGFloat(sliderValueBlue.value)/255, alpha: 1.0)
    }
    
    func setConstValue(value: Float){
        sliderValueRed.value = value
        sliderValueGreen.value = value
        sliderValueBlue.value = value
        changeViewValue()
    }
    
    @IBAction func sliderRed(_ sender: Any) {
        labelValueSliderRed.text = "\(Int(sliderValueRed.value))"
        changeViewValue()
    }
    
    @IBAction func sliderGreen(_ sender: Any) {
        labelValueSliderGreen.text = "\(Int(sliderValueGreen.value))"
        changeViewValue()
    }
    
    @IBAction func sliderBlue(_ sender: Any) {
        labelValueSliderBlue.text = "\(Int(sliderValueBlue.value))"
        changeViewValue()
    }
    
    @IBAction func ButtonMin(_ sender: Any) {
        setConstValue(value: 0)
    }
    
    @IBAction func ButtonMedium(_ sender: Any) {
        setConstValue(value: 127)
    }
    
    @IBAction func ButtonMax(_ sender: Any) {
        setConstValue(value: 255)
    }
}

