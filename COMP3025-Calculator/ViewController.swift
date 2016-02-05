//
//  ViewController.swift
//  COMP3025-Calculator
//
//  Created by Blaine Parr on 2016-02-04.
//  Copyright © 2016 Blaine Parr. All rights reserved.
//
//  Purpose
//  This app is a simple calculator with add, subtract, division, multiplication and percentage functions.

import UIKit

class ViewController: UIViewController
{
    //instance variables
    var resultsText = "0"
    var posNeg = ""
    var firstNum = 0.0
    var secondNum = 0.0
    var mathType = -1
    var isFirstNum = true
    var shouldReset = false
    var forceReset = false
    
    //constants
    let ADD = 0
    let SUB = 1
    let MUL = 2
    let DIV = 3
    
    let formatter = NSNumberFormatter()
    
    //Outlets
    @IBOutlet weak var resultsLabel: UILabel!
    
    
    //Protected Methods//////////////////////////////////////////////////////////////////////////////////////////////
    /*
     * This function updates the resultsLabel with the resultText and whether the number is positive or negative
     * after the user inputs an action.
     */
    func updateResultsLabel()
    {
        resultsLabel.text = posNeg + resultsText
    } //func updateResultsLabel ends
    
    /*
     * This function converts the the resultsText to a decimal value and stores it either as the firstNum or the
     * secondNum.
     */
    func stringToNum()
    {
        //if the number is the first one
        if(isFirstNum)
        {
            //store the resultsText as a double in firstNum
            firstNum = (resultsText as NSString).doubleValue
            
            //if the number is negative, multiply it by negative 1, then reset posNeg to ""
            if(posNeg == "-")
            {
                firstNum *= -1
                
                posNeg = ""
            } //if ends
            
            isFirstNum = false //set isFirstNum to false
            
            resultsText = "0" //set resultsText to "0"
            
            updateResultsLabel() //update the resultsLabel
        } //if ends
        //if the number is the second one
        else
        {
            //store resultsText as a double in secondNum
            secondNum = (resultsText as NSString).doubleValue
            
            //if the number is negative, multiply it by negative1, then reset posNeg to ""
            if(posNeg == "-")
            {
                secondNum *= -1
                
                posNeg = ""
            } //if ends
            
            isFirstNum = true //set isFirstNum to true
        } //else ends
    } //func stringToNum ends
    
    //Button Methods////////////////////////////////////////////////////////////////////////////////////////////////
    /*
     * This function completes an action when the zeroButton is clicked
     */
    @IBAction func zeroButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            //if the calculator should reset
            if(shouldReset)
            {
                clearButtonClick(sender) //clear the calculator
                shouldReset = false //the calculator no longer should reset
            } //if ends
            
