import 'package:bende_fazla_final/feature/onboard/model/on_board_model.dart';
import 'package:bende_fazla_final/product/enums/index.dart';

class OnboardItems {
  late final List<OnboardModel> onBoarditems;

  OnboardItems() {
    onBoarditems = [
      OnboardModel(
        img: AppLotties.think.toLottie,
        title: "Bende Fazla",
        desc: "Etrafınızda sahip olduğunuz şeylere dikkatlice bakın. Eğer ihtiyacınız yoksa bir düşünün.",
      ),
      OnboardModel(
        img: AppLotties.takePicture.toLottie,
        title: "Resmini Çek",
        desc: "Sende fazla olan şeylerin resmini çekerek uygulamaya ekle. Kullanmadığın eşyaların yeni bir hayat bulsun.",
      ),
      OnboardModel(
        img: AppLotties.food.toLottie,
        title: "İlana Ekle",
        desc: "Fazla yiyeceklerin son kullanma tarihi geçmeden ilana ekle. Paylaş, yardım et ve dünyayı daha iyi bir yer yap!",
      ),
      OnboardModel(
        img: AppLotties.donateBox.toLottie,
        title: "Bağış Yap",
        desc:
            "Kendinize şunu sorun: Eğer benim için yararlı değilse... başkası için yararlı olabilir mi? İhtiyacı olanlara ulaştır, çevreye katkıda bulun!",
      ),
      OnboardModel(
        img: AppLotties.love.toLottie,
        title: "İsrafı Önle",
        desc:
            "Fazlasıyla sahip olduğun her şeyi burada bağışla, insanlara yardım et ve dünyayı daha iyi bir yer yapmaya yardımcı ol!",
      ),
    ];
  }
}
