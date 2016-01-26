//
//  FunnyLogger.swift
//
//  Copyright © 2015 GuiminChu All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import Foundation

private let ESCAPE = "\u{001b}["

private let RESET_FG = ESCAPE + "fg;" // Clear any foreground color
private let RESET_BG = ESCAPE + "bg;" // Clear any background color
private let RESET    = ESCAPE + ";"   // Clear any foreground or background color

private var SYMBOL = ">"

private let verboseColor = "255,255,255" // White
private let debugColor   = "53,133,212"  // Blue
private let infoColor    = "27,129,62"   // Green
private let warningColor = "255,165,80"  // Orange
private let errorColor   = "232,48,21"   // Red

public enum LoggerStyle {
    case Finger
    case Triangle
    case Flower
}

public struct FunnyLogger {
    
    private static func log<T>(object: T, color: String, functionName: String, filePath: String, line: Int) {
        
        print("\(ESCAPE)fg\(color);\(SYMBOL)\(RESET)", "\(ESCAPE)fg\(color);\(functionName)\(RESET)", "\(ESCAPE)fg40,144,226;(\((filePath as NSString).lastPathComponent):\(line))\(RESET)")
        print("\(ESCAPE)fg\(color);\(SYMBOL)\(RESET)", "\(ESCAPE)fg\(color);\(object)\(RESET)")
    }
    
    private static func log<T>(style: LoggerStyle, object: T, color: String, functionName: String, filePath: String, line: Int) {
        switch style {
        case .Finger:
            SYMBOL = "👉"
        case .Triangle:
            SYMBOL = "▶"
        case .Flower:
            SYMBOL = "✿"
        }
        
        print("\(ESCAPE)fg\(color);\(SYMBOL)\(RESET)", "\(ESCAPE)fg\(color);\(functionName)\(RESET)", "\(ESCAPE)fg40,144,226;(\((filePath as NSString).lastPathComponent):\(line))\(RESET)")
        print("\(ESCAPE)fg\(color);\(SYMBOL)\(RESET)", "\(ESCAPE)fg\(color);\(object)\(RESET)")
    }
    
    // MARK: - VERBOSE
    
    /**
    Verbose
    
    - parameter message: The message you would like logged.
    */
    public static func v<T>(message: T, filePath: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        
        log(message, color: verboseColor, functionName: functionName, filePath: filePath, line: line)
    }
    
    /**
     Verbose
     
     - parameter style:	  The style of the symbol.
     - parameter message: The message you would like logged.
     */
    public static func v<T>(style: LoggerStyle, message: T, filePath: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        
        log(style, object: message, color: verboseColor, functionName: functionName, filePath: filePath, line: line)
    }
    
    // MARK: - DEBUG
    
    /**
    Debug
    
    - parameter message: The message you would like logged.
    */
    public static func d<T>(message: T, filePath: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        
        log(message, color: debugColor, functionName: functionName, filePath: filePath, line: line)
    }
    
    /**
     Debug
     
     - parameter style:	  The style of the symbol.
     - parameter message: The message you would like logged.
     */
    public static func d<T>(style: LoggerStyle, message: T, filePath: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        
        log(style, object: message, color: debugColor, functionName: functionName, filePath: filePath, line: line)
    }
    
    // MARK: - INFO
    
    /**
    Info
    
    - parameter message: The message you would like logged.
    */
    public static func i<T>(message: T, filePath: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        
        log(message, color: infoColor, functionName: functionName, filePath: filePath, line: line)
    }
    
    /**
     Info
     
     - parameter style:	  The style of the symbol.
     - parameter message: The message you would like logged.
     */
    public static func i<T>(style: LoggerStyle, message: T, filePath: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        
        log(style, object: message, color: infoColor, functionName: functionName, filePath: filePath, line: line)
    }
    
    // MARK: - WARNING
    
    /**
    Warning
    
    - parameter message: The message you would like logged.
    */
    public static func w<T>(message: T, filePath: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        
        log(message, color: warningColor, functionName: functionName, filePath: filePath, line: line)
    }
    
    /**
     Warning
     
     - parameter style:	  The style of the symbol.
     - parameter message: The message you would like logged.
     */
    public static func w<T>(style: LoggerStyle, message: T, filePath: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        
        log(style, object: message, color: warningColor, functionName: functionName, filePath: filePath, line: line)
    }
    
    // MARK: - ERROR
    
    /**
    Error
    
    - parameter message: The message you would like logged.
    */
    public static func e<T>(message: T, filePath: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        
        log(message, color: errorColor, functionName: functionName, filePath: filePath, line: line)
    }
    
    /**
     Error
     
     - parameter style:	  The style of the symbol.
     - parameter message: The message you would like logged.
     */
    public static func e<T>(style: LoggerStyle, message: T, filePath: String = __FILE__, functionName: String = __FUNCTION__, line: Int = __LINE__) {
        
        log(style, object: message, color: errorColor, functionName: functionName, filePath: filePath, line: line)
    }
}