UIAlertController-Example
=========================

So Apple added this new [UIAlertViewController](https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UIAlertController_class/) class in iOS 8. Cool, right? I mean, it came with next to no sample code despite replacing `UIAlertView` and `UIActionSheet`, which are now deprecated, so. 

I had a hard time figuring out how to get the text field's text value. The only solution I found was to store the `UITextField` instance in a property of the view controller presenting it, which is a very ... Objective-C way of doing things. We can do better.

So I wrote a [blog post](http://ashfurrow.com/blog/uialertviewcontroller-example) exploring the API. Here's what I came up with. 

```swift
let promptController = UIAlertController(title: "Type Something", message: nil, preferredStyle: .Alert)
let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
    println("\(alertViewControllerTextField?.text)")
})
let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
}
promptController.addAction(ok)
promptController.addAction(cancel)
promptController.addTextFieldWithConfigurationHandler { (textField) -> Void in
    alertViewControllerTextField = textField
}
presentViewController(promptController, animated: true, completion: nil)
```
