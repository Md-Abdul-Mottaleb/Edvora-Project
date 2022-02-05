
import SwiftUI
  

struct ContentView: View {
    
  @State var show = false
    
    var body: some View {
        ZStack {
            
            Color("CustomColor2")
            .edgesIgnoringSafeArea(.all)
            VStack {
               
                VStack{

                    HStack(spacing: 50){
                        Text("Edvora")
                            .font(.system(size: 32 , weight: .bold))
                            .foregroundColor(.white)
                            .padding([.bottom, .trailing], 10)
                        Spacer()
                    }
                    
                    HStack {
                        
                       
                        HStack {
                            
                            Text("Filters").font(.system(size: 22)).padding()
                                .foregroundColor(Color.white)
                                
                            
                            Spacer()
                            
                            
                            Button {
                                withAnimation(.spring()){
                                    self.show.toggle()
                                }
                               
                               
                            } label: {
                                
                                Image(systemName: "arrowtriangle.down.fill").padding().foregroundColor(Color.white)
                                
                            }
                        }.frame(width:150, height: 50).background(Color("CustomColor3"))
                            .shadow(radius: 10).cornerRadius(4)

                        Spacer()
                        HStack {

                            Text("clear Filter").foregroundColor(Color.white)


                        }.frame(width: 100, height: 35).background(Color("CustomColor3"))
                            .shadow(radius: 10).cornerRadius(4)

                    }
                

                }.frame(width: 400, height: 100)

                if self.show{
                    POpOver()
                }

                ScrollView {

                    ForEach(0..<4) { Index in   LazyVStack{
                        Spacer().frame(minHeight: 20, maxHeight: 20)
                        Text("Product Name").font(.system(size: 24 , weight: .bold)).position(x: 80, y: 10).foregroundColor(Color.white)
                            
                        
                        Divider().frame(height: 1).background(Color("CustomColor1")).padding(10)

                        Spacer().frame(minHeight: 10, maxHeight: 10)
                        ForEach(0..<1) { Index in
                            ScrollView(.horizontal,showsIndicators: false, content: {
                               
                                HStack{

                                    ForEach(0..<6) { Index in
                                        
                                        VStack {
                                            
                                            HStack {
                                                Spacer() //.frame(minHeight: 2, maxHeight: 2)
                                                VStack{
                                                    Spacer() //.frame(minHeight: 20, maxHeight: 20)
                                                    Image("Betall").renderingMode(.original)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .cornerRadius(6)
                                                        .frame(width: 90, height: 90)
                                                    //Spacer()
                                                    Text("Location").font(.system(size: 13))
                                                        .fontWeight(.none).foregroundColor(Color.white)
                                                    Spacer()
                                                    Text("Description of the product").font(.system(size: 8))
                                                        .fontWeight(.none).foregroundColor(Color.white)
                                                    Spacer()
                                                    Spacer()
                                                }
                                                VStack {
                                                    Spacer().frame(minHeight: 10, maxHeight: 30)
                                                    HStack  {
                                                      //  Spacer()
                                                        Text("Product Name").foregroundColor(Color.white)
                                                            .font(.system(size: 16.9))
                                                           
                                                        Spacer()
                                                        
                                                    }
                                                    Spacer()
                                                    HStack{
                                                       
                                                        Text("Brand Name").font(.system(size: 13)).foregroundColor(Color.white)
                                                        Spacer()
                                                    }
                                                    Spacer()
                                                    HStack{
                                                        
                                                      
                                                        Text("$").font(.system(size: 16)).foregroundColor(Color.white)
                                                            .fontWeight(.semibold)
                                                        Text("29 99").font(.system(size: 13))
                                                            .fontWeight(.none).foregroundColor(Color.white)
                                                        Spacer()
                                                            
                                                    }
                                                    Spacer()
                                                    HStack{
                                                       
                                                        Text("Date:").font(.system(size: 13)).foregroundColor(Color.white)
                                                            .fontWeight(.none)
                                                        Text("10:12:2021").font(.system(size: 13))
                                                            .fontWeight(.none).foregroundColor(Color.white)
                                                        Spacer()
                                                    }
                                                    
                                                    Spacer()
                                                    Spacer().frame(minHeight: 10, maxHeight: 60)
                                                    
                                                }
                                                
                                                Spacer()
                                                
                                              
                                            }
                                            
                                          
                                                .frame(width: 250, height: 185)
                                                .background(Color.black)
                                                .cornerRadius(10)
                                                
                                        }
                                       
                                    }
                                
                                }
                            })
                        }

                    
                    }
                }

                }.padding()
                
            }
            
        }
          
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
       
        
    }
}


struct POpOver : View {
    var body: some View{
        VStack(alignment: .center){
            
            VStack{
                
                Text("Filters").font(.system(size: 22)).padding()
                
                
            }
            Divider().frame(height: 1).background(Color("CustomColor1")).padding()
            
            Button(action: {
                
            }) {
                
                HStack(spacing : 15){
                    
                    Text("Product")
                    Spacer()
                    
                    Image(systemName: "arrowtriangle.down.fill")
                        .renderingMode(.original)
                }
                
                
            }
            .frame(width:150, height: 40).background(Color("CustomColor2")).cornerRadius(8)
                

            Button(action: {

            }) {
                HStack(spacing : 15){
                   
                    Text("State")
                   
                    Spacer()
                    Image(systemName: "arrowtriangle.down.fill")
                        .renderingMode(.original)
                   
                }

            }
            .frame(width:155, height: 40).background(Color("CustomColor2")).cornerRadius(8)
               

            Button(action: {

            }) {
                HStack(spacing : 15){
                    
                    Text("City")
                    
                    Spacer()
                    Image(systemName: "arrowtriangle.down.fill")
                        .renderingMode(.original)
                }

            }
            
            .frame(width:155, height: 40).background(Color("CustomColor2")).cornerRadius(8)
               
        }
        .foregroundColor(Color.white)
        .frame(width: 165)
        .padding()
        .background(Color.black)
        .cornerRadius(12)
        
    }
}
