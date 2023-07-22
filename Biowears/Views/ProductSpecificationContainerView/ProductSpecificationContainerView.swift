import SwiftUI

struct ProductSpecificationContainerView: View {
    @StateObject var productSpecificationContainerViewModel =
        ProductSpecificationContainerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Content")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(843.0))
                    Text("tabbar")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(89.0), alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                        .shadow(color: ColorConstants.Black90014, radius: 15, x: 0, y: -3)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ClothingAccessoriesView(),
                                   tag: "ClothingAccessoriesView",
                                   selection: $productSpecificationContainerViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {}
    }
}

struct ProductSpecificationContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ProductSpecificationContainerView()
    }
}
