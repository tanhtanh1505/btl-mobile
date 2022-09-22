import 'package:flutter/material.dart';
import 'package:jobsgo/component/Category.dart';
import 'package:jobsgo/component/JobCard.dart';
import 'package:jobsgo/screens/Profile.dart';
import '../component/AvatarWidget.dart';
import '../component/SearchBar.dart';
import '../component/TitleText.dart';
import '../component/Advertisement.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Container(
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                //avatar
                // Padding(
                //   padding: const EdgeInsets.only(left: 0),
                //   child: GestureDetector(
                //     onTap: () => Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => const Profile(),
                //       ),
                //     ),
                //     child: const AvatarWidget(
                //       height: 58,
                //       width: 60,
                //       urlImage: 'assets/images/logo.jpg',
                //       radius: 45,
                //     ),
                //   ),
                // ),

                //name
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Text(
                          "Hello Hafiz",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 37, 49, 65),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "Find your dream job!",
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 37, 49, 65),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //noti
                Expanded(
                  child: Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 18),
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 189, 189, 189),
                                width: 0.8,
                                style: BorderStyle.solid), //Border.all
                            /*** The BorderRadius widget  is here ***/
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ), //BorderRadius.all
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(Icons.notifications_none_outlined,
                                size: 25, color: Colors.black),
                          ))),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          toolbarHeight: 110,
          elevation: 0.0,
        ),
        body: ListView(
          padding: const EdgeInsets.only(left: 30, right: 30),
          children: <Widget>[
            const SearchBar(text: "Search"),
            const Advertisement(),
            categories(),
            newJobs(),
          ],
        ),
      );

  Container categories() {
    return Container(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Browser by categories",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Category(title: "Remote", urlImage: 'assets/images/remote.jpg'),
                Category(
                    title: "Freelance",
                    urlImage: 'assets/images/freelance.jpg'),
                Category(
                    title: "Fulltime", urlImage: 'assets/images/fulltime.jpg'),
                Category(
                    title: "Internship",
                    urlImage: 'assets/images/internship.jpg'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container newJobs() {
    return Container(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "New jobs",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: const [
                JobCard(
                    logo: 'assets/images/freelance.jpg',
                    company: "Twitter",
                    role: "Remote UI/UX Designer",
                    location: "Jakata-Indonesia",
                    salary: "500-1k",
                    postedIn: "12",
                    marked: true),
                JobCard(
                    logo: 'assets/images/freelance.jpg',
                    company: "Twitter",
                    role: "Remote UI/UX Designer",
                    location: "Jakata-Indonesia",
                    salary: "500-1k",
                    postedIn: "12",
                    marked: true),
                JobCard(
                    logo: 'assets/images/freelance.jpg',
                    company: "Twitter",
                    role: "Remote UI/UX Designer",
                    location: "Jakata-Indonesia",
                    salary: "500-1k",
                    postedIn: "12",
                    marked: true),
              ],
            ),
          )
        ],
      ),
    );
  }
}
