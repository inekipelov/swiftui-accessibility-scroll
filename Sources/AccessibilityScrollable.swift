import SwiftUI

/// A ViewModifier that conditionally wraps content in a ScrollView
/// if the current DynamicTypeSize exceeds the provided threshold.
public struct AccessibilityScrollable: ViewModifier {
    @Environment(\.dynamicTypeSize) private var dynamicType
    private let threshold: DynamicTypeSize

    public init(threshold: DynamicTypeSize) {
        self.threshold = threshold
    }

    public func body(content: Content) -> some View {
        if dynamicType > threshold {
            ScrollView { content }
        } else {
            content
        }
    }
}

public extension View {
    /// Conditionally wraps the view in a ScrollView for accessibility, when the DynamicTypeSize exceeds the specified value.
    /// - Parameter threshold: The DynamicTypeSize threshold.
    func accessibilityScrollable(threshold: DynamicTypeSize) -> some View {
        self.modifier(AccessibilityScrollable(threshold: threshold))
    }
}
