import AVFoundation

class JanusSensorBridge {
    static let shared = JanusSensorBridge()
    func requestAndStartCapture() {
        AVCaptureDevice.requestAccess(for: .audio) { granted in
            if granted { print("🎤 NSMicrophonePermission → Flux audio actif") }
        }
        AVCaptureDevice.requestAccess(for: .video) { granted in
            if granted { print("📹 NSCameraPermission → Flux vidéo actif") }
        }
    }
}
