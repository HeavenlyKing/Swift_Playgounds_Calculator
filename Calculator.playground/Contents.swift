
import PlaygroundSupport
import UIKit
import Foundation
class ViewController: UIViewController {
    //UILabel
    var label : UILabel!
    var count = 0
    //UIImage and UIButton
    override func viewDidLoad() {
        //UIImage
        super.viewDidLoad()
        let image = #imageLiteral(resourceName: "IMG_0045.JPG")
        view = UIImageView.init(image:image)
        view.contentMode = UIViewContentMode.scaleAspectFill
        view.isUserInteractionEnabled = true 
        //UILable
        label = UILabel(frame: CGRect(x: 0, y: 0, width: 600,height:150))
        label.text = "0"
        //label.backgroundColor = #colorLiteral(red: 0.0352941192686558, green: 0.117647059261799, blue: 0.164705887436867, alpha: 1.0)
        label.numberOfLines = 1
        label.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        label.adjustsFontSizeToFitWidth = true
        label.textAlignment = NSTextAlignment.right
        label.adjustsFontSizeToFitWidth = true
        label.font = UIFont.systemFont(ofSize: 70)
        //label.
        self.view.addSubview(label)
        
        //UIButton
        
        //Number Button
        class button {
            let b = UIButton()
            func defineButton(X:Int , Y: Int , Width : Int, Height: Int , Title: String ){
                b.frame = CGRect(x: X, y: Y, width: Width, height: Height)
                b.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                b.setTitle(Title, for: .normal)
                b.setTitleColor(#colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0), for: .normal)
                b.layer.borderWidth = 1
                b.layer.borderColor = UIColor.black.cgColor
                b.titleLabel?.font = UIFont.systemFont(ofSize: 70, weight: UIFontWeightThin)
                b.addTarget(self, action: #selector(singlepram(Button:)), for: UIControlEvents.touchUpInside)
            }
            
        }
        class operationButton: button {
            override func defineButton(X: Int, Y: Int, Width: Int, Height: Int, Title: String) {
                b.frame = CGRect(x: X, y: Y, width: Width, height: Height)
                b.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                b.setTitle(Title, for: .normal)
                b.setTitleColor(#colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0), for: .normal)
                b.layer.borderWidth = 1
                b.layer.borderColor = UIColor.black.cgColor
                b.titleLabel?.font = UIFont.systemFont(ofSize: 70, weight: UIFontWeightThin)
                b.addTarget(self, action: #selector(operation(Button:)), for: UIControlEvents.touchUpInside)
            
            
            }
        }
        let b0 = button()
        b0.defineButton(X: 0, Y: 150, Width: 150, Height: 150, Title: "9")
        self.view.addSubview(b0.b)
        
        let b1 = button()
        b1.defineButton(X: 150, Y: 150, Width: 150, Height: 150,Title: "8")
        self.view.addSubview(b1.b)
        
        let b2 = button()
        b2.defineButton(X: 300, Y: 150, Width: 150, Height: 150, Title: "7")
        self.view.addSubview(b2.b)
        
        let b3 = button()
        b3.defineButton(X: 0, Y: 300, Width: 150, Height: 150, Title: "6")
        self.view.addSubview(b3.b)
        
        let b4 = button()
        b4.defineButton(X: 150, Y: 300, Width: 150, Height: 150, Title: "5")
        self.view.addSubview(b4.b)
        
        let b5 = button()
        b5.defineButton(X: 300, Y: 300, Width: 150, Height: 150, Title: "4")
        self.view.addSubview(b5.b)
        
        let b6 = button()
        b6.defineButton(X: 0, Y: 450, Width: 150, Height: 150, Title: "1")
        self.view.addSubview(b6.b)
        
        let b7 = button()
        b7.defineButton(X: 150, Y: 450, Width: 150, Height: 150, Title: "2")
        self.view.addSubview(b7.b)
        
        let b8 = button()
        b8.defineButton(X: 300, Y: 450, Width: 150, Height: 150, Title: "3")
        self.view.addSubview(b8.b)
        
        let b9 = button()
        b9.defineButton(X: 0, Y: 600, Width: 300, Height: 150, Title: "0")
        self.view.addSubview(b9.b)
        
        let bD = button()
        bD.defineButton(X: 300, Y: 600, Width: 150, Height: 150, Title: ".")
        self.view.addSubview(bD.b)
        
        let b乘 = operationButton()
        b乘.defineButton(X: 450, Y: 150, Width: 150, Height: 150, Title: "×")
        self.view.addSubview(b乘.b)
        
        let b除 = operationButton()
        b除.defineButton(X: 450, Y: 300, Width: 150, Height: 150, Title: "÷")
        self.view.addSubview(b除.b)
        
        let b加 = operationButton()
        b加.defineButton(X: 450, Y: 450, Width: 150, Height: 150, Title: "+")
        self.view.addSubview(b加.b)
        
        let b减 = operationButton()
        b减.defineButton(X: 450, Y: 600, Width: 150, Height: 150, Title: "-")
        self.view.addSubview(b减.b)
        
        let b等 = operationButton()
        b等.defineButton(X: 450, Y: 750, Width: 150, Height: 130, Title: "=")
        self.view.addSubview(b等.b)
        
        let b反 = operationButton()
        b反.defineButton(X: 300, Y: 750, Width: 150, Height: 130, Title: "±")
        self.view.addSubview(b反.b)
        
        let b根 = operationButton()
        b根.defineButton(X: 150, Y: 750, Width: 150, Height: 130, Title: "√")
        self.view.addSubview(b根.b)
        
        let bAC = operationButton()
        bAC.defineButton(X: 0, Y: 750, Width: 150, Height: 130, Title: "AC")
        self.view.addSubview(bAC.b)
        
    }
    var userTyping = false
    
    func singlepram(Button:UIButton){
        
        let number = Button.currentTitle!
        if userTyping {
            self.label.text! += number
        }else{
            self.label.text! = number
        }
        userTyping = true
    }
    
    var brain = calculatorBrain()
    
    private var displayValue : AnyObject{
        get {
            return Double(self.label.text!)!
        }
        set {
            let new = Double(newValue as! NSNumber)
            print(new)
            if new - Double(Int(new)) != 0.0{
                self.label.text = String(newValue)
            }else{
                self.label.text = String(Int(newValue as! NSNumber))
            }
        }
    }
    func operation(Button : UIButton){
        if userTyping {
            brain.setOperand(Double(displayValue as! NSNumber))
        }
        userTyping = false 
        if let mathematicalSymbol = Button.currentTitle {
            brain.performOperation(mathematicalSymbol)
        }
        displayValue = brain.result
    }
}
/******************************************************  *                    CALCULATOR BRAIN
 * Operations[]
 * operations{}
 *
 *****************************************************/
class calculatorBrain {
    private var accumulator = 0.0
    //private var internalProgram 
    
    private var Operations : Dictionary<String , operations > = [
        "+": operations.binaryOperation({$0 + $1}),
        "-": operations.binaryOperation({$0 - $1}),
        "×": operations.binaryOperation({$0 * $1}),
        "÷": operations.binaryOperation({$0 / $1}),
        "=": operations.equals,
        "AC":operations.constant(0),
        "±": operations.unaryOperation({-$0}),
        "√": operations.unaryOperation(sqrt)
    ]
    
    private enum operations{
        case constant(Double)
        case unaryOperation((Double)->Double)
        case binaryOperation((Double,Double)->Double)
        case equals
    }
    
    func setOperand(_ operand: Double){
        accumulator = operand
    }
    func performOperation(_ symbol: String){
        if let opration = Operations[symbol]{
            switch opration {
            case .constant(let value) :
                accumulator = value
            case .unaryOperation(let function ) :
                accumulator = function(accumulator)
            case .binaryOperation(let function ):
                executePendingBianaryOperation()
                pending = PendingBianaryOperation(binaryFunction: function,finalOperand: accumulator)
            case .equals  :
                executePendingBianaryOperation()
            }
        }
    }
    private func executePendingBianaryOperation(){
        if pending != nil{
            accumulator = pending!.binaryFunction(pending!.finalOperand,accumulator)
            pending = nil
        }
    }
    private var pending:PendingBianaryOperation?
    
    private struct PendingBianaryOperation {
        var binaryFunction :(Double,Double)->Double
        var finalOperand : Double
    }
    
    var result: Double{
        get{
            return accumulator
            //print(accumulator)
        }
    }
}
let page = PlaygroundPage.current
page.liveView = ViewController()
