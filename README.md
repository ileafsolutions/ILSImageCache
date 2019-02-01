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

-  iOS 9.0+

- Xcode 9.0+, Swift 4.2+

#### Manual installation
Download and drop the 'ILSImageCache.framework' into your Xcode project.Make Sure you add it by Embedded Binaries
Also Please add this run script on your project target before uploading to app store
```FRAMEWORK="ILSImageCache"
FRAMEWORK_EXECUTABLE_PATH="${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/$FRAMEWORK.framework/$FRAMEWORK"
EXTRACTED_ARCHS=()
for ARCH in $ARCHS
do
lipo -extract "$ARCH" "$FRAMEWORK_EXECUTABLE_PATH" -o "$FRAMEWORK_EXECUTABLE_PATH-$ARCH"
EXTRACTED_ARCHS+=("$FRAMEWORK_EXECUTABLE_PATH-$ARCH")
done
lipo -o "$FRAMEWORK_EXECUTABLE_PATH-merged" -create "${EXTRACTED_ARCHS[@]}"
rm "${EXTRACTED_ARCHS[@]}"
rm "$FRAMEWORK_EXECUTABLE_PATH"
mv "$FRAMEWORK_EXECUTABLE_PATH-merged" "$FRAMEWORK_EXECUTABLE_PATH"
```


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

6. Also ther is extension for UIButton

```swift
let url = "url_of_your_image"

button.loadImageUsingCache(withUrl: url, placeholder:  placeholder image, animation: UIButton.AnimationTypes.dissolve)
```

7.Added UIImage Extension to Resize your image on the basis of width

```swift
self.imageViewdwn.image = outPutimage.resizedImage(toWidth: self.imageViewdwn.frame.size.width)

```
7.Added UIImage Extension to Resize your image on the basis of percentage

```swift
self.imageViewdwn.image = outPutimage.resizedImage(withPercentage: 0.2)

```


## Author

iLeaf Solutions
[http://www.ileafsolutions.com](http://www.ileafsolutions.com)





