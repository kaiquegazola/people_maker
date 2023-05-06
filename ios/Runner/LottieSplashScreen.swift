import Foundation
import Lottie
import UIKit

class LottieSplashScreen: UIViewController {
    let animationView = LottieAnimationView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white

        animationView.animation = LottieAnimation.named("loading")
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.backgroundColor = UIColor.white
        animationView.play()

        view.addSubview(animationView)

        animationView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
                    animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                    animationView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}
