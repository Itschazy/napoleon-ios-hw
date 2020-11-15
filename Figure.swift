import Foundation

protocol Quadrangle {
  var width : Double { get set }
  var height : Double { get set }
  var perimetr : Double { get }
}

class Figure {
  var name : String {
    return "Figure"
  }
  var numberOfCorners : Int {
    return 0
  }
}

class Rectangle : Figure, Quadrangle {
  override var name : String {
    return "Rectangle"
  }
  var width : Double
  var height : Double
  override var numberOfCorners : Int {
    return 4
  }
  var perimetr : Double {
    return (width + height) * 2
  }
  init (width : Double, height : Double) {
    self.width = width
    self.height = height
  }
  func square() -> Double {
    return width * height
  }
}

class Parallelogram : Figure, Quadrangle {
  override var name : String {
    return "Parallelogram"
  }
  var width : Double
  var height : Double
  var sinus : Double
  override var numberOfCorners : Int {
    return 4
  }
  var perimetr : Double {
    return (width + height) * 2
  }
  init (width : Double, height : Double, sinus : Double) {
    self.width = width
    self.height = height
    self.sinus = sinus
  }
  func square() -> Double {
    return width * height * sinus
  }
}

class Triangle: Figure {
    var basis: Double
    var height: Double
    override var name: String {
      return "Triangle"
    }
    override var numberOfCorners: Int {
      return 3
    }
    init(basis: Double, height: Double) {
      self.basis = basis
      self.height = height
    }
    func square() -> Double {
      return (basis * height) / 2
    }
}

class Circle: Figure {
    let π = M_PI
    var radius: Double
    override var name: String {
      return "Circle"
    }
    init(radius: Double) {
      self.radius = radius
    }
    func square() -> Double {
      return π * pow(radius, 2)
    }
}
