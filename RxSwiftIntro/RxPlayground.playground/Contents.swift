import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

//class ViewController: UIViewController{
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // do setup here
//    }
//}
//
//let viewController = ViewController()
//PlaygroundPage.current.liveView = viewController
//PlaygroundPage.current.needsIndefiniteExecution = true

var array = [1, 2, 3]
for number in array {
 print(number)
 array = [4, 5, 6]
}

print(array)
