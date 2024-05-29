//
// Site.swift
// - description: The main entry point for this website.
//

@main
struct HelloWebSite {
  static func main() async {
    let site = MySite()

    do {
      try await site.publish()
    } catch {
      print(error.localizedDescription)
    }
  }
}

struct MySite: Site {
  var name: String { "Gangan" }
  var titleSUffix: String { "- example Site" }
  var url: URL { URL(string: "https://gangan.netlify.app") }
  
  var homePage: Home()
  var theme = MyTheme()

  var pages: [any StaticPage] {
    Home()
  }
}