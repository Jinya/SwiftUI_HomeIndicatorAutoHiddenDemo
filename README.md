# HomeIndicator AutoHidden Demo for SwiftUI
A demo for hiding iOS system home indicator when our app written by SwiftUI.

## Known Issues
Currently(SwiftUI 3, Swift5.5, iOS 15), the ```SwiftUI``` framework doesn't provide a viewModifier of ```View``` for us to set a property like ```prefersHomeIndicatorAutoHidden``` in ```UIKit's UIViewController``` to make home indicator auto hidden.

## Solution
Assign the SwiftUI View to a ```UIHostingController``` instance's rootView 
```swift

struct SwiftUIView: View {
    var body: some View {
        Text("SwfitUI view without the annoying home indicator!")
            .edgesIgnoringSafeArea(.all)
    }
}

class ViewController: UIViewController {
    override var prefersHomeIndicatorAutoHidden: Bool { true }
    
    private let childView = UIHostingController(rootView: SwiftUIView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChild(childView)
        view.addSubview(childView.view)
        childView.didMove(toParent: self)
        childView.view.frame = view.bounds
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        childView.view.frame = view.bounds
    }
}

```
## Future in SwiftUI 4
A viewModifier like ```edgesIgnoringSafeArea(.all)``` should be provide to ```View``` in SwiftUI.

