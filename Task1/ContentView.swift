import SwiftUI

struct ContentView: View {
    let rectangleHeight: CGFloat = 50
    
    var body: some View {
        TabView {
            ZStack {
                ScrollView {
                    VStack {
                        ForEach((1...100), id: \.self) {
                            Text("\($0)")
                                .font(.largeTitle)
                                .foregroundStyle(.secondary)
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                .contentMargins(.bottom, rectangleHeight, for: .scrollIndicators)
                .contentMargins(.bottom, rectangleHeight, for: .scrollContent)
                VStack {
                    Spacer()
                    Rectangle()
                        .fill(.red)
                        .frame(height: rectangleHeight)
                        .opacity(0.5)
                }
            }
            .frame(maxWidth: .infinity)
            .tabItem {
                Label("First", systemImage: "star")
            }
        }
    }
}

#Preview {
    ContentView()
}
