//
// Home.swift
// 

import Foundation
import Ignite

struct Home: StaticPage {
  var title: String { "Gangan" }

  func body(context: PublishingContext) async -> [BlockElement] {
    Text("Hello, world!").font(.title)
  }
}