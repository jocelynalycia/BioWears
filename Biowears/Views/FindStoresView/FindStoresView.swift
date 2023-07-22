import SwiftUI

struct FindStoresView: View {
    @StateObject var findStoresViewModel = FindStoresViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                VStack {
                    Image("img_group")
                        .resizable()
                        .frame(width: getRelativeWidth(41.0), height: getRelativeWidth(41.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(32.0))
                    VStack {
                        HStack {
                            Spacer()
                            Image("img_vector")
                                .resizable()
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeHeight(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(14.0))
                                .padding(.bottom, getRelativeHeight(15.0))
                                .padding(.leading, getRelativeWidth(21.0))
                                .padding(.trailing, getRelativeWidth(11.0))
                            TextField(StringConstants.kLblFindStores,
                                      text: $findStoresViewModel.languageText)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(20.0)))
                                .foregroundColor(ColorConstants.Black90087)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(386.0), height: getRelativeHeight(49.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 24.5, topRight: 24.5, bottomLeft: 24.5,
                                                   bottomRight: 24.5)
                                .fill(ColorConstants.Gray202))
                        .padding(.horizontal, getRelativeWidth(23.0))
                        HStack {
                            Image("img_vector_black_900_22x22")
                                .resizable()
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeWidth(22.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(2.0))
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblNearMe)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(17.0)))
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(5.0))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(134.0),
                                               height: getRelativeHeight(32.0),
                                               alignment: .topLeading)
                                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                                   bottomLeft: 16.0,
                                                                   bottomRight: 16.0)
                                                .fill(ColorConstants.Gray202))
                                        .padding(.leading, getRelativeWidth(13.0))
                                }
                            })
                            .frame(width: getRelativeWidth(134.0), height: getRelativeHeight(32.0),
                                   alignment: .topLeading)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                       bottomLeft: 16.0, bottomRight: 16.0)
                                    .fill(ColorConstants.Gray202))
                            .padding(.leading, getRelativeWidth(13.0))
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblRating35)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(17.0)))
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                        .padding(.vertical, getRelativeHeight(5.0))
                                        .foregroundColor(ColorConstants.Black900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(134.0),
                                               height: getRelativeHeight(32.0),
                                               alignment: .topLeading)
                                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                                   bottomLeft: 16.0,
                                                                   bottomRight: 16.0)
                                                .fill(ColorConstants.Gray202))
                                        .padding(.leading, getRelativeWidth(8.0))
                                }
                            })
                            .frame(width: getRelativeWidth(134.0), height: getRelativeHeight(32.0),
                                   alignment: .topLeading)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                       bottomLeft: 16.0, bottomRight: 16.0)
                                    .fill(ColorConstants.Gray202))
                            .padding(.leading, getRelativeWidth(8.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(32.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(9.0))
                        .padding(.horizontal, getRelativeWidth(28.0))
                        ZStack(alignment: .bottomLeading) {
                            Image("img_image4")
                                .resizable()
                                .frame(width: getRelativeWidth(226.0),
                                       height: getRelativeHeight(407.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(224.0))
                                .padding(.trailing, getRelativeWidth(204.0))
                            ZStack(alignment: .center) {
                                Image("img_img1648remove")
                                    .resizable()
                                    .frame(width: getRelativeWidth(141.0),
                                           height: getRelativeHeight(151.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(73.0))
                                    .padding(.trailing, getRelativeWidth(289.0))
                                Image("img_img1649modifi")
                                    .resizable()
                                    .frame(width: getRelativeWidth(141.0),
                                           height: getRelativeHeight(135.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(81.0))
                                    .padding(.horizontal, getRelativeWidth(144.0))
                                Image("img_img1651modifi")
                                    .resizable()
                                    .frame(width: getRelativeWidth(145.0),
                                           height: getRelativeHeight(140.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.bottom, getRelativeHeight(89.0))
                                    .padding(.leading, getRelativeWidth(285.0))
                                Image("img_img1650modifi")
                                    .resizable()
                                    .frame(width: getRelativeWidth(125.0),
                                           height: getRelativeHeight(89.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(140.0))
                                    .padding(.trailing, getRelativeWidth(224.0))
                                Image("img_img1652modifi")
                                    .resizable()
                                    .frame(width: getRelativeWidth(183.0),
                                           height: getRelativeHeight(79.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(140.0))
                                    .padding(.leading, getRelativeWidth(193.0))
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(229.0),
                                   alignment: .bottomLeading)
                            .padding(.top, getRelativeHeight(402.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(631.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(21.0))
                        Text("tabbar")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(89.0), alignment: .leading)
                            .background(ColorConstants.WhiteA700)
                            .shadow(color: ColorConstants.Black90014, radius: 15, x: 0, y: -3)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(853.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(909.0),
                       alignment: .leading)
                .background(ColorConstants.WhiteA700)
                Text("tabbar")
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(89.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                    .shadow(color: ColorConstants.Black90014, radius: 15, x: 0, y: -3)
            }
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

struct FindStoresView_Previews: PreviewProvider {
    static var previews: some View {
        FindStoresView()
    }
}
