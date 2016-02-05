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
    var firstNum = 0.0
    var secondNum = 0.0
    var total = 0.0
    var mathType = -1
    var isFirstNum = true
    var shouldReset = false
    
    //constants
    let ADD = 0
    let SUB = 1
    let MUL = 2
    let DIV = 3
    
    let formatter = NSNumberFormatter()
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    
    //Protected Methods//////////////////////////////////////////////////////////////////////////////////////////////
    func updateResultsLabel()
    {
        resultsLabel.text = posNeg + resultsText
    } //func updateResultsLabel ends
    
    func stringToNum()
    {
        if(isFirstNum)
        {
            firstNum = (resultsText as NSString).doubleValue
            
            if(posNeg == "-")
            {
                firstNum *= -1
                
                posNeg = ""
            } //if ends
            
            isFirstNum = false
            
            resultsText = "0"
            
            updateResultsLabel()
        } //if ends
        else
        {
            secondNum = (resultsText as NSString).doubleValue
            
            if(posNeg == "-")
            {
                secondNum *= -1
                
                posNeg = ""
            } //if ends
            
            isFirstNum = true
        } //else ends
    } //func stringToNum ends
    
    //Button Methods////////////////////////////////////////////////////////////////////////////////////////////////
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
        if(shouldReset)
        {
            clearButtonClick(sender)
            shouldReset = false
        } //if ends
        
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
        if(shouldReset)
        {
            clearButtonClick(sender)
            shouldReset = false
        } //if ends
        
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
        if(shouldReset)
        {
            clearButtonClick(sender)
            shouldReset = false
        } //if ends
        
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
        if(shouldReset)
        {
            clearButtonClick(sender)
            shouldReset = false
        } //if ends
        
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
        if(shouldReset)
        {
            clearButtonClick(sender)
            shouldReset = false
        } //if ends
        
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
        if(shouldReset)
        {
            clearButtonClick(sender)
            shouldReset = false
        } //if ends
        
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
        if(shouldReset)
        {
            clearButtonClick(sender)
            shouldReset = false
        } //if ends
        
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
        if(shouldReset)
        {
            clearButtonClick(sender)
            shouldReset = false
        } //if ends
        
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
        if(shouldReset)
        {
            clearButtonClick(sender)
            shouldReset = false
        } //if ends
        
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
    
    @IBAction func decimalButtonClick(sender: UIButton)
    {
        if(resultsText.rangeOfString(".") == nil)
        {
            resultsText += "."
            
            updateResultsLabel()
        } //if ends
    } //func decimalButtonClick ends
    
    @IBAction func clearButtonClick(sender: UIButton)
    {
        resultsText = "0"
        firstNum = 0
        secondNum = 0
        isFirstNum = true
        posNeg = ""
        
        updateResultsLabel()
    } //func clearButtonClick
    
    @IBAction func posNegButtonClick(sender: UIButton)
    {
        if(posNeg == "")
        {
            posNeg = "-"
        } //if ends
        else
        {
            posNeg = ""
        } //else ends
        
        updateResultsLabel()
    } //func posNegButtonClick ends
    
    
    @IBAction func percentButtonClick(sender: UIButton)
    {
        if(!isFirstNum && firstNum != 0)
        {
            stringToNum()
            
            isFirstNum = false
            
            secondNum /= 100
            
            secondNum *= firstNum
            
            resultsText = String(secondNum)
            
            updateResultsLabel()
            
            shouldReset = true
        } //if ends
        
        else
        {
            clearButtonClick(sender)
        } //else ends
    } //func percentButtonClick ends
    
    @IBAction func divideButtonClick(sender: UIButton)
    {
        shouldReset = false
        
        if(isFirstNum)
        {
            stringToNum()
        } //if ends
        
        mathType = DIV
    } //func divideButtonClick ends
    
    @IBAction func multiplyButtonClick(sender: UIButton)
    {
        shouldReset = false
        
        if(isFirstNum)
        {
            stringToNum()
        } //if ends
        
        mathType = MUL
    } //func multiplyButtonClick ends
    
    @IBAction func subtractButtonClick(sender: UIButton)
    {
        shouldReset = false
        
        if(isFirstNum)
        {
            stringToNum()
        } //if ends
        
        mathType = SUB
    } //subtractButtonClick ends
    
    @IBAction func addButtonClick(sender: UIButton)
    {
        shouldReset = false
        
        if(isFirstNum)
        {
            stringToNum()
        } //if ends
        
        mathType = ADD
    } //addButtonClick ends
    
    @IBAction func calculateButtonClick(sender: UIButton)
    {
        if(!isFirstNum)
        {
            stringToNum()
            
            var err = false
        
            switch(mathType)
            {
            case ADD: total = firstNum + secondNum
                break
            case SUB: total = firstNum - secondNum
                break
            case MUL: total = firstNum * secondNum
                break
            case DIV:
                if(secondNum != 0)
                {
                    total = firstNum / secondNum
                } //if ends
                else
                {
                    err = true
                } //else ends
                break
            default : break
            } //switch ends
            
            if(!err)
            {
                formatter.minimumFractionDigits = 0
                formatter.maximumFractionDigits = 5
                
                resultsText = formatter.stringFromNumber(total)!
            } //if ends
            else
            {
                resultsText = "Undefined"
            } //else ends
            
            shouldReset = true
            
            updateResultsLabel()
        } //if ends
    } //calculateButtonClick ends
    
}

