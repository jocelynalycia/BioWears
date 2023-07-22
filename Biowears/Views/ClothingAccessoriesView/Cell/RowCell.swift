import SwiftUI

struct RowCell: View {
    var imagetwoClick: (() -> Void)?
    var body: some View {
        HStack {
            Image("img_image2")
                .resizable()
                .frame(width: getRelativeWidth(166.0), height: getRelativeHeight(225.0),
                       alignment: .leading)
                .scaledToFit()
                .onTapGesture {
                    imagetwoClick?()
                }
            Image("img_image3")
                .resizable()
                .frame(width: getRelativeWidth(175.0), height: getRelativeHeight(225.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(32.0))
            Image("img_image8")
                .resizable()
                .frame(width: getRelativeWidth(165.0), height: getRelativeHeight(225.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(32.0))
        }
        .frame(width: getRelativeWidth(404.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowCell()
 }
 } */
