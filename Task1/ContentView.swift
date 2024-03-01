import SwiftUI

struct ContentView: View {
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
                .contentMargins(.bottom, 50, for: .scrollIndicators)
                .contentMargins(.bottom, 50, for: .scrollContent)
                VStack {
                    Spacer()
                    Rectangle()
                        .fill(.red)
                        .frame(width: .infinity, height: 50)
                        .opacity(0.5)
                }
            }
            .tabItem {
                Label("First", systemImage: "star")
            }
        }
    }
}

#Preview {
    ContentView()
}
