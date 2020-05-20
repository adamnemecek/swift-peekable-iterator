# swift-peekable-iterator

This package provides a generic iterator class that allows you to peek the next element without consuming it.

It also  comes with an extension on  Sequence's, so you can easily create a PeekableIterator.

How to use this:

    import PeekableIterator

    enum Token {
        LessThan,
        LessThanEqual,
        Equal,
    }

    func tokenize(s: String) -> [Token] {
        var iter = s.peekableIterator()
        var tokens = [Token]()
        while let char = iter.next() {
            switch char {
            case "<":
                tokens.add(iter.peek() != "=" ? .LessThan : .LessEqual)
            case "=":
                tokens.add(.Equal)
            default:
                continue
            }
        }
    }
    
    let string = "< <= ="    
    tokenize(string)
