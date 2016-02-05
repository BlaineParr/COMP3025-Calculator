//
//  ViewController.swift
//  COMP3025-Calculator
//
//  Created by Blaine Parr on 2016-02-04.
//  Copyright © 2016 Blaine Parr. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //instance variables
    var resultsText = "0"
    var posNeg = ""
    var firstNum = 0
    var secondNum = 0
    
    enum MathType
    {
        case Add
        case Sub
        case Mul
        case Div
    } //enum MathType ends
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateResultsLabel()
    {
        resultsLabel.text = posNeg + resultsText
    } //function updateResultsLabel ends
    
    
    @IBAction func zeroButtonClick(sender: UIButton)
    {
        if(resultsText != "0")
        {
            resultsText += "0"
            
            updateResultsLabel()
        } //if ends
    } //func zeroButtonClick ends
    
    
    @IBAction func oneButtonClick(sender: UIButton)
    {
        if(resultsText == "0")
        {
            resultsText = "1"
        } //if ends
        else
        {
            resultsText += "1"
        } //else ends
        
        updateResultsLabel()
    } //func oneButtonClick ends
    
    
    @IBAction func twoButtonClick(sender: UIButton)
    {
        if(resultsText == "0")
        {
            resultsText = "2"
        } //if ends
        else
        {
            resultsText += "2"
        } //else ends
        
        updateResultsLabel()
    } //func twoButtonClick ends

    @IBAction func threeButtonClick(sender: UIButton)
    {
        if(resultsText == "0")
        {
            resultsText = "3"
        } //if ends
        else
        {
            resultsText += "3"
        } //else ends
        
        updateResultsLabel()
    } //func threeButtonClick ends
    
    @IBAction func fourButtonClick(sender: UIButton)
    {
        if(resultsText == "0")
        {
            resultsText = "4"
        } //if ends
        else
        {
            resultsText += "4"
        } //else ends
        
        updateResultsLabel()
    } //func fourButtonClick ends
    
    @IBAction func fiveButtonClick(sender: UIButton)
    {
        if(resultsText == "0")
        {
            resultsText = "5"
        } //if ends
        else
        {
            resultsText += "5"
        } //else ends
        
        updateResultsLabel()
    } //func fiveButtonClick ends
    
    @IBAction func sixButtonClick(sender: UIButton)
    {
        if(resultsText == "0")
        {
            resultsText = "6"
        } //if ends
        else
        {
            resultsText += "6"
        } //else ends
        
        updateResultsLabel()
    } //func sixButtonClick ends
    
    @IBAction func sevenButtonClick(sender: UIButton)
    {
        if(resultsText == "0")
        {
            resultsText = "7"
        } //if ends
        else
        {
            resultsText += "7"
        } //else ends
        
        updateResultsLabel()
    } //func sevenButtonClick ends
    
    @IBAction func eightButtonClick(sender: UIButton)
    {
        if(resultsText == "0")
        {
            resultsText = "8"
        } //if ends
        else
        {
            resultsText += "8"
        } //else ends
        
        updateResultsLabel()
    } //func eightButtonClick ends
    
    @IBAction func nineButtonClick(sender: UIButton)
    {
        if(resultsText == "0")
        {
            resultsText = "9"
        } //if ends
        else
        {
            resultsText += "9"
        } //else ends
        
        updateResultsLabel()
    } //func nineButtonClick ends
}

