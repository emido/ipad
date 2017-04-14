//
//  DetailViewController.swift
//  iPadApplicationAssignment
//
//  Created by A on 3/20/17.
//  Copyright © 2017 Alma. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var webView: UIWebView!

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem
        {
            if let url = URL(string: detail["url"].stringValue)
            {
                let request = URLRequest(url: url)
                webView!.loadRequest(request)
            }
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.webView.scrollView.isScrollEnabled = true
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: JSON?
//    {
//        didSet {
//            // Update the view.
//            self.configureView()
//        }
//    }


}

