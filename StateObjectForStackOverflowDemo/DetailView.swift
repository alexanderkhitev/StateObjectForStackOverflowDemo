//
//  DetailView.swift
//  StateObjectForStackOverflowDemo
//
//  Created by Alexander Khitev on 8/28/22.
//

import SwiftUI
import PhotosUI

struct DetailView: View {
    @StateObject private var viewModel = DetailViewModel()
    // just for test
    @State private var photoPickerPresented = false
    @State private var selectedPickerItem: PhotosPickerItem?

    var body: some View {
        VStack {
            Button {
                photoPickerPresented.toggle()
            } label: {
                Text("Show Photo Picker")
            }
        }
        .photosPicker(isPresented: $photoPickerPresented, selection: $selectedPickerItem)
        .environmentObject(viewModel)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
