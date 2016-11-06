public func <|> <T>(lhs: T?, rhs: @autoclosure () -> T?) -> T? {
  return lhs.or(rhs)
}

extension Optional {
  func or(_ other: @autoclosure () -> Wrapped?) -> Wrapped? {
    switch self {
      case .some: return self
      case .none: return other()
    }
  }
}
