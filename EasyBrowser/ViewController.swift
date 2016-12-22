//
//  ViewController.swift
//  EasyBrowser
//
//  Created by Jonathan Archille on 12/21/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBOutlet weak var webView: UIWebView!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        resignFirstResponder()
        if let textFieldInput = textField.text
        {
            if let url = URL.init(string: "https://\(textFieldInput).com")
            {
                let urlRequest = URLRequest.init(url: url)
                webView.loadRequest(urlRequest)
            }
        }
        
        return true
    }
    
    
}


