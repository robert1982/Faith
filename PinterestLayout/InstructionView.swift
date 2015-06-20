//
//  InstructionView.swift
//  Listing Pro
//
//  Created by robert on 26/05/15.
//  Copyright (c) 2015 Shrikar Archak. All rights reserved.
//

import UIKit

class InstructionView: UIViewController {

    var pageIndex : Int = 0
    var titleText : String = ""
    var imageFile : String = ""
    var isWeb = false
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if isWeb == false {
            let imageView = UIImageView(frame: CGRectMake(0, 80, view.frame.width, view.frame.height - 150))
            imageView.image = UIImage(named: imageFile);
            imageView.contentMode = UIViewContentMode.ScaleAspectFit;
            self.view.addSubview(imageView)
        }
        else {
            let requestURL = NSURL(string:"http://www.4waytours.com/tours/1883agnew314/")
            let request = NSURLRequest(URL: requestURL!)
            let webView = UIWebView(frame: CGRectMake(0, 50, view.frame.width, view.frame.height - 50));
            webView.loadRequest(request)
            
//            let baseURL:NSURL = NSURL(fileURLWithPath: NSBundle.mainBundle().bundlePath)!
//            let htmlFile = NSBundle.mainBundle().pathForResource("index", ofType: "html")
//            
//            let localfilePath = NSBundle.mainBundle().URLForResource("index", withExtension: "html");
//            let myRequest = NSURLRequest(URL: localfilePath!);
//            webView.loadRequest(myRequest);
            self.view .addSubview(webView)
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
