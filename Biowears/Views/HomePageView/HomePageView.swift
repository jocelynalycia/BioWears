import SwiftUI

struct HomePageView: View {
    @StateObject var homePageViewModel = HomePageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            Image("img_group")
                                .resizable()
                                .frame(width: getRelativeWidth(41.0),
                                       height: getRelativeWidth(41.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.horizontal, getRelativeWidth(33.0))
                            Image("img_istockphoto127")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(236.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(33.0))
                            ZStack(alignment: .leading) {
                                Image("img_imageasset1")
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(170.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        homePageViewModel.nextScreen = "ClothingAccessoriesView"
                                    }
                                Text(StringConstants.kMsgClothesAcces)
                                    .font(FontScheme.kPoppins(size: getRelativeHeight(36.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(224.0),
                                           height: getRelativeHeight(88.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(46.0))
                                    .padding(.trailing, getRelativeWidth(160.0))
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(170.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(22.0))
                            ZStack(alignment: .leading) {
                                Image("img_photo144198490")
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(170.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        homePageViewModel.nextScreen = "FindStoresView"
                                    }
                                Text(StringConstants.kLblStores)
                                    .font(FontScheme.kPoppins(size: getRelativeHeight(36.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(118.0),
                                           height: getRelativeHeight(54.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(45.0))
                                    .padding(.trailing, getRelativeWidth(267.0))
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(170.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(21.0))
                            ZStack(alignment: .bottomLeading) {
                                Image("img_download1")
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(202.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        homePageViewModel.nextScreen = "SustainabilityView"
                                    }
                                ZStack(alignment: .bottomLeading) {
                                    Text(StringConstants.kLblSustainability)
                                        .font(FontScheme
                                            .kPoppinsBold(size: getRelativeHeight(36.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Gray100)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(260.0),
                                               height: getRelativeHeight(54.0),
                                               alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(47.0))
                                        .padding(.trailing, getRelativeWidth(129.0))
                                    Image("img_search")
                                        .resizable()
                                        .frame(width: UIScreen.main.bounds.width,
                                               height: getRelativeHeight(89.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(12.65))
                                }
                                .hideNavigationBar()
                                .frame(width: UIScreen.main.bounds.width,
                                       height: getRelativeHeight(101.0),
                                       alignment: .bottomLeading)
                                .padding(.top, getRelativeHeight(77.35))
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(202.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(24.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.vertical, getRelativeHeight(34.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SustainabilityView(),
                                   tag: "SustainabilityView",
                                   selection: $homePageViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: ClothingAccessoriesView(),
                                   tag: "ClothingAccessoriesView",
                                   selection: $homePageViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: FindStoresView(),
                                   tag: "FindStoresView",
                                   selection: $homePageViewModel.nextScreen,
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
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
