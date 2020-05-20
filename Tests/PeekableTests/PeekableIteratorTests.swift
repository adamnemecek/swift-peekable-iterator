import XCTest
@testable import PeekableIterator

final class PeekableIteratorTests: XCTestCase {
    func testPeekFirstElement() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let text = "foobar"
        let iter = text.peekableIterator()
        
        XCTAssertEqual(iter.peek(), "f")
    }

    func testPeekEmptyIterator() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let array = [Int]()
        let iter = array.peekableIterator()
        
        XCTAssertEqual(iter.peek(), nil)
    }
    
    func testPeekNthElement() {
        let array = [1, 2, 3, 4, 5]
        let iter = array.peekableIterator()
        
        let _ = iter.next()
        let _ = iter.next()
        
        XCTAssertEqual(iter.peek(), 3)
    }
    
    func testNextConsumesTheWholeIterator() {
        let array = [1, 2, 3, 4, 5]
        let iter = array.peekableIterator()
        
        var item : Int?
        repeat {
            item = iter.next()
        } while item != nil
    
        XCTAssertTrue(true)
    }
    
    static var allTests = [
        ("testPeekFirstCharacter", testPeekFirstElement),
        ("testPeekEmptyIterator", testPeekEmptyIterator),
        ("testNextConsumesIterator", testPeekNthElement),
        ("testNextConsumesTheWholeIterator", testNextConsumesTheWholeIterator)
    ]
}
