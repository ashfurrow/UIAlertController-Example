UIAlertController-Example
=========================

So Apple added this new [UIAlertViewController](https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UIAlertController_class/) class in iOS 8. Cool, right? I mean, it came with next to no sample code despite replacing `UIAlertView` and `UIActionSheet`, which are now deprecated, so. 

I had a hard time figuring out how to get the text field's text value. The only solution I found was to store the `UITextField` instance in a property of the view controller presenting it, which is a very ... Objective-C way of doing things. 
