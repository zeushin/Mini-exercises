import UIKit

extension UIImage {
    func resizedTo(size: CGSize, clo: () -> ()) -> UIImage {
        /* 이미지 크기를 조정하는 연산비용이 많이 들어가는 로직이 여기 있다고 가정하겠습니다 */
        return UIImage(named: "")!
    }
}

class Avatar {
    static let defaultSmallSize = CGSize(width: 64, height: 64)
    
    /*
    var smallImage: UIImage {
        get {
            return self.largeImage.resizedTo(size: Avatar.defaultSmallSize)
        }
    }
     */
    
    lazy var smallImage: UIImage = self.largeImage.resizedTo(size: Avatar.defaultSmallSize) {
        
    }
    
    var largeImage: UIImage
    
    init(image: UIImage) {
        self.largeImage = image
    }
}

var img = UIImage()
var ava = Avatar(image: img)



let bigNumber = [1,21,3,4,118].map({ num in
    num * 5
})
