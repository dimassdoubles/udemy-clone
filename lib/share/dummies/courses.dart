import '../../domain/entities/course.dart';
import '../../domain/entities/lecture.dart';
import '../../domain/entities/section.dart';

List<Course> featuredCourses = [
  Course(
    description:
        "Learn A-Z everything about Python, from the basics, to advanced topics like Python GUI, Python Data Analysis, and more!",
    id: "YZtOPn6YEFW3hnnsbyH8",
    title: "Learn Python: The Complete Python Programming Course",
    instructor: "Kelas Terbuka",
    coverUrl:
        "https://images.unsplash.com/photo-1526379095098-d400fd0bf935?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80",
    rating: 4.3,
    reviewsCount: 3507,
    lecturesCount: 12,
    price: 15000,
    whatWillLearn: [
      "Create their own Python Programs",
      "Parse the Web and Create their own Games",
      "Become an experienced Python Programmer",
    ],
    curiculums: [
      Section(
        title: "Up and Running With Python",
        lectures: [
          Lecture(
            title: "Apa Itu Python",
            videoLink: "https://youtu.be/iA8lLwmtKQM",
          ),
          Lecture(
            title: "Installasi Python dan VS Code di Windows",
            videoLink: "https://youtu.be/OSmaWPSgvTQ",
          ),
        ],
      ),
      Section(
        title: "The Basics (Data Types)",
        lectures: [
          Lecture(
            title: "Tipe Data",
            videoLink: "https://youtu.be/b3X0CH98Y9g",
          ),
          Lecture(
            title: "Casting Tipe Data",
            videoLink: "https://youtu.be/3d8JbMafZOY",
          ),
        ],
      ),
      Section(
        title: "Conditions and Loops",
        lectures: [
          Lecture(
            title: "Mengambil Input Data dari User",
            videoLink: "https://youtu.be/Ar1xxIsyuvI",
          ),
          Lecture(
            title: "Operasi Aritmatika",
            videoLink: "https://youtu.be/RoDGGTWbKK4",
          ),
          Lecture(
            title: "Latihan Perhitungan Sederhana",
            videoLink: "https://youtu.be/SmiUsrGTnpY",
          ),
          Lecture(
            title: "Operasi Komparasi",
            videoLink: "https://youtu.be/Kv_lDWq8kCc",
          ),
        ],
      ),
      Section(
        title: "Functions!",
        lectures: [
          Lecture(
            title: "Operasi Logika atau Boolean",
            videoLink: "https://youtu.be/Sl7zqPpC2VI",
          ),
          Lecture(
            title: "Latihan Komparasi dan Logika",
            videoLink: "https://youtu.be/-FqgZRDRuIM",
          ),
        ],
      ),
      Section(
        title: "File Input/Output",
        lectures: [
          Lecture(
            title: "Latihan Percabangan - Kalkulator Sederhana",
            videoLink: "https://youtu.be/61OgFKJim6E",
          ),
        ],
      ),
      Section(
        title: "Using Python Modules",
        lectures: [
          Lecture(
            title: "Latihan Percabangan - Kalkulator Sederhana",
            videoLink: "https://youtu.be/61OgFKJim6E",
          ),
        ],
      ),
    ],
  ),
  Course(
    description:
        "A Complete Guide to the Flutter SDK & Flutter Framework for building native iOS and Android apps",
    id: "L7fPifdNgOAqfNYKevXq",
    title: "Flutter & Dart - The Complete Guide",
    instructor: "Khuldi Project",
    coverUrl:
        "https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80",
    rating: 4.6,
    reviewsCount: 53246,
    lecturesCount: 2,
    price: 10000,
    whatWillLearn: [
      "Learn Flutter and Dart from the ground up, step-by-step",
      "Use features like Google Maps, the device camera, authentication and much more!",
      "Learn all the basics without stopping after them: Dive deeply into Flutter & Dart and become an advanced developer",
      "Build engaging native mobile apps for both Android and iOS",
      "Learn how to upload images and how to send manual and automated push notifications",
    ],
    curiculums: [
      Section(
        title: "Introduction",
        lectures: [
          Lecture(
            title: "Pengenalan Flutter",
            videoLink: "https://youtu.be/epRWFH47xCI",
          ),
        ],
      ),
      Section(
        title: "Flutter Basics",
        lectures: [
          Lecture(
            title: "Dart Basic, Extends, Mixin",
            videoLink: "https://youtu.be/DUo01ekCn8Y",
          ),
        ],
      ),
    ],
  )
];

List<Course> programmingCourses = [
  Course(
    description:
        "Belajar pemrograman Java dari pemula sampai mahir disertai studi kasus. Materi akan selalu di-update secara berkala",
    id: "DHOjvnQGgqLgmbEsHhw2",
    title: "Pemrograman Java : Pemula sampai Mahir",
    instructor: "Eko Kurniawan Khannedy",
    coverUrl:
        "https://images.unsplash.com/photo-1507721999472-8ed4421c4af2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    rating: 4.8,
    reviewsCount: 913,
    lecturesCount: 1,
    price: 7500,
    whatWillLearn: [
      "Java Dasar",
      "Java Database",
      "Java Collection",
      "Java Lambda",
      "Java Date & Time API",
      "Java Unit Test",
      "Java Lombok",
    ],
    curiculums: [
      Section(
        title: "Pendahuluan",
        lectures: [
          Lecture(
            title: "TUTORIAL JAVA DASAR BAHASA INDONESIA",
            videoLink: "https://youtu.be/jiUxHm9l1KY",
          ),
        ],
      ),
    ],
  ),
  Course(
    description:
        "Increase your chance of success learning to code and communicating with other developers",
    id: "wdACC6rmzaiEOpqvkW1L",
    title: "Pre-Programming: Everything you need to know before you code",
    instructor: "Indra Gunawan",
    coverUrl:
        "https://images.unsplash.com/photo-1585079542156-2755d9c8a094?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
    rating: 4.7,
    reviewsCount: 10102,
    lecturesCount: 1,
    price: 1000,
    whatWillLearn: [
      "Better understand the fundamentals of how programming works",
      "Choose what programming language and path they want to pursue in their career",
    ],
    curiculums: [
      Section(
        title: "The Basics",
        lectures: [
          Lecture(
            title:
                "Pengalaman Job Interview Programmer Paling Keren di Startup Malaysia",
            videoLink: "https://youtu.be/fdaV_uEnkgM",
          ),
        ],
      ),
    ],
  ),
  Course(
    description:
        "Learn to master Laravel to make advanced applications like the real CMS app we build on this course",
    id: "5Cfxb53nogXFgfFP2Pjk",
    title: "PHP with Laravel for beginners - Become a Master in Laravel",
    instructor: "Shandika Galih",
    coverUrl:
        "https://images.unsplash.com/photo-1434030216411-0b793f4b4173?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    rating: 4.4,
    reviewsCount: 11746,
    lecturesCount: 1,
    price: 3000,
    whatWillLearn: [
      "Learn to build applications using laravel",
      "You will learn how use Laravel",
      "You will learn how to create and use Controllers and what they are",
      "To install Laravel using Windows and MAC",
      "You will learn how to use routes",
    ],
    curiculums: [
      Section(
        title: "The First Step",
        lectures: [
          Lecture(
            title: "Intro",
            videoLink: "https://youtu.be/HqAMb6kqlLs",
          ),
        ],
      ),
    ],
  ),
];
