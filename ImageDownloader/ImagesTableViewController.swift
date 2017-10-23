//
//  ImagesTableViewController.swift
//  ImageDownloader
//
//  Created by Vivek iLeaf on 6/14/17.
//  Copyright © 2017 Vivek iLeaf. All rights reserved.
//

import UIKit

class ImagesTableViewController: UITableViewController {

    var imageUrls = ["http://www.planwallpaper.com/static/images/9-credit-1.jpg","http://www.planwallpaper.com/static/images/images_1_05GM1zY.jpg","http://www.planwallpaper.com/static/images/offset_WaterHouseMarineImages_62652-2-660x440.jpg","http://www.planwallpaper.com/static/images/6F0CE738-6419-4CF4-8E8878246C2D2569.jpg","http://www.planwallpaper.com/static/images/Winter-Tiger-Wild-Cat-Images.jpg","http://www.planwallpaper.com/static/images/6986083-waterfall-images_Mc3SaMS.jpg","http://www.planwallpaper.com/static/images/tree-247122.jpg","http://cdn.wonderfulengineering.com/wp-content/uploads/2014/03/high-resolution-wallpapers-25.jpg"]
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return imageUrls.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ImageTableViewCell
        guard indexPath.row%2 == 0 else {
            cell.imageViewshow.loadImageUsingCache(withUrl: imageUrls[indexPath.row], placeholder: #imageLiteral(resourceName: "placeholder"), animation: UIImageView.AnimationTypes.none)
           return cell
        }
        
        cell.imageViewshow.loadImageUsingCache(withUrl: imageUrls[indexPath.row], placeholder: #imageLiteral(resourceName: "placeholder"), animation: UIImageView.AnimationTypes.none)
        
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.height-100
    }
    

 
}
