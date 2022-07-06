import 'package:flutter/material.dart';
import 'package:sign_in_interface/Screens/HomepageScreen.dart';
import 'package:sign_in_interface/Screens/historyDetailScreen.dart';
import 'package:sign_in_interface/Screens/choicesScreen.dart';
import 'package:sign_in_interface/Widgets/background_Clipper.dart';
import 'package:sign_in_interface/Widgets/timelineCard.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class TimelineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade900,
      body: ClipPath(
        clipper: BackgroundClipper(),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade900,
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                "Travel through",
                                style: TextStyle(
                                    letterSpacing: 6,
                                    fontSize: 30,
                                    fontFamily: "ShinyBalloonDemo",
                                    color: Colors.white),
                              ),
                              Text(
                                "the History",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: "ShinyBalloonDemo",
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  margin: EdgeInsets.only(top: 220, right: 5, left: 5),
                  height: MediaQuery.of(context).size.height * 4 + 500,
                  width: MediaQuery.of(context).size.width,
                  child: Timeline(
                    children: <TimelineModel>[
                      TimelineModel(
                        getTimeline(
                            "https://www.pakpedia.pk/files/Image/Muhammad-Bin-Qasim.jpg",
                            "Muhmmad Bin Qasim",
                            "18, 715 AD",
                            HistoryDetailScreen(
                              id: 1,
                            ),
                            Colors.teal),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.pink,
                        position: TimelineItemPosition.right,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://www.heritagetimes.in/wp-content/uploads/2019/10/SAKhan.jpg",
                            "Sir Syed Ahmad Khan",
                            "1817-1898",
                            HistoryDetailScreen(
                              id: 3,
                            ),
                            Colors.cyan),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.teal,
                        position: TimelineItemPosition.left,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://upload.wikimedia.org/wikipedia/commons/5/54/A_O_Hume.jpg",
                            "AO Hume",
                            "1829-1912",
                            HistoryDetailScreen(
                              id: 4,
                            ),
                            Colors.pinkAccent),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.cyan,
                        position: TimelineItemPosition.right,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://ismailimail.files.wordpress.com/2014/07/lon-his-highness-aga-sir-sultan-muhammad-shah-aga-khan-iii-president-of-the-assembly-league-of-nations-photo-league-of-nations-archieve.jpg?w=375&h=522",
                            "Sir Agha Khan",
                            "1877-1957",
                            HistoryDetailScreen(
                              id: 5,
                            ),
                            Colors.orange.shade900),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.pinkAccent,
                        position: TimelineItemPosition.left,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn17ZPHjiRxgD2q7cH2Q9T6-4lCkp8MPhCm0j83VeYTkjjbJW_UphzNxxMFysCkHDkB8c&usqp=CAU",
                            "Nawab Saleem-Ullah Khan",
                            "1921-2017",
                            HistoryDetailScreen(
                              id: 6,
                            ),
                            Colors.indigo),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.orange.shade900,
                        position: TimelineItemPosition.right,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://nationaltoday.com/wp-content/uploads/2021/11/Quaid-e-azam-day.jpg",
                            "Quid e Azam Muhammad Ali Jinnah",
                            "1876-1948",
                            HistoryDetailScreen(
                              id: 7,
                            ),
                            Color.fromARGB(255, 15, 155, 20)),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.indigo,
                        position: TimelineItemPosition.left,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://rekhta.pc.cdn.bitgravity.com/Images/Shayar/allama-iqbal.png",
                            "Dr. Allama Muhammad Iqbal ",
                            "1877-1938",
                            HistoryDetailScreen(
                              id: 10,
                            ),
                            Colors.deepOrangeAccent),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.green,
                        position: TimelineItemPosition.right,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://images.thequint.com/thequint%2F2019-10%2F29103f21-e4bc-44df-af1d-c690630b56c5%2FHero_Image__12_.jpg?rect=0%2C0%2C2000%2C1125",
                            "Liaqat Ali Khan",
                            "1895-1951",
                            HistoryDetailScreen(
                              id: 15,
                            ),
                            Colors.teal),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.deepOrangeAccent,
                        position: TimelineItemPosition.left,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://pdfbooksfree.pk/wp-content/uploads/2012/05/Muhammad-Ayub-Khan-The-Prominent-Personality-of-the-World.jpg",
                            "General Muhammad Ayub khan ",
                            "1907-1974",
                            HistoryDetailScreen(
                              id: 16,
                            ),
                            Colors.cyan),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.teal,
                        position: TimelineItemPosition.right,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://static.wikia.nocookie.net/totalwar-ar/images/7/78/Yahya_Khan.jpg/revision/latest/scale-to-width-down/469?cb=20160425194846",
                            "General Muhammad Yahya Khan",
                            "1917-1980",
                            HistoryDetailScreen(
                              id: 17,
                            ),
                            Colors.purple),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.cyan,
                        position: TimelineItemPosition.left,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://static.theprint.in/wp-content/uploads/2018/06/Zulfikar-bhutto.jpg?compress=true&quality=80&w=376&dpr=2.6",
                            "Zulfikar Ali Bhutto",
                            "1928-1979",
                            HistoryDetailScreen(
                              id: 18,
                            ),
                            Colors.orange.shade900),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.purple,
                        position: TimelineItemPosition.right,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://www.thefamouspeople.com/profiles/images/muhammad-zia-ul-haq-1.jpg",
                            "General Muhammad Zia",
                            "1924-1988",
                            HistoryDetailScreen(
                              id: 19,
                            ),
                            Colors.indigoAccent),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.tealAccent.shade700,
                        position: TimelineItemPosition.left,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://urdubiography.com/wp-content/uploads/2020/09/Benazir-Bhutto.jpg",
                            "Benazir Bhutto",
                            "1953-2008",
                            HistoryDetailScreen(
                              id: 20,
                            ),
                            Colors.pinkAccent),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.indigoAccent,
                        position: TimelineItemPosition.right,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://feeds.abplive.com/onecms/images/uploaded-images/2022/04/11/5c06d2c360bb828c768d62473e825bbf_original.jpg",
                            "Main Muhammad Nawaz Shareef",
                            "1949-Alive",
                            HistoryDetailScreen(
                              id: 23,
                            ),
                            Colors.redAccent),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.pinkAccent,
                        position: TimelineItemPosition.left,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://i.guim.co.uk/img/media/bb1cae2dbdf6b4bcb4925f4064a4140f823cee63/0_218_2535_1522/master/2535.jpg?width=465&quality=45&auto=format&fit=max&dpr=2&s=ef957a6e895d07b9955992a5e6069359",
                            "General Pervaiz Musharraf",
                            "1943-Alive",
                            HistoryDetailScreen(
                              id: 21,
                            ),
                            Colors.green),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.redAccent,
                        position: TimelineItemPosition.right,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://i.tribune.com.pk/media/images/2221656-ZardariPhotoAFP-1589484389/2221656-ZardariPhotoAFP-1589484389.jpg",
                            "Asif Ali Zardari",
                            "1955-Alive",
                            HistoryDetailScreen(
                              id: 1,
                            ),
                            Colors.teal),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.green,
                        position: TimelineItemPosition.left,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://feeds.abplive.com/onecms/images/uploaded-images/2022/04/11/5c06d2c360bb828c768d62473e825bbf_original.jpg",
                            "Main Muhammad Nawaz Shareef",
                            "1949-Alive",
                            HistoryDetailScreen(
                              id: 23,
                            ),
                            Colors.indigo),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.teal,
                        position: TimelineItemPosition.right,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://images.indianexpress.com/2022/04/Imran-Khan-5.jpg",
                            "Imran Khan",
                            "1952-Alive",
                            HistoryDetailScreen(
                              id: 23,
                            ),
                            Colors.deepOrangeAccent),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.indigo,
                        position: TimelineItemPosition.left,
                      ),
                      TimelineModel(
                        getTimeline(
                            "https://channelfivepakistan.tv/wp-content/uploads/2022/05/shahbaz-9-672x372.jpg",
                            "Main Muhammad Shahbaz Shareef",
                            "1951-Alive",
                            HistoryDetailScreen(
                              id: 1,
                            ),
                            Colors.purple),
                        icon: Icon(Icons.history_edu_outlined),
                        iconBackground: Colors.deepOrangeAccent,
                        position: TimelineItemPosition.right,
                      ),
                    ],
                    position: TimelinePosition.Center,
                    iconSize: 40,
                    lineColor: Colors.yellow.shade900,
                  ),
                ),
              ),
            ),
            Positioned(
                top: 50,
                left: 10,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(99, 83, 83, 83),
                      borderRadius: BorderRadius.circular(7)),
                  //  height: MediaQuery.of(context).size.height / 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 22,
                      color: Colors.white,
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomepageScreen(),
                        ),
                      ),
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
