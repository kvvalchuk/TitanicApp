/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Data source for the size field on the UIPicker.
*/

import Foundation

struct SizeDataSource {
    /// Helper formatter to represent large nubmers in the picker
    private static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.locale = .current
        formatter.numberStyle = .decimal
        formatter.usesGroupingSeparator = true
        return formatter
    }()

    /// Possible values for size of the habitat.
    let values = [
        "750",
        "1000",
        "1500",
        "2000",
        "3000",
        "4000",
        "5000",
        "10000"
    ]
    
    func title(for index: Int) -> String? {
        guard index < values.count else { return nil }
        return String(values[index])
    }
    
    func value(for index: Int) -> String? {
        guard index < values.count else { return nil }
        return String(values[index])
    }
}
