//
//  NetSheetViewController.swift
//  FaithEstate
//
//  Created by robert on 14/05/15.
//  Copyright (c) 2015 Shrikar Archak. All rights reserved.
//

import UIKit

class NetSheetViewController: UIViewController {

    var pageIndex : Int = 0
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Net Sheet"
//        let webView = UIWebView(frame: CGRectMake(0, 0, view.frame.width, view.frame.height));
        let baseURL:NSURL = NSURL(fileURLWithPath: NSBundle.mainBundle().bundlePath)!
        let htmlFile = NSBundle.mainBundle().pathForResource("index", ofType: "html")
//        let htmlString = NSString(contentsOfFile: htmlFile!, encoding: NSUTF8StringEncoding, error: nil)
        
        let localfilePath = NSBundle.mainBundle().URLForResource("index", withExtension: "html");
        let myRequest = NSURLRequest(URL: localfilePath!);
        webView.loadRequest(myRequest);
//        let url = NSBundle.mainBundle().URLForResource("index", withExtension:"html")
        self.view .addSubview(webView)
//        webView.loadHTMLString(htmlString, baseURL: baseURL)
//        NSURL *baseURL = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@",[[NSBundle mainBundle] bundlePath]]];
//        NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"loginProtocol" ofType:@"html"];
//        NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
//        [_myBrowser loadHTMLString:htmlString baseURL:baseURL];
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
