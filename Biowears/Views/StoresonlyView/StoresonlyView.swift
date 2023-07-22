import SwiftUI

struct StoresonlyView: View {
    @StateObject var storesonlyViewModel = StoresonlyViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .trailing, spacing: 0) {
                VStack {
                    VStack {
                        Image("img_group")
                            .resizable()
                            .frame(width: getRelativeWidth(41.0), height: getRelativeWidth(41.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal, getRelativeWidth(30.0))
                        ScrollView(.horizontal, showsIndicators: false) {
                            VStack {
                                HStack {
                                    Spacer()
                                    Text(StringConstants.kLblNew)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(19.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(42.0),
                                               height: getRelativeHeight(29.0),
                                               alignment: .topLeading)
                                    Text(StringConstants.kLblSale)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Red700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(33.0),
                                               height: getRelativeHeight(23.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(4.0))
                                        .padding(.leading, getRelativeWidth(8.0))
                                    Text(StringConstants.kLblTrending)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(69.0),
                                               height: getRelativeHeight(23.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(5.0))
                                        .padding(.leading, getRelativeWidth(7.0))
                                    Text(StringConstants.kLblTops)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(37.0),
                                               height: getRelativeHeight(23.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(6.0))
                                        .padding(.leading, getRelativeWidth(7.0))
                                    Text(StringConstants.kLblBottoms)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(65.0),
                                               height: getRelativeHeight(23.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(4.0))
                                        .padding(.leading, getRelativeWidth(7.0))
                                    Text(StringConstants.kLblOuters)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(52.0),
                                               height: getRelativeHeight(23.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(4.0))
                                        .padding(.leading, getRelativeWidth(7.0))
                                    Text(StringConstants.kLblOnePiece)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(82.0),
                                               height: getRelativeHeight(23.0), alignment: .center)
                                        .padding(.vertical, getRelativeHeight(5.0))
                                        .padding(.leading, getRelativeWidth(7.0))
                                    Text(StringConstants.kLblAccessories)
                                        .font(FontScheme
                                            .kPoppinsSemiBold(size: getRelativeHeight(15.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(92.0),
                                               height: getRelativeHeight(23.0), alignment: .center)
                                        .padding(.top, getRelativeHeight(4.0))
                                        .padding(.leading, getRelativeWidth(7.0))
                                }
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(29.0), alignment: .trailing)
                                Image("img_vector_black_900_38x295")
                                    .resizable()
                                    .frame(width: getRelativeWidth(295.0),
                                           height: getRelativeHeight(38.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(26.0))
                                    .padding(.horizontal, getRelativeWidth(50.0))
                                HStack {
                                    Image("img_13132271")
                                        .resizable()
                                        .frame(width: getRelativeWidth(177.0),
                                               height: getRelativeHeight(230.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Spacer()
                                    Image("img_image16")
                                        .resizable()
                                        .frame(width: getRelativeWidth(173.0),
                                               height: getRelativeHeight(230.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(22.0))
                                }
                                .frame(width: getRelativeWidth(372.0),
                                       height: getRelativeHeight(230.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(30.0))
                                .padding(.horizontal, getRelativeWidth(12.0))
                                HStack {
                                    Image("img_image17")
                                        .resizable()
                                        .frame(width: getRelativeWidth(177.0),
                                               height: getRelativeHeight(236.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Spacer()
                                    Image("img_image18")
                                        .resizable()
                                        .frame(width: getRelativeWidth(177.0),
                                               height: getRelativeHeight(236.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(15.0))
                                }
                                .frame(width: getRelativeWidth(369.0),
                                       height: getRelativeHeight(236.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(81.0))
                                .padding(.horizontal, getRelativeWidth(12.0))
                                Text(StringConstants.kMsgJosephineLinen)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(145.0),
                                           height: getRelativeHeight(61.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(7.0))
                                    .padding(.horizontal, getRelativeWidth(48.0))
                            }
                            .frame(width: getRelativeWidth(413.0), alignment: .topLeading)
                        }
                        .padding(.top, getRelativeHeight(27.0))
                    }
                    .frame(width: getRelativeWidth(413.0), height: getRelativeHeight(809.0),
                           alignment: .center)
                    .padding(.leading, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(809.0),
                       alignment: .leading)
                VStack(alignment: .leading, spacing: 0) {}
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(89.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(10.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(23.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct StoresonlyView_Previews: PreviewProvider {
    static var previews: some View {
        StoresonlyView()
    }
}
