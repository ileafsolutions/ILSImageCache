//
//  ViewController.swift
//  ImageDownloader
//
//  Created by Vivek iLeaf on 6/13/17.
//  Copyright © 2017 Vivek iLeaf. All rights reserved.
//

import UIKit
import ILSImageCache

class ViewController: UIViewController {
    let imageUrl = "http://www.planwallpaper.com/static/images/0438f69c69a16398b5a96e3ad8e85b00_large.jpeg"
    @IBOutlet weak var imageViewdwn: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        ILSImageCache.loadImageusingCache(withUrl: imageUrl) { (status, image) in
            guard let outPutimage = image
            else
            {
                self.imageViewdwn.image = #imageLiteral(resourceName: "placeholder")
            return
            }
            self.imageViewdwn.image = outPutimage.resizedImage(toWidth: self.imageViewdwn.frame.size.width)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func clearCache(_ sender: Any)
    {
        ILSImageCache.removeImageCaches()
    }
    
    @IBAction func listView(_ sender: UIButton)
    {
        let listView = self.storyboard?.instantiateViewController(withIdentifier: "ImagesTableViewController") as! ImagesTableViewController
        self.navigationController?.pushViewController(listView, animated: true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

