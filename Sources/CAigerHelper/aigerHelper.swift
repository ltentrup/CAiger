import CAiger

public func aiger_contains_output(aig: UnsafeMutablePointer<aiger>, withName output: String) -> UnsafeMutablePointer<aiger_symbol>? {
    var symbolPtr: UnsafeMutablePointer<aiger_symbol>? = aig.pointee.outputs
    for _ in 0..<aig.pointee.num_outputs {
        let symbol = symbolPtr!.pointee
    
        let name: String = String(cString: symbol.name)
        if name == output {
            return symbolPtr!
        }
        
        symbolPtr = symbolPtr?.successor()
    }
    return nil
}

public func aiger_normalize(_ node: UInt32) -> (Bool, UInt32) {
    return (node & 1 == 1, (node & ~1))
}

public func aiger_not(_ lit: UInt32) -> UInt32 {
    return lit^1
}

public func aiger_next_lit(_ aig: UnsafeMutablePointer<aiger>) -> UInt32 {
    return (aig.pointee.maxvar + 1) * 2
}
