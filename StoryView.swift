//
//  File.swift
//  WWDC22
//
//  Created by Jovinca Claudia on 17/04/22.
//

import SwiftUI

struct StoryView: View {
    
    //check if the index is an ending page
    func checkEnding( i : Int)->Bool{
        if (i==7||i==9||i==16||i==13){
            return true
        }
        if(i>17 && i<28){
            return true
        }
        return false
    }
    
    let story: Story
    let pageIndex: Int
    
    var body: some View {
        ZStack(alignment: .bottom){
            
            if checkEnding(i: pageIndex){
                //ending image view
                story[pageIndex].budiImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 400, alignment:.center)
                    .animation(.easeIn(duration: 0.7))
                    .padding(EdgeInsets(top:UIScreen.main.bounds.height/12, leading: 50, bottom: UIScreen.main.bounds.height/2, trailing: 50))
            }
            
            
            HStack{
                //story image view
                story[pageIndex].mbokImage
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height:UIScreen.main.bounds.height/3*2, alignment:.center)
                
                if checkEnding(i: pageIndex){
                }else{ story[pageIndex].budiImage
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height:UIScreen.main.bounds.height/3*2, alignment:.center)
                }
            }
            .multilineTextAlignment(.center)
            .zIndex(0)
            .padding(.bottom,UIScreen.main.bounds.height/7)
            
            
            HStack{
                
                VStack{
                    //story text view
                    Text(story[pageIndex].who)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("DarkBrown"))
                        .multilineTextAlignment(.center)
                    Text(story[pageIndex].text)
                        .font(.title3)
                        .foregroundColor(Color("DarkBrown"))
                        
                    //button to 'play again' when ending page is shown
                    if checkEnding(i: pageIndex){
                        NavigationLink(destination: StoryView(story: story, pageIndex: 0)){
                            Text("PLAY AGAIN")
                                .foregroundColor(.white)
                                .padding()
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth:200, alignment: .center)
                                .background(.brown)
                                .cornerRadius(8)
                        }
                    }
                    
                }.padding(20)
                    .multilineTextAlignment(.center)
                    .frame(minWidth: checkEnding(i: pageIndex) ?
                           UIScreen.main.bounds.width-100:
                           UIScreen.main.bounds.width*3/5-80)
                    .background(Image("Paper")
                        .resizable()
                        .cornerRadius(8)
                        .clipped()
                    )
                    .animation(.easeIn(duration: 0.7))   
                
                VStack {
                    //Choices view
                    ForEach(story[pageIndex].choices, id: \Choice.text) { choice in
                        NavigationLink(destination: StoryView(story: story, pageIndex: choice.destination)) {
                            if !checkEnding(i: pageIndex){
                                Text(choice.text)
                                    .foregroundColor(Color("DarkBrown"))
                                    .multilineTextAlignment(.leading)
                                    .frame(width:UIScreen.main.bounds.width/5*2, alignment: .leading)
                                    .padding()
                                    .background(Color.white.opacity(0.7))
                                    .cornerRadius(8)
                                    .zIndex(1)
                            }
                        }
                    }
                }.padding(0)
                    .multilineTextAlignment(.trailing)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity,
                   alignment: .bottom)
            .padding()
            .zIndex(1)
            
        }
        .navigationBarTitleDisplayMode(.inline)
        
        //delete from this line
        .navigationBarTitle("")
        .navigationBarHidden(true)
        //until here
        
        .background(Image("Background")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        )
        
    }
    
}
