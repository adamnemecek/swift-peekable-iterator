import XCTest

import PeekableIteratorTests

var tests = [XCTestCaseEntry]()
tests += swift_peekableTests.allTests()
XCTMain(tests)
