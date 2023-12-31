//
//  PlantDetailview.swift
//  eleos_L
//
//  Created by Razan Raid on 27/08/2023.
//

import SwiftUI

struct PlantDetailView: View {
    var plant : Plant
    
    var body: some View {
        NavigationView{
            ScrollView() {
                VStack(alignment: .leading,spacing: 0) {
                    // header
                    PlantHeaderView(plant: plant)
                    //title
                    
                    HStack(alignment: .center, spacing: 30){
                        Text(plant.plantName)
                            .font(.largeTitle)
                            .bold()
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Spacer(minLength: 0.1)
                        DropsRequiredView(plant: plant)
                            .frame(width:100)
                        Spacer()
                        
                        
                    }
                    
                    
                    // description
                    VStack(alignment:.leading, spacing: 0){
                        Text("Description")
                            .padding(.horizontal)
                            .font(.title2)
                            .bold()
                            .foregroundColor(Color("font"))
                        Text(plant.plantDescription)
                            .padding()
                        Spacer()
                        // actions
                        HStack{
                            Spacer()
                            Button{
                                print("no longer thirsty plant")
                                
                            }label: {
                                Text("water the plant!")
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("Purple"))
                            .cornerRadius(10)
                           Spacer()
                        }
                    
                        
                        
                    }// vstack
                    
                    
                }
            }// vstack
            .navigationBarTitle(plant.plantName,displayMode: .inline)
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
        }// nav view
    }
    
}
struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: plantsData[0])
    }
}