            //if results text isn't 0, append a 0
            if(resultsText != "0")
            {
                resultsText += "0"
                
                updateResultsLabel() //update the resultsLabel
            } //if ends
        } //if ends
    } //func zeroButtonClick ends
    
    /*
     * This function completes an action when the oneButton is clicked
     */
    @IBAction func oneButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            //if the calculator should reset
            if(shouldReset)
            {
                clearButtonClick(sender) //clear the calculator
                shouldReset = false //the calculator no longer should reset
            } //if ends
            
            //if the resultsText is a 0, set it to 1
            if(resultsText == "0")
            {
                resultsText = "1"
            } //if ends
            //otherwise append a 1
            else
            {
                resultsText += "1"
            } //else ends
        } //if ends
        
        updateResultsLabel() //update the resultsLabel
    } //func oneButtonClick ends
    
    /*
     * This function completes an action when the twoButton is clicked
     */
    @IBAction func twoButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            //if the calculator should reset
            if(shouldReset)
            {
                clearButtonClick(sender) //clear the calculator
                shouldReset = false //the calculator no longer should reset
            } //if ends
            
            //if the resultsText is a 0, set it to 2
            if(resultsText == "0")
            {
                resultsText = "2"
            } //if ends
            //otherwise append a 2
            else
            {
                resultsText += "2"
            } //else ends
        } //if ends
        
        updateResultsLabel() //update the resultsLabel
    } //func twoButtonClick ends
    
    /*
     * This function completes an action when the threeButton is clicked
     */
    @IBAction func threeButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            //if the calculator should reset
            if(shouldReset)
            {
                clearButtonClick(sender) //clear the calculator
                shouldReset = false //the calculator no longer should reset
            } //if ends
            
            //if the resultsText is a 0, set it to 3
            if(resultsText == "0")
            {
                resultsText = "3"
            } //if ends
            //otherwise append a 3
            else
            {
                resultsText += "3"
            } //else ends
        }
        
        updateResultsLabel() //update the resultsLabel
    } //func threeButtonClick ends
    
    /*
     * This function completes an action when the fourButton is clicked
     */
    @IBAction func fourButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            //if the calculator should reset
            if(shouldReset)
            {
                clearButtonClick(sender) //clear the calculator
                shouldReset = false //the calculator should no longer reset
            } //if ends
            
            //if the resultsText is a 0, set it to 4
            if(resultsText == "0")
            {
                resultsText = "4"
            } //if ends
            //otherwise append a 4
            else
            {
                resultsText += "4"
            } //else ends
        } //if ends
        
        updateResultsLabel() //update the resultsLabel
    } //func fourButtonClick ends
    
    /*
     * This function completes an action when the fiveButton is clicked
     */
    @IBAction func fiveButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            //if the calculator should reset
            if(shouldReset)
            {
                clearButtonClick(sender) //clear the calculator
                shouldReset = false //the calculator should no longer reset
            } //if ends
            
            //if the resultsText is a 0, set it to 5
            if(resultsText == "0")
            {
                resultsText = "5"
            } //if ends
            //otherwise append a 5
            else
            {
                resultsText += "5"
            } //else ends
        } //if ends
        
        updateResultsLabel() //update the resultsLabel
    } //func fiveButtonClick ends
    
    /*
     * This function completes an action when the sixButton is clicked
     */
    @IBAction func sixButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            //if the calculator should reset
            if(shouldReset)
            {
                clearButtonClick(sender) //clear the calculator
                shouldReset = false //the calculator should no longer reset
            } //if ends
            
            //if the resultsText is a 0, set it to 6
            if(resultsText == "0")
            {
                resultsText = "6"
            } //if ends
            //otherwise append a 6
            else
            {
                resultsText += "6"
            } //else ends
        } //if ends
        
        updateResultsLabel() //update the resultsLabel
    } //func sixButtonClick ends
    
    /*
     * This function completes an action when the sevenButton is clicked
     */
    @IBAction func sevenButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            //if the calculator should reset
            if(shouldReset)
            {
                clearButtonClick(sender) //clear the calculator
                shouldReset = false //the calculator should no longer reset
            } //if ends
            
            //if the resultsText is a 0, set it to 7
            if(resultsText == "0")
            {
                resultsText = "7"
            } //if ends
            //otherwise append a 7
            else
            {
                resultsText += "7"
            } //else ends
        } //if ends
        
        updateResultsLabel() //update the resultsLabel
    } //func sevenButtonClick ends
    
    /*
     * This function completes an action when the eightButton is clicked
     */
    @IBAction func eightButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            //if the calculator should reset
            if(shouldReset)
            {
                clearButtonClick(sender) //clear the calculator
                shouldReset = false //the calculator should no longer reset
            } //if ends
            
            //if the resultsText is a 0, set it to 8
            if(resultsText == "0")
            {
                resultsText = "8"
            } //if ends
            //otherwise append a 8
            else
            {
                resultsText += "8"
            } //else ends
        } //if ends
        
        updateResultsLabel() //update the resultsLabel
    } //func eightButtonClick ends
    
    /*
     * This function completes an action when the nineButton is clicked
     */
    @IBAction func nineButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            //if the calculator should reset
            if(shouldReset)
            {
                clearButtonClick(sender) //clear the calculator
                shouldReset = false //the calculator should no longer reset
            } //if ends
            
            //if the resultsText is a 0, set it to 9
            if(resultsText == "0")
            {
                resultsText = "9"
            } //if ends
            //otherwise append a 9
            else
            {
                resultsText += "9"
            } //else ends
        } //if ends
        
        updateResultsLabel() //update the resultsLabel
    } //func nineButtonClick ends
    
    /*
     * This function adds a decimal place to the number if one isn't already present.
     */
    @IBAction func decimalButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            //if there is no decimal in resultsText add one
            if(resultsText.rangeOfString(".") == nil)
            {
                resultsText += "."
                
                updateResultsLabel() //update the resultsLabel
            } //if ends
        } //if ends
    } //func decimalButtonClick ends
    
    /*
     * This function clears the calculator and resets the variables to their default values.
     */
    @IBAction func clearButtonClick(sender: UIButton)
    {
        resultsText = "0"
        firstNum = 0
        secondNum = 0
        isFirstNum = true
        posNeg = ""
        forceReset = false
        
        updateResultsLabel() //update the resultsLabel
    } //func clearButtonClick
    
    /*
     * This function switches the resultsLabel between a negative and positive value.
     */
    @IBAction func posNegButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            //prevent the user from making 0 negative
            if((resultsText as NSString).doubleValue != 0)
            {
                //if the number was positive, make it negative and vice-versa
                if(posNeg == "")
                {
                    posNeg = "-"
                } //if ends
                else
                {
                    posNeg = ""
                } //else ends
            } //if ends
        } //if ends
        
        updateResultsLabel() //update the resultsLabel
    } //func posNegButtonClick ends
    
    /*
     * This function converts the second number to a percentage of the first.
     */
    @IBAction func percentButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            //make sure the user is on the second number and the firstNumber isn't 0
            if(!isFirstNum && firstNum != 0)
            {
                stringToNum() //convert the resultsText to a double
                
                isFirstNum = false //set is firstNum back to false
                
                secondNum /= 100 //divide the number by 100 to get a percentage
                
                secondNum *= firstNum //multiply the secondNum with the first to get that percentage
                
                resultsText = String(secondNum) //set resultsText to the value of secondNum
                
                updateResultsLabel() //update the resultsLabel
                
                shouldReset = true //the calculator should reset if another number is pressed
            } //if ends
            //clear the calculator if the above if condition wasn't met
            else
            {
                clearButtonClick(sender)
            } //else ends
        } //if ends
    } //func percentButtonClick ends
    
    /*
     * This function sets the mathType to division.
     */
    @IBAction func divideButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            shouldReset = false //should reset is now false
            
            //if on the firstNum, convert it to a double
            if(isFirstNum)
            {
                stringToNum()
            } //if ends
            
            mathType = DIV
        } //if ends
    } //func divideButtonClick ends
    
    /*
     * This function sets the mathType to multiplication.
     */
    @IBAction func multiplyButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            shouldReset = false //should reset is now false
            
            //if on the firstNum, convert it to a double
            if(isFirstNum)
            {
                stringToNum()
            } //if ends
            
            mathType = MUL
        } //if ends
    } //func multiplyButtonClick ends
    
    /*
     * This function sets the mathType to subtraction.
     */
    @IBAction func subtractButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            shouldReset = false //should reset is now false
            
            //if on the firstNum, convert it to a double
            if(isFirstNum)
            {
                stringToNum()
            } //if ends
            
            mathType = SUB
        } //if ends
    } //subtractButtonClick ends
    
    /*
     * This function sets the mathType to addition.
     */
    @IBAction func addButtonClick(sender: UIButton)
    {
        //if the calculator doesn't require a reset
        if(!forceReset)
        {
            shouldReset = false //should reset is now false
            
            //if on the firstNum, convert it to a double
            if(isFirstNum)
            {
                stringToNum()
            } //if ends
            
            mathType = ADD
        } //if ends
    } //addButtonClick ends
    
    /*
     * This function calculates the value of the two numbers through addition, subtraction, multiplication or
     * division.
     */
    @IBAction func calculateButtonClick(sender: UIButton)
    {
        //if on the secondNum
        if(!isFirstNum)
        {
            stringToNum() //convert secondNum to a double
            
            var err = false //create an error variable
            var total = 0.0 //create a total variable
            
            //complete the operation depending on the mathType
            switch(mathType)
            {
            case ADD: total = firstNum + secondNum
                break
            case SUB: total = firstNum - secondNum
                break
            case MUL: total = firstNum * secondNum
                break
            case DIV:
                //prevent the user from dividing by 0
                if(secondNum != 0)
                {
                    total = firstNum / secondNum
                } //if ends
                //set err to true if they try
                else
                {
                    err = true
                } //else ends
                break
            default : break
            } //switch ends
            
            //if there was no error
            if(!err)
            {
                formatter.minimumFractionDigits = 0 //minium of 0 decimal digits, in case there are none
                formatter.maximumFractionDigits = 5 //maximum of 5 places for decimal number digits
                
                resultsText = formatter.stringFromNumber(total)! //format the resultsText accordingly
            } //if ends
            //if there was an error, set the text to undefined, and force the calculator to need a reset
            else
            {
                resultsText = "Undefined"
                
                forceReset = true
            } //else ends
            
            shouldReset = true //set shouldReset to true
            
            updateResultsLabel() //update the resultsLabel
        } //if ends
    } //calculateButtonClick ends
} //class ViewController ends

