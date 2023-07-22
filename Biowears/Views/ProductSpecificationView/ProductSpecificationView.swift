import SwiftUI

struct ProductSpecificationView: View {
    @StateObject var productSpecificationViewModel = ProductSpecificationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ZStack(alignment: .topLeading) {
                                Image("img_image14")
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(657.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Image("img_arrowleft")
                                    .resizable()
                                    .frame(width: getRelativeWidth(21.0),
                                           height: getRelativeHeight(16.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(586.94))
                                    .padding(.trailing, getRelativeWidth(383.31))
                                    .onTapGesture {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(657.0), alignment: .center)
                            Image("img_image15")
                                .resizable()
                                .frame(width: getRelativeWidth(425.0),
                                       height: getRelativeHeight(656.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(73.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(657.0),
                               alignment: .leading)
                    }
                    Text(StringConstants.kMsgOffTheShoulde)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(17.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(186.0), height: getRelativeHeight(54.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(15.0))
                        .padding(.horizontal, getRelativeWidth(19.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(726.0),
                       alignment: .leading)
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(43.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct ProductSpecificationView_Previews: PreviewProvider {
    static var previews: some View {
        ProductSpecificationView()
    }
}
