//
//  CreateView.swift
//  StartEnVille
//
//  Created by charlene hoareau on 01/02/2024.
//

import SwiftUI

struct CreateView: View {
    @State private var name = ""
    @State private var adress = ""
    @State private var description = ""
    @State private var eventdate = Date()
    @State private var capsuleCategory1 = ""
    @State private var capsuleCategory2 = ""
    let categories = ["food", "nature", "sport", "culture", "start", "langue"]
    @State private var currentDate = Date()
    @State private var selectedMenu = "Gratuit"
    @State private var selectedOption = "gratuit"
    @State private var isValid = false
    let options = ["gratuit", "payant"]
    @State private var message = ""
    
    
    var body: some View {
        NavigationStack {
            Text("Créer un évènement")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
            Form {
                VStack {
                    Image(systemName: "photo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        //.frame(width: 300, height: 220)
                        .foregroundColor(.gray.opacity(0.4))
                        .cornerRadius(20)
                       // .padding(5)
                    Button(action: {
                    }) {
                        RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
                                .frame(height: 40)
                                .frame(width: 200)
                                .overlay(
                                    Text("Ajouter une image")
                                        .foregroundColor(.white)
                                        .font(.headline)
                                )
                                //.padding()
//                        Text("nouvelle image")
//                            .padding(.horizontal, 20)
//                            .foregroundColor(.white)
//                            .background(Color(red: 0/255, green: 113/255, blue: 164/255))
//                            .cornerRadius(10)
//                            .padding(.trailing, 10)
                    }
                }
                //.padding(.leading, 35)
                
                //                Section(header: Text("Nom de lieux")) {
                //                    TextField("Name", text: $name)
                //                }
                //                .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
                //
                //                Section(header: Text("Adresse")) {
                //                    TextField("adress", text: $adress)
                //                }
                //                .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
                //
                //                Section(header: Text("Date evenement")) {
                //                    DatePicker("date", selection: $currentDate, displayedComponents: [.date, .hourAndMinute])
                //                        .labelsHidden()
                //                }
                //                .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
                //
                //                Section(header: Text("Description")) {
                //                    TextField("Text", text: $name)
                //                }
                //                .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
                //
                //                Section(header: Text("Categorie")) {
                //                    Picker("Categorie", selection: $CapsuleCategory) {
                //                        ForEach(categories, id: \.self) { categorie in
                //                            Text(categorie)
                //                        }
                //                    }
                //                }
                //
//            Form {
                Section(header: Text("Détails de l'évènement")) {
                    TextField("Nom du lieu", text: $name)
                    TextField("Adresse", text: $adress)
                    DatePicker("Date de l'évènement", selection: $currentDate, displayedComponents: [.date, .hourAndMinute])
                        .labelsHidden()
                    VStack(alignment: .leading) {
                        TextField("Description", text: $description)
//                        Text("Description")
//                        TextEditor(text: $description)
//                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                           // .padding()
                          //.background(Color.gray.opacity(0.1))
                            //.cornerRadius(10)
                            //.padding()
                        //.textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .padding(.top, 4)
                    Picker("Première catégorie", selection: $capsuleCategory1) {
                        ForEach(categories, id: \.self) {  categorie in
                            Text(categorie)
                        }
                    }
                    Picker("Deuxième catégorie", selection: $capsuleCategory2) {
                        ForEach(categories, id: \.self) {  categorie in
                            Text(categorie)
                        }
                    }
                    
                    Picker("Menu", selection: $selectedMenu) {
                        Text("Gratuit").tag("Gratuit")
                        Text("Payant").tag("Payant")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width: 320)
                }
                .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
                
                VStack {
                    MapView(events: events)
                    //                                    .frame(height: 360)
                    //                                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 330, height: 320)
                        .cornerRadius(20)
                        .padding(5)
                    Button(action: {
                    }) {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
                            .frame(width: 200, height: 40)
                            .overlay(
                                Text("Enregistrer le lieu")
                                    .foregroundColor(.white)
                                    .font(.headline)
                            )
                            .padding(.horizontal, 20)
                            .padding(.trailing, 10)
                    }
                }
                
                VStack {
//                    Picker("Menu", selection: $selectedMenu) {
//                        Text("Gratuit").tag("Gratuit")
//                        Text("Payant").tag("Payant")
//                    }
//                    .pickerStyle(SegmentedPickerStyle())
//                    .frame(width: 300)
                    Section(header: Text("")) {
                        Text(message)
                            .padding()
                        Button(action: {
                            isValid = validateFields()
                            if isValid {
                                message = "Super Évènement!"
                            } else {
                                message = "Une information est manquante"
                            }
                        }) {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(isValid ? Color(red: 255/255, green: 204/255, blue: 0/255) : Color(red: 0/255, green: 113/255, blue: 164/255))
                                .frame(height: 40)
                                .frame(width: 200)
                                .overlay(
                                    Text("Valider")
                                        .foregroundColor(.white)
                                        .font(.headline)
                                )
//                                .padding(.horizontal, 30)
                                .padding(.leading, 50)
                        }
                    }
                    
                }
                

            }
//            .navigationTitle("Créer un évènement")
//            .navigationBarTitleDisplayMode(.inline)
//            .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
            
//            .toolbar {
//                ToolbarItem(placement: .principal) {
//                    HStack {
//                        Spacer()
//                        Text("Créer ton evenement!")
//                            .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
//                        Spacer()
//                    }
//                }
//            }
//            .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
        }
    }
    
    func validateFields() -> Bool {
        guard !name.isEmpty else { return false }
        guard !adress.isEmpty else { return false }
        
        return true
        
    }
    
}

#Preview {
    CreateView()
}
