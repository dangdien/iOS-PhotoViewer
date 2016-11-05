//
//  InfoViewController.swift
//  PhotoViewerr
//
//  Created by Dien Dang on 7/14/16.
//  Copyright © 2016 Dien Dang. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var detailsLabel: UILabel!
    @IBAction func OkButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    var currentPhoto : Photo?
    var tesst: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsLabel.text = currentPhoto?.notes

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
