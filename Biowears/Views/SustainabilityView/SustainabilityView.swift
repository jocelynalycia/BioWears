import SwiftUI

struct SustainabilityView: View {
    @StateObject var sustainabilityViewModel = SustainabilityViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            ZStack(alignment: .center) {
                Image("img_1668f9e8dc95bac")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                           alignment: .topLeading)
                    .scaledToFit()
                    .clipped()
                VStack {
                    Text(StringConstants.kMsgBuyLessChoos)
                        .font(FontScheme.kPoppins(size: getRelativeHeight(50.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(320.0), height: getRelativeHeight(179.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(8.0))
                    VStack {
                        Text(StringConstants.kLblBiowears)
                            .font(FontScheme.kPoppins(size: getRelativeHeight(50.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(247.0), height: getRelativeHeight(75.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(28.0))
                            .padding(.horizontal, getRelativeWidth(30.0))
                        Text(StringConstants.kMsgSeeingHowThe)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(20.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(276.0), height: getRelativeHeight(237.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(14.0))
                            .padding(.horizontal, getRelativeWidth(30.0))
                    }
                    .frame(width: getRelativeWidth(337.0), height: getRelativeHeight(398.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 30.0, topRight: 30.0, bottomLeft: 30.0,
                                               bottomRight: 30.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(77.0))
                }
                .frame(width: getRelativeWidth(337.0), height: getRelativeHeight(655.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(141.0))
                .padding(.horizontal, getRelativeWidth(47.0))
            }
            .hideNavigationBar()
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct SustainabilityView_Previews: PreviewProvider {
    static var previews: some View {
        SustainabilityView()
    }
}
