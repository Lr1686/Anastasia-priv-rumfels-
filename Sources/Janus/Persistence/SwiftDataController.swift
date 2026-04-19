import SwiftData
import Foundation
import CryptoKit

@Model
final class JanusMemory {
    var timestamp: Date
    var contextHash: String
    var payload: Data
    var frequencyTag: String = "12_ALPHA"
    
    init(timestamp: Date = .now, contextHash: String, payload: Data) {
        self.timestamp = timestamp
        self.contextHash = contextHash
        self.payload = payload
    }
}

actor JanusDataController {
    private let container: ModelContainer
    init() {
        let schema = Schema([JanusMemory.self])
        let configuration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        do {
            self.container = try ModelContainer(for: schema, configurations: [configuration])
            print("✅ SwiftData container monté – Persistance souveraine active")
        } catch {
            fatalError("Échec SwiftData : \(error)")
        }
    }
}
