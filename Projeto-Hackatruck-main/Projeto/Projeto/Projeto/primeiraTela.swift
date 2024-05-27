import SwiftUI

struct primeiraTela: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("scm")
                    .resizable()
                    .grayscale(0.8)
                    .scaledToFill()
                    .ignoresSafeArea()
                //
                
                LinearGradient(colors: [.black, .blue], startPoint: .top, endPoint: .bottom)
                    .opacity(0.8)
                    .ignoresSafeArea()
                
                //            Color .dourado
                VStack {
                    Text("BEM VINDO!")
                        .font(.title)
                        .padding()
                        .background(Color.colorBlue)
                        .clipShape(Capsule())
                    Spacer()
                    Button("Usuário"){
                        print("Button pressed!")
                    }
                    .foregroundStyle(.white)
                    .padding(.horizontal, 80)
                    .padding(.vertical, 20)
                    .background(Color.black)
                    .clipShape(Capsule())
                    
                    NavigationLink(destination: loginEconomista()){
                        Text("Economista")
                            .foregroundStyle(.white)
                            .padding(.horizontal, 70)
                            .padding(.vertical, 20)
                            .background(Color.black)
                            .background(Color.colorBlue)
                            .clipShape(Capsule())
                    }
                    Spacer()
                        
                }
            }
        }
    }
}


#Preview {
    primeiraTela()
}
