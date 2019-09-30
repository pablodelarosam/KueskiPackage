import UIKit
struct KueskiPackage {
    var text = "Hello, World!"
}


open class KueskiCustomButton: UIView {
    
    let kueskiButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        button.setTitle("KUESKI", for: .normal)
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
       return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addSubview(kueskiButton)
        kueskiButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        kueskiButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}


@IBDesignable public class KnobButton: UIButton {
    
    public override init(frame: CGRect) {
      super.init(frame: frame)
      commonInit()
    }
     private func commonInit() {
        
        self.backgroundColor = .green
        self.setTitle("knOM", for: .normal)
        
    }

    public required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      commonInit()
    }
    
}
