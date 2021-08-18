import SwiftUI


@main
struct oasisApp: App {
    @StateObject var viewRouter = ViewRouter()

    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(viewRouter)
        }
    }
}
