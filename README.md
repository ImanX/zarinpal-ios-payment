# ZarinPal iOS SDK Payment 
Payment request and Automatic verification in Clinet 

# Swift
Simply add ZarinPalSDKPayment.framework to Link Frameworks and Libraries in your project

# Tutorial 
[Purchase of Implementation Tutorial Video](https://zarinp.al/152390)

Start Payment
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


