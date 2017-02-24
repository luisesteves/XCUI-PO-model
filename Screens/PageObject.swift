import Foundation

protocol PageObject {
    var accLabelScreen: String { get }
    func await()
    func currentPage() -> Bool
    func validate()
}
