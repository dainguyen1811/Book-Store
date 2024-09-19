class GreatBook {
  final String name;
  final String authorname;
  final String description;
  final String image;
  final double price;

  GreatBook(
      {required this.name,
      required this.authorname,
      required this.description,
      required this.image,
      required this.price});
}

List<GreatBook> greatBook = [
  GreatBook(
      name: "Vì sao bạn ế ?",
      authorname: "Ngô Thế Vinh",
      description:
          "Cuốn sách là một “bản tuyên ngôn” đầy khí thế đáp trả lại cả thế giới – nơi luôn gắn giá trị người phụ nữ với tình trạng hôn nhân. Từ kinh nghiệm sống của mình, qua các bài phỏng vấn những người độc thân khác, cùng các bài nghiên cứu Tâm lý học và Xã hội học, tác giả Sara Eckel – một phụ nữ sống độc thân trong gần 40 năm, đã đúc rút ra rằng: Mối quan hệ tình cảm chỉ là do may mắn.",
      image: "image/whyareyougay.jpeg",
      price: 120.000),
  GreatBook(
      name: "Đắc nhân tâm ",
      authorname: "Dale Carnegie",
      description:
          "Đắc nhân tâm là một trong những quyển sách hay nhất mà tôi từng đọc về kỹ năng giao tiếp và ứng xử. Qua những câu chuyện và ví dụ thực tế, tác giả Dale Carnegie đã chỉ ra rằng muốn thành công trong công việc và cuộc sống, chúng ta cần biết cách thu phục lòng người. Điều quan trọng nhất là phải thấu hiểu tâm lý con người, để từ đó biết cách tiếp cận và ứng xử phù hợp.",
      image: "image/darknkantam.jpeg",
      price: 150.000),
  GreatBook(
      name: "Kẻ xuất chúng",
      authorname: "MalColm GladWell",
      description:
          "Cuốn sách Những kẻ xuất chúng sẽ giúp bạn tìm ra câu trả lời thông qua các phân tích về xã hội, văn hóa và thế hệ của những nhân vật kiệt xuất như Bill Gates, Beatles và Mozart, bên cạnh những thất bại đáng kinh ngạc của một số người khác (ví dụ: Christopher Langan, người có chỉ số IQ cao hơn Einstein nhưng rốt cuộc lại quay về làm việc trong một trại ngựa). Theo đó, cùng với tài năng và tham vọng, những người thành công đều được thừa hưởng một cơ hội đặt biệt để rèn luyện kỹ năng và cho phép họ vượt lên những người cùng trang lứa.",
      image: "image/kexuatchung.png",
      price: 130.000),
  GreatBook(
      name: "Nhà giả kim",
      authorname: "Paulo Coelho",
      description:
          "Nhà giả kim là một cuốn sách đặc biệt ý nghĩa, mang đến những bài học sâu sắc cho độc giả. Tác phẩm kể về chàng chăn cừu Santiago, người quyết tâm thực hiện giấc mơ tìm kho báu ở xứ sở Ai Cập bằng chuyến hành trình đầy gian nan và thử thách.\nTrong hành trình đó, Santiago gặp phải nhiều khó khăn nhưng anh không bao giờ từ bỏ giấc mơ của mình. Cuốn sách truyền tải thông điệp về việc theo đuổi đam mê, sống có mục đích và kiên trì vượt qua mọi thử thách để đạt được mục tiêu. Những bài học về tình bạn, lòng can đảm, sự hy sinh và niềm tin cũng được thể hiện xuyên suốt tác phẩm. \n Với ngôn từ giản dị nhưng sâu sắc, Nhà giả kim đã chinh phục hàng triệu độc giả trên thế giới. Đây chắc chắn là cuốn sách hay nên đọc, mang lại nhiều bài học ý nghĩa cho cuộc sống. Nếu bạn đang cần một động lực để vượt qua những khó khăn trong cuộc sống, mình khuyên bạn hãy dành thời gian đọc nó để có thêm động lực theo đuổi ước mơ và sống có mục đích hơn.  ",
      image: "image/999lathu.jpeg",
      price: 120.000),
];

