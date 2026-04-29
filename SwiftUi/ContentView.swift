//
//  ContentView.swift
//  SwiftUi
//
//  Created by Thongpop choojit on 27/4/2569 BE.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData

    var body: some View {
        NavigationStack {
            List {
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                    .aspectRatio(3 / 2, contentMode: .fit)
                    .listRowInsets(EdgeInsets())

                ForEach(modelData.landmarks) { landmark in
                    HStack {
                        landmark.image
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(8)
                        VStack(alignment: .leading) {
                            Text(landmark.name).font(.headline)
                            Text(landmark.park)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

#Preview {
    ContentView().environmentObject(ModelData())
}
