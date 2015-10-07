//
//  Echo.swift
//  CordovaDemoPlugin
//
//  Created by Bhaidas Masule on 07/10/2015.
//
//

import Foundation

@objc(Echo) class Echo : CDVPlugin {
    
    func echo(param: CDVInvokedUrlCommand) {
        
        print("echo called!!")
        
        var message = param.arguments[0] as! String
        
        message = message.uppercaseString
        
        let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAsString: message)
        commandDelegate!.sendPluginResult(pluginResult, callbackId:param.callbackId)
        
    }
}
