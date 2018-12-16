# ZarinPal iOS SDK Payment 
Payment request and Automatic verification in Clinet 

# How to add Framework to my Project?
Simply Install by Cocoapods and use it!

- NOTE: Framework Updated to Swift 4.1 Version Compile.
- NOTE: Fix Amount DataType
- NOTE: Supported iOS 10 to higher

#  How to Install Pod?
[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods 1.5+ is required

To integrate ZarinPal SDK into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
       pod 'ZarinPalSDKPayment', '~> 0.2.4'
end
```

Then, run the following command:

```bash
$ pod install
```


# Example

```Swift
       
import ZarinPalSDKPayment <= import this.
class ViewController: UIViewController , ZarinPalPaymentDelegate {
   
   func didSuccess(refID: String, authority: String, builder: ZarinPal.Builder) {
                       //when Payment is Success and return:
                       //refID: this is transaction id.
                       //authority: this is a payment unique id
                       //payment : included payment details ex: amount , description
       print(refID);
   }
   
   func didFailure(code: Int, authority: String?) {
    //when Payment is failure and return:
                       //status : ZarinPal failure codes
                       //authority: this is a payment unique id
       print(code);
   }
  
   
   @IBAction func click(_ sender: Any) {
       
       let zarinpal =   ZarinPal.Builder(vc: self, merchantID: "****************", amount: 100, description: "description");
      
       zarinpal.indicatorColor = UIColor.black;  //this set indicator color *optional
       zarinpal.title = "Payment Gateway";  //this set title of payment page *optional
       zarinpal.pageBackgroundColor = UIColor.lightGray; // this set background payment color *optional
       zarinpal.email = "email@gmail.com"; //this set email *optional
       zarinpal.mobile = "09355106005"; //this set mobile *optional
       zarinpal
           .build()
           .start(delegate: self);
       
   }
  

   override func viewDidAppear(_ animated: Bool) {
   
  
   }

   override func didReceiveMemoryWarning() {
       super.didReceiveMemoryWarning()
       // Dispose of any resources that can be recreated.
   }


}
       
       
```


