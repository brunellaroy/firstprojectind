import SwiftUI

struct TrendingItem: Identifiable {
    let id = UUID()
    let imageURL: String
}

let trendingItems: [TrendingItem] = [
    TrendingItem(imageURL: "https://info.subito.it/app/uploads/2025/10/360x300_BannerLPTuttoSubito_Mobile_Superboost.png"),
    TrendingItem(imageURL:"https://cdn.shortpixel.ai/spai/q_lossy+ex_1+ret_img+to_auto/www.lapaginadeglisconti.it/wp-content/uploads/2022/07/approfitta-della-promo-sconto-subito-da-mediaworld-piu-spendi-piu-lo-sconto-aumenta.png"),
    TrendingItem(imageURL: "https://www.gizdeals.it/wp-content/uploads/2021/10/mediaworld-sconto-subito-wow-offerte-02-1024x465.jpg"),
    TrendingItem(imageURL: "https://info.subito.it/app/uploads/2025/10/360x300_BannerLPTuttoSubito_Mobile_Superboost.png")
]

struct TrendingHorizontalCard: View {
    let item: TrendingItem
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color(.systemGray6))
                    .frame(width: 120, height: 120)
                
                AsyncImage(url: URL(string: item.imageURL)) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    } else if phase.error != nil {
                        Image(systemName: "xmark.octagon.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    } else {
                        ProgressView()
                    }
                }
            }
        }
    }
}
