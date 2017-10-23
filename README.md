# ILSImageCache
ILSImageCache is a lightweight, pure-Swift library for downloading and caching images from the web. It provides you a chance to use a pure-Swift alternative in your next app.

<img src="./Asset/art.png?raw=true">

## Features

* Asynchronous image downloading and caching.
* URLSession-based networking.
* Independent components. Use the downloader or caching system separately as you need.
* Prefetching images and showing them from cache later when necessary.
* Extensions for UIImageView and UIButton to directly set an image from a URL.
* Built-in transition animation when setting images.
* Customizable placeholder while loading images.
* Extensible image processing and image format support. 

## Installation

### Compatibility

-  iOS 8.0+

- Xcode 9.0+, Swift 4+

#### Manual installation
Download and drop the 'ILSImageCache' folder into your Xcode project.


## Usage

1. The simplest use-case is setting an image to an image view with the UIImageView extension: 
```swift
let url = "url_of_your_image"

imageView.loadImageUsingCache(withUrl: url, placeholder:  placeholder image, animation: UIImageView.AnimationTypes.dissolve)
```

2. Help to add set cache size to hold until refresh 
```swift
ILSImageCache.setCacheSize(_numberofitemscachecanhold: 10)
```

3. Helps to remove cache when you want to clear 
```swift
ILSImageCache.removeImageCaches()
```

4. Also have image downloader block method  
```swift 
ILSImageCache.loadImageusingCache(withUrl: imageUrl) { (status, image) in
guard let outPutimage = image
else
{
self.imageViewdwn.image =  imageLiteral(resourceName: "placeholder")
return
}
self.imageViewdwn.image = outPutimage
}
```
5. Also user can set the animation for image loading   
```swift  
public enum AnimationTypes : String
{
case hideEffect,dissolve,none

}
```
6. UIButton Extension Is also available if needed 

```swift 
let url = "url_of_your_image"  
button.loadImageUsingCache(withUrl: url, placeholder:  imageLiteral(resourceName: "placeholder"), animation: UIButton.AnimationTypes.hideEffect) 
```  

ILSImageCache will download the image from url, send it to both the memory cache and the disk cache, and display it in imageView. When you use the same code later, the image will be retrieved from cache and shown immediately. 


## Author

iLeaf Solutions
[http://www.ileafsolutions.com](http://www.ileafsolutions.com)





