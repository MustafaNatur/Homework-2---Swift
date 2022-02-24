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
        
        sliderValueRed.value = const
        
        slierValueGreen.value = const
        
        slierValueBlue.value = const
        
        labelValueSliderRed.text = "\(Int(const))"
        
        labelValueSliderGreen.text = "\(Int(const))"

        labelValueSliderBlue.text = "\(Int(const))"

        
        ViewForColor.backgroundColor = UIColor(red: CGFloat(const)/255, green: CGFloat(const)/255, blue: CGFloat(const)/255, alpha: 1.0)
        


        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var labelValueSliderRed: UILabel!
    
    @IBOutlet weak var labelValueSliderGreen: UILabel!
    
    @IBOutlet weak var labelValueSliderBlue: UILabel!
    
    @IBOutlet weak var ViewForColor: UIView!
    
    
    @IBOutlet weak var sliderValueRed: UISlider!
    
    @IBOutlet weak var slierValueGreen: UISlider!
    
    @IBOutlet weak var slierValueBlue: UISlider!
    
    
    
    @IBAction func sliderRed(_ sender: Any) {
        labelValueSliderRed.text = "\(Int(sliderValueRed.value))"
        change1lslider()
    }
    
    
    @IBAction func sliderGreen(_ sender: Any) {
        labelValueSliderGreen.text = "\(Int(slierValueGreen.value))"
        change1lslider()
    }
    
    @IBAction func sliderBlue(_ sender: Any) {
        labelValueSliderBlue.text = "\(Int(slierValueBlue.value))"
        change1lslider()
    }
    
    func change1lslider(){
        ViewForColor.backgroundColor = UIColor(red: CGFloat(sliderValueRed.value)/255, green: CGFloat(slierValueGreen.value)/255, blue: CGFloat(slierValueBlue.value)/255, alpha: 1.0)
    }
    
    
    @IBAction func ButtonMin(_ sender: Any) {
        sliderValueRed.value = 0
        slierValueGreen.value = 0
        slierValueBlue.value = 0
        setcolor()
    }
    
    
    @IBAction func ButtonMedium(_ sender: Any) {
        sliderValueRed.value = 127
        slierValueGreen.value = 127
        slierValueBlue.value = 127
        setcolor()
    }
    
    func setcolor(){
        labelValueSliderRed.text = "\(Int(sliderValueRed.value))"
        labelValueSliderGreen.text = "\(Int(slierValueGreen.value))"
        labelValueSliderBlue.text = "\(Int(slierValueBlue.value))"
        change1lslider()
    }
    
    @IBAction func ButtonMin1(_ sender: Any) {
        
    }
    @IBAction func ButtonMax(_ sender: Any) {
        sliderValueRed.value = 255
        slierValueGreen.value = 255
        slierValueBlue.value = 255
        setcolor()
        
    }
}

