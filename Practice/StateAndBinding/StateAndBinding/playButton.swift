// playButton View

import SwiftUI

struct playButton: View {
    
    //isPlaying 바인딩
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(action: {
            //애니메이션과 함께
            withAnimation{
                self.isPlaying.toggle()
            }
        }) {
            //재생중이면 일시정지 버튼
            if(self.isPlaying) {
                Image(systemName: "pause.fill")
                    .foregroundColor(Color.blue)
            //재생중이지 않으면 재생버튼 생성
            } else {
                Image(systemName: "play.fill")
                    .foregroundColor(Color.black)
            }
        }
        .font(.system(size: 30))
        .padding(12)
    }
}
