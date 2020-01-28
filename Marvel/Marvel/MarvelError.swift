import Foundation

class MarvelError: Error {
    
    let error: String
    
    init(error: String) {
        self.error = error
    }
    
}