class Novel {
  final String name;
  final String authorname;
  final String description;
  final String image;
  final double price;

  Novel(
      {required this.name,
      required this.authorname,
      required this.description,
      required this.image,
      required this.price});
}

class RecommemndBook {
  final String name;
  final String image;
  final String authorname;

  RecommemndBook(
      {required this.name, required this.image, required this.authorname});
}

final List<RecommemndBook> recommendBook = [
  RecommemndBook(
      name: 'Bố già',
      authorname: 'Mario Puzo',
      image: 'book_store/image/bogia.jpeg'),
  RecommemndBook(
      name: 'Nghĩ giàu làmg giàu',
      authorname: 'Napoleon Hill',
      image: 'book_store/image/nghigiau.jpeg'),
  RecommemndBook(
      name: 'Nhà giả kim',
      authorname: 'Paulo Coelho',
      image: 'book_store/image/nhagiakim1.jpeg'),
];

class RomanceNovel {
  final String name;
  final String authorname;
  final String description;
  final String image;
  final double price;

  RomanceNovel(
      {required this.name,
      required this.authorname,
      required this.description,
      required this.image,
      required this.price});
}

class ContinueBook {
  final String name;
  final String image;
  final String description;
  final String authorname;

  ContinueBook({
    required this.name,
    required this.image,
    required this.description,
    required this.authorname,
  });
}

final List<ContinueBook> ctnBook = [
  ContinueBook(
    name: "999 lá thư gửi cho chính  mình",
    image: "image/999lathu.jpeg",
    description:
        "999 Lá thư gửi cho chính mình là một cuốn sách khá đặc biệt được chắp bút bởi Miêu Công Tử (Quỳnh Nhi dịch). Bộ sách bao gồm hai tập với phần I gồm 561 bức thư và phần II với 439 lời gửi gắm còn lại. Với hai thông điệp quan trọng bao quát hai tập truyện: “Mong bạn trở thành phiên bản hoàn hảo nhất” và “Mong bạn trở thành phiên bản hạnh phúc nhất”, 999 Lá thư gửi cho chính mình đem tới những chia sẽ từ trong sâu thẳm tâm hồn con người. Đánh động trái tim và tâm trí, truyền cảm hứng và khơi dậy những điều tích cực, hi vọng độc giả thưởng thức cuốn sách và chọn cho mình những câu nói tâm đắc nhất. Mời độc giả đến với 999 Lá thư gửi cho chính mình!",
    authorname: "Miêu Công Tử",
  ),
  ContinueBook(
    name: "Bạn đắt giá bao nhiêu ?",
    image: "image/bandatgiabaonhieu.webp",
    description:
        "Mỗi sinh mệnh chào đời đều có những sứ mệnh riêng, đặc biệt và không trùng lặp. Để trở thành người phụ nữ hoàn hảo, thông tuệ, xuất sắc, tự tin và độc lập thì đó là cả một quá trình gian nan, không ngừng nỗ lực hoàn thiện bản thân sau những vấp ngã của cuộc đời. Khi chúng ta đủ xuất sắc, chúng ta sẽ có được một trái tim nhạy cảm với đôi mắt trong trẻo, nhìn thấu được thực tại và sự khắc nghiệt của cuộc sống. Ta có thể mạnh mẽ lên tiếng giữ tiếng nói cá nhân, phân biệt mọi thị phi đúng sai, mà vẫn giữ được khí chất, sự tự tin và nhiệt huyết. Hi vọng mỗi cô gái sau khi đọc “Bạn đắt giá bao nhiêu?” của Vãn Tình, đều có thể trở nên hoàn hảo và xứng đáng được hưởng cuộc sống tốt đẹp, được yêu thương và trân trọng. ",
    authorname: "Văn Tình",
  ),
];

final List<String> Categorylist = ['Sách hay', 'Tiểu thuyết', 'Ngôn tình'];
