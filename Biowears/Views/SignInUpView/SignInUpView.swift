import SwiftUI

struct SignInUpView: View {
    @StateObject var signInUpViewModel = SignInUpViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgLogIntoYourA)
                            .font(FontScheme.kPoppins(size: getRelativeHeight(40.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(265.0), height: getRelativeHeight(116.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(15.0))
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgThriving4Gmail,
                                          text: $signInUpViewModel.emailText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                                    .foregroundColor(ColorConstants.Black900)
                                    .padding()
                                    .keyboardType(.emailAddress)
                            }
                            .onChange(of: signInUpViewModel.emailText) { newValue in

                                signInUpViewModel.isValidEmailText = newValue
                                    .isValidEmail(isMandatory: true)
                            }
                            .frame(width: getRelativeWidth(317.0), height: getRelativeHeight(53.0),
                                   alignment: .trailing)
                            .background(RoundedCorners(topLeft: 26.5, topRight: 26.5,
                                                       bottomLeft: 26.5, bottomRight: 26.5)
                                    .fill(ColorConstants.WhiteA700))
                            .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                            .padding(.top, getRelativeHeight(28.0))
                            .padding(.leading, getRelativeWidth(10.0))
                            if !signInUpViewModel.isValidEmailText {
                                Text("Please enter valid email.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                                    .frame(width: getRelativeWidth(317.0),
                                           height: getRelativeHeight(53.0), alignment: .trailing)
                            }
                        }
                        ZStack {
                            Image("img_screenshot2023")
                                .resizable()
                                .frame(width: getRelativeWidth(106.0),
                                       height: getRelativeHeight(15.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(17.0))
                                .padding(.trailing, getRelativeWidth(194.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(317.0), height: getRelativeHeight(53.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 26.5, topRight: 26.5, bottomLeft: 26.5,
                                                   bottomRight: 26.5)
                                .fill(ColorConstants.WhiteA700))
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        HStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(13.0),
                                       height: getRelativeWidth(13.0), alignment: .center)
                                .background(ColorConstants.Bluegray100)
                            Text(StringConstants.kLblRememberMe)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(90.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(7.0))
                        }
                        .frame(width: getRelativeWidth(110.0), height: getRelativeHeight(18.0),
                               alignment: .trailing)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        Button(action: {
                            signInUpViewModel.nextScreen = "HomePageView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblLogIn)
                                    .font(FontScheme.kPoppins(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(13.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(317.0),
                                           height: getRelativeHeight(53.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 26.5, topRight: 26.5,
                                                               bottomLeft: 26.5, bottomRight: 26.5)
                                            .fill(ColorConstants.Black900))
                                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                    .padding(.top, getRelativeHeight(8.0))
                                    .padding(.leading, getRelativeWidth(10.0))
                            }
                        })
                        .frame(width: getRelativeWidth(317.0), height: getRelativeHeight(53.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 26.5, topRight: 26.5, bottomLeft: 26.5,
                                                   bottomRight: 26.5)
                                .fill(ColorConstants.Black900))
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        HStack {
                            Text(StringConstants.kMsgDonTHaveAnA)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(143.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblSignUp)
                                .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(11.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(42.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(7.0))
                        }
                        .frame(width: getRelativeWidth(192.0), height: getRelativeHeight(18.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(187.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(332.0), height: getRelativeHeight(574.0),
                           alignment: .bottomLeading)
                    .padding(.top, getRelativeHeight(235.96))
                    .padding(.trailing, getRelativeWidth(58.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray200)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HomePageView(),
                                   tag: "HomePageView",
                                   selection: $signInUpViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Gray200)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            signInUpViewModel.nextScreen = "HomePageView"
        }
    }
}

struct SignInUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignInUpView()
    }
}
