import SwiftUI

struct KakaoMap: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MTMapView {
        let view = MTMapView(frame: .zero)
        view.setZoomLevel(MTMapZoomLevel(4.0), animated: false)
        view.showCurrentLocationMarker = true
        view.currentLocationTrackingMode = .onWithoutHeading
        
        view.addCircle(circle())
        
        return view
    }
}
