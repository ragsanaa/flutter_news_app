import 'package:flutter_eigth/classes/news.dart';

List<News> news_list = [
  News(
    url:
        "https://edition.cnn.com/2023/07/25/politics/hunter-biden-house-republicans-amicus-brief/index.html#:~:text=Their%20denials%20came%20in%20response,removal%20of%20the%20GOP%20filing.",
    imgPath:
        'https://media.cnn.com/api/v1/images/stellar/prod/220328164943-01-hunter-biden-2021.jpg?c=16x9&q=h_720,w_1280,c_fill/f_webp',
    title:
        'Judge threatens to sanction Hunter Biden’s lawyers after legal dispute with GOP lawmaker',
    logoPath: 'https://assets.stickpng.com/images/5842ab75a6515b1e0ad75b0b.png',
    time: '37m',
    pressName: 'CNN',
  ),
  News(
    url:
        "https://apnews.com/article/natwest-nigel-farage-account-closed-9c9d7ef19a4ef805efbafc6784f88748",
    imgPath:
        'https://dims.apnews.com/dims4/default/2a4193e/2147483647/strip/true/crop/6000x4000+0+0/resize/1440x960!/format/webp/quality/90/?url=https%3A%2F%2Fassets.apnews.com%2F29%2F29%2Feb6e0b982a04a0e398808a6bb918%2F58b48c33049349cb898d7c658bcd1f20',
    title:
        'NatWest Bank CEO ousted after furor over politician Nigel Farage’s bank account',
    logoPath:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Associated_Press_logo_2012.svg/1200px-Associated_Press_logo_2012.svg.png',
    time: '1h',
    pressName: 'Associated Press',
  ),
  News(
    url:
        "https://www.businessinsider.com/chatgpt-sam-altman-jobs-replaced-ai-openai-2023-7",
    imgPath:
        'https://i.insider.com/63938a2da3bebb0018b3e0ed?width=2000&format=jpeg&auto=webp',
    title:
        'ChatGPT creator Sam Altman says\'jobs are definitely going to go away\'',
    logoPath:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/InsiderLogo.svg/1200px-InsiderLogo.svg.png',
    time: '17h',
    pressName: 'Insider',
  ),
  News(
    url:
        "https://www.cnet.com/tech/mobile/samsung-unpacked-everything-you-need-to-know-about-galaxy-z-fold-5-z-flip-5-watch-6-and-more/",
    imgPath:
        'https://www.cnet.com/a/img/resize/a954164139c50d532a6acd25346135aa501b1b21/hub/2022/09/02/d39ccea0-d8b9-4893-8739-7b08d055f8af/p1001229.jpg?auto=webp&width=1200',
    title:
        'Samsung Unpacked: How to Watch the Galaxy Z Fold 5, Flip 5 Event Live',
    logoPath:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/CNET_%282022%29.svg/2560px-CNET_%282022%29.svg.png',
    time: '1h ago',
    pressName: 'CNET',
  ),
  News(
    url:
        "https://www.engadget.com/samsung-galaxy-watch-6-hands-on-the-spinning-bezels-triumphant-return-110047694.html",
    imgPath:
        'https://s.yimg.com/uu/api/res/1.2/aOZZ6BinkSlKwuY_HADLlQ--~B/aD0xMjAwO3c9MjAwMDthcHBpZD15dGFjaHlvbg--/https://media-mbst-pub-ue1.s3.amazonaws.com/creatr-uploaded-images/2023-07/8619a300-2b4c-11ee-bf2b-6935125f8c82.cf.webp',
    title:
        'Samsung Galaxy Watch 6 hands-on: The spinning bezel’s triumphant return',
    logoPath:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Engadget-logo.svg/1200px-Engadget-logo.svg.png',
    time: '54 minutes ago',
    pressName: 'Engadget',
  ),
  News(
    url: "https://www.yourtango.com/2023364435/tarot-horoscope-july-26-2023",
    imgPath:
        'https://www.yourtango.com/sites/all/themes/ytpurple/img/horoscope/yt-aquarius-630.jpg',
    title: 'Every Zodiac Sign\'s Tarot Horoscope For July 26',
    logoPath:
        'https://static.wikia.nocookie.net/logopedia/images/7/7a/YourTango-logo-2016.png/revision/latest/scale-to-width-down/300?cb=20160122061315',
    time: '14 hours ago',
    pressName: 'YourTango',
  ),
  News(
    url:
        "https://www.newsbtc.com/research/we-gave-chatgpt-20000-to-invest-and-this-is-how-it-spent-it/",
    imgPath:
        'https://www.newsbtc.com/wp-content/uploads/2023/07/Header-Image-scaled.jpeg',
    title: 'We gave ChatGPT \$20,000 to invest and this is how it spent it',
    logoPath:
        'https://images.squarespace-cdn.com/content/v1/5d580747908cdc0001e6792d/1583086184753-UBS6SRKA1XT1LKM8JT9L/newsbtc.png',
    time: '5 days ago',
    pressName: 'NewsBTC',
  ),
  News(
    url:
        "https://www.stvincenttimes.com/vincentian-jenese-adams-favorite-chef-competition/",
    imgPath:
        'https://www.stvincenttimes.com/wp-content/uploads/2023/07/adams.jpg',
    title: 'Jenese Adams needs your vote to win Favorite Chef Competition 2023',
    logoPath:
        'https://www.stvincenttimes.com/wp-content/uploads/2021/11/ST-LOGO.png',
    time: '16 hours ago',
    pressName: 'St. Vincent Times',
  ),
  News(
    url: "https://www.thekitchn.com/strawberry-fluffies-recipe-review-23554461",
    imgPath:
        'https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_center,w_730,h_913/k%2FEdit%2F2023-07-strawberry-fluffies-review%2Fstrawberry-fluffies-review-8071',
    title: 'I Tried “Strawberry Fluffies” and It\'s My New Go-To Cookie',
    logoPath:
        'https://cdn.shopify.com/s/files/1/0104/5072/files/Logo-TheKitchn_01.svg?17881674156645011236',
    time: '19 hours ago',
    pressName: 'The Kitchn',
  ),
  News(
    url: "https://www.thekitchn.com/greek-potato-salad-recipe-23554316",
    imgPath:
        'https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_center,w_730,h_913/k%2Frecipes%2F2023%2F2023-07-lemony-greek-potato-salad%2Flemony-greek-potato-salad-3',
    title: 'Lemony Greek Potato Salad',
    logoPath:
        'https://cdn.shopify.com/s/files/1/0104/5072/files/Logo-TheKitchn_01.svg?17881674156645011236',
    time: '9 hours ago',
    pressName: 'The Kitchn',
  )
];
