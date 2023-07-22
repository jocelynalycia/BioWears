import SwiftUI

struct ClothingAccessoriesView: View {
    @StateObject var clothingAccessoriesViewModel = ClothingAccessoriesViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Image("img_vector")
                                .resizable()
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeHeight(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(17.0))
                                .padding(.bottom, getRelativeHeight(18.0))
                                .padding(.leading, getRelativeWidth(128.0))
                            Text(StringConstants.kLblSearch)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Black90087)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(68.0),
                                       height: getRelativeHeight(25.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(14.0))
                                .padding(.bottom, getRelativeHeight(15.0))
                                .padding(.leading, getRelativeWidth(14.0))
                                .padding(.trailing, getRelativeWidth(150.0))
                        }
                        .frame(width: getRelativeWidth(384.0), height: getRelativeHeight(55.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 27.5, topRight: 27.5, bottomLeft: 27.5,
                                                   bottomRight: 27.5)
                                .fill(ColorConstants.Gray201))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                Text(StringConstants.kLblNew)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(19.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(42.0),
                                           height: getRelativeHeight(29.0), alignment: .topLeading)
                                Text(StringConstants.kLblSale)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(15.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Red700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(33.0),
                                           height: getRelativeHeight(23.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(8.0))
                                Text(StringConstants.kLblTrending)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(15.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(69.0),
                                           height: getRelativeHeight(23.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(7.0))
                                Text(StringConstants.kLblTops)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(15.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(37.0),
                                           height: getRelativeHeight(23.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(7.0))
                                Text(StringConstants.kLblBottoms)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(15.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(65.0),
                                           height: getRelativeHeight(23.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(7.0))
                                Text(StringConstants.kLblOuters)
                                    .font(FontScheme
                                        .kPoppinsSemiBold(size: getRelativeHeight(15.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(52.0),
                                           height: getRelativeHeight(23.0), alignment: .topLeading)
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
                                    .padding(.leading, getRelativeWidth(7.0))
                            }
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(29.0), alignment: .trailing)
                        }
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        ZStack(alignment: .bottomLeading) {
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 2, id: \.self) { index in
                                            RowCell(imagetwoClick: {})
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(406.0), alignment: .trailing)
                            .padding(.leading, getRelativeWidth(24.0))
                            Image("img_search")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(89.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(635.0))
                        }
                        .hideNavigationBar()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(752.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(25.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                }
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(74.0))
            .padding(.bottom, getRelativeHeight(71.0))
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct ClothingAccessoriesView_Previews: PreviewProvider {
    static var previews: some View {
        ClothingAccessoriesView()
    }
}
