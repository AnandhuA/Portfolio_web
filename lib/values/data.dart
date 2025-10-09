part of 'values.dart';

class CertificationData {
  CertificationData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.url,
    required this.awardedBy,
  });

  final String image;
  final double imageSize;
  final String url;
  final String title;
  final String awardedBy;
}

class NoteWorthyProjectDetails {
  NoteWorthyProjectDetails({
    required this.projectName,
    required this.isOnPlayStore,
    required this.isPublic,
    required this.technologyUsed,
    required this.isWeb,
    required this.isLive,
    this.projectDescription,
    this.playStoreUrl,
    this.webUrl,
    this.hasBeenReleased,
    this.gitHubUrl,
  });

  final String projectName;
  final bool isPublic;
  final bool isOnPlayStore;
  final bool isWeb;
  final String? projectDescription;
  final bool isLive;
  final bool? hasBeenReleased;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? webUrl;
  final String? technologyUsed;
}

class ExperienceData {
  ExperienceData({
    required this.position,
    required this.roles,
    required this.location,
    required this.duration,
    required this.company,
    this.companyUrl,
  });

  final String company;
  final String? companyUrl;
  final String location;
  final String duration;
  final String position;
  final List<String> roles;
}

class SkillData {
  SkillData({
    required this.skillName,
    required this.skillLevel,
  });

  final String skillName;
  final double skillLevel;
}

class SubMenuData {
  SubMenuData({
    required this.title,
    this.isSelected,
    this.content,
    this.skillData,
    this.isAnimation = false,
  });

  final String title;
  final String? content;
  final List<SkillData>? skillData;
  bool isAnimation;
  bool? isSelected;
}

class Data {
  static List<NavItemData> menuItems = [
    NavItemData(name: StringConst.HOME, route: StringConst.HOME_PAGE),
    NavItemData(name: StringConst.ABOUT, route: StringConst.ABOUT_PAGE),
    NavItemData(name: StringConst.WORKS, route: StringConst.WORKS_PAGE),
    // NavItemData(
    //   name: StringConst.EXPERIENCE,
    //   route: StringConst.EXPERIENCE_PAGE,
    // ),
    // NavItemData(
    //   name: StringConst.CERTIFICATIONS,
    //   route: StringConst.CERTIFICATION_PAGE,
    // ),
    NavItemData(name: StringConst.CONTACT, route: StringConst.CONTACT_PAGE),
  ];

  static List<SocialData> socialData = [
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUB_URL,
    ),
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
    SocialData(
      name: StringConst.INSTAGRAM,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.INSTAGRAM_URL,
    ),
  ];

  static List<String> mobileTechnologies = [
    "Flutter",
    "Dart",
    "Android",
  ];

  static List<String> otherTechnologies = [
    "HTML 5",
    "CSS 3",    
    "Git",
    "Firebase",
    "Figma",
    "SQL",
    "C++",
  ];
  static List<SocialData> socialData1 = [
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUB_URL,
    ),
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
  ];

  static List<SocialData> socialData2 = [
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
    // SocialData(
    //   name: StringConst.TWITTER,
    //   iconData: FontAwesomeIcons.twitter,
    //   url: StringConst.TWITTER_URL,
    // ),
    SocialData(
      name: StringConst.INSTAGRAM,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.INSTAGRAM_URL,
    ),
    // SocialData(
    //   name: StringConst.TELEGRAM,
    //   iconData: FontAwesomeIcons.telegram,
    //   url: StringConst.TELEGRAM_URL,
    // ),
  ];

  static List<ProjectItemData> recentWorks = [
    Projects.Musiq,
    Projects.Netflix,
    Projects.Travel,
    Projects.NoteApp,
    Projects.WeatherApp,
  ];

  static List<ProjectItemData> projects = [
    Projects.Musiq,
    Projects.Netflix,
    Projects.Travel,
    Projects.NoteApp,
    Projects.WeatherApp,
    Projects.SocialMedia,
    Projects.MoneyManagement,
    Projects.PingChat,
    // Projects.AERIUM,
    // Projects.AERIUM_V2,
  ];

  static List<NoteWorthyProjectDetails> noteworthyProjects = [
  
//---------- nothing clone ------- 
    NoteWorthyProjectDetails(
      projectName: StringConst.NOTHING_WEBSITE_CLONE,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.NOTHING_WEBSITE_CLONE_TECH,
      projectDescription: StringConst.NOTHING_WEBSITE_CLONE_DETAIL,
      gitHubUrl: StringConst.NOTHING_WEBSITE_CLONE_GITHUB_URL,
      isLive: false,
    ),

//---------- instagram clone --------   
    NoteWorthyProjectDetails(
      projectName: StringConst.INSTAGRAM_CLONE,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.INSTAGRAM_CLONE_TECH,
      projectDescription: StringConst.INSTAGRAM_CLONE_DETAIL,
      gitHubUrl: StringConst.INSTAGRAM_CLONE_GITHUB_URL,
      isLive: false,
    ),

//------- SuperCell clone -------
    NoteWorthyProjectDetails(
      projectName: StringConst.SUPERCELL_CLONE,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.HTML_CSS,
      projectDescription: StringConst.SUPERCELL_CLONE_DETAIL,
      gitHubUrl: StringConst.SUPERCELL_CLONE_GITHUB_URL,
      isLive: false,
    ),

//--------report -------- 
    NoteWorthyProjectDetails(
      projectName: StringConst.REPORT,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.FLUTTER,
      projectDescription: StringConst.REPORT_DETAIL,
      gitHubUrl: StringConst.REPORT_GITHUB_URL,
      isLive: false,
    ),

//----------- portfolio ------
    NoteWorthyProjectDetails(
      projectName: StringConst.PORTFOLIO_WEB,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.FLUTTER,
      projectDescription: StringConst.PORTFOLIO_WEB_DETAIL,
      gitHubUrl: StringConst.PORTFOLIO_WEB_GITHUB_URL,
      isLive: false,
    ),

//----------- student data base -------
    NoteWorthyProjectDetails(
      projectName: StringConst.STUDENTDATABASE,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: StringConst.FLUTTER,
      projectDescription: StringConst.STUDENTDATABASE_DETAIL,
      gitHubUrl: StringConst.STUDENTDATABASE_GITHUB_URL,
      isLive: false,
    ),
//----- yt download ---------
    NoteWorthyProjectDetails(
      projectName: StringConst.YT_DOWNLOAD,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: true,
      technologyUsed: StringConst.FLUTTER,
      projectDescription: StringConst.YT_DOWNLOAD_DETAIL,
      gitHubUrl: StringConst.YT_DOWNLOAD_GITHUB_URL,
      isLive: false,
    ),
  ];

  // static List<ExperienceData> experienceData = [
  //   ExperienceData(
  //     company: StringConst.COMPANY_5,
  //     position: StringConst.POSITION_5,
  //     companyUrl: StringConst.COMPANY_5_URL,
  //     roles: [
  //       StringConst.COMPANY_5_ROLE_1,
  //       StringConst.COMPANY_5_ROLE_2,
  //       StringConst.COMPANY_5_ROLE_3,
  //     ],
  //     location: StringConst.LOCATION_5,
  //     duration: StringConst.DURATION_5,
  //   ),
  //   ExperienceData(
  //     company: StringConst.COMPANY_4,
  //     position: StringConst.POSITION_4,
  //     companyUrl: StringConst.COMPANY_4_URL,
  //     roles: [
  //       StringConst.COMPANY_4_ROLE_1,
  //       StringConst.COMPANY_4_ROLE_2,
  //       StringConst.COMPANY_4_ROLE_3,
  //     ],
  //     location: StringConst.LOCATION_4,
  //     duration: StringConst.DURATION_4,
  //   ),
  //   ExperienceData(
  //     company: StringConst.COMPANY_3,
  //     position: StringConst.POSITION_3,
  //     companyUrl: StringConst.COMPANY_3_URL,
  //     roles: [
  //       StringConst.COMPANY_3_ROLE_1,
  //       StringConst.COMPANY_3_ROLE_2,
  //       StringConst.COMPANY_3_ROLE_3,
  //     ],
  //     location: StringConst.LOCATION_3,
  //     duration: StringConst.DURATION_3,
  //   ),
  //   ExperienceData(
  //     company: StringConst.COMPANY_2,
  //     position: StringConst.POSITION_2,
  //     companyUrl: StringConst.COMPANY_2_URL,
  //     roles: [
  //       StringConst.COMPANY_2_ROLE_1,
  //       StringConst.COMPANY_2_ROLE_2,
  //       StringConst.COMPANY_2_ROLE_3,
  //     ],
  //     location: StringConst.LOCATION_2,
  //     duration: StringConst.DURATION_2,
  //   ),
  // ];
}

class Projects {

//----------- Muisc ----------- 
  static ProjectItemData Musiq = ProjectItemData(
    title: StringConst.Musiq,
    subtitle: StringConst.Musiq,
    platform: StringConst.Musiq_PLATFORM,
    primaryColor: AppColors.musiq,
    image: ImagePath.Musiq_COVER,
    coverUrl: ImagePath.Musiq_SCREENS,
    navSelectedTitleColor: AppColors.musiqSelectedNavTitle,
    navTitleColor: AppColors.musiqNavTitle,
    appLogoColor: AppColors.musiqAppLogo,
    projectAssets: [
     //image list
    ],
    category: StringConst.Musiq_CATEGORY,
    portfolioDescription: StringConst.Musiq_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.Musiq_GITHUB_URL,
    playStoreUrl: StringConst.Musiq_PLAYSTORE_URL,
  );

//---------- Netflix ------------- 
  static ProjectItemData Netflix = ProjectItemData(
    title: StringConst.Netflix,
    subtitle: StringConst.Netflix,
    platform: StringConst.Netflix_PLATFORM,
    primaryColor: AppColors.netflix,
    image: ImagePath.Netflix_COVER,
    coverUrl: ImagePath.Netflix_COVER,
    navSelectedTitleColor: AppColors.netflixSelectedNavTitle,
    appLogoColor: AppColors.netflixAppLogo,
    projectAssets: [
     //image list
    ],
    category: StringConst.Netflix_CATEGORY,
    portfolioDescription: StringConst.Netflix_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.Netflix_GITHUB_URL,
    playStoreUrl: StringConst.Netflix_PLAYSTORE_URL,
  );

//----------- Social Media ------ 
  static ProjectItemData SocialMedia = ProjectItemData(
    title: StringConst.SocialMedia,
    subtitle: StringConst.SocialMedia,
    platform: StringConst.SocialMedia_PLATFORM,
    primaryColor: AppColors.socialMedia,
    image: ImagePath.SocialMedia_COVER,
    category: StringConst.SocialMedia_CATEGORY,
    designer: StringConst.SocialMedia_DESIGNER,
    coverUrl: ImagePath.SocialMedia_COVER,
    navTitleColor: AppColors.socialMediaNavTitle,
    navSelectedTitleColor: AppColors.socialMediaSelectedNavTitle,
    appLogoColor: AppColors.socialMediaAppLogo,
    projectAssets: [
     //image list
    ],
    portfolioDescription: StringConst.SocialMedia_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.SocialMedia_GITHUB_URL,
    playStoreUrl: StringConst.SocialMedia_PLAYSTORE_URL,
  );

//---------- Travel ---------
  static ProjectItemData Travel = ProjectItemData(
    title: StringConst.Travel,
    subtitle: StringConst.Travel,
    primaryColor: AppColors.travel,
    category: StringConst.Travel_CATEGORY,
    designer: StringConst.Travel_DESIGNER,
    platform: StringConst.Travel_PLATFORM,
    image: ImagePath.Travel_COVER,
    coverUrl: ImagePath.Travel_COVER,
    navTitleColor: AppColors.travelNavTitle,
    navSelectedTitleColor: AppColors.travelSelectedNavTitle,
    appLogoColor: AppColors.travelAppLogo,
    projectAssets: [
     //image list
    ],
    portfolioDescription: StringConst.Travel_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.Travel_GITHUB_URL,
    playStoreUrl: StringConst.Travel_PLAYSTORE_URL,
  );

//-------- Money Mangement ------
  static ProjectItemData MoneyManagement = ProjectItemData(
    title: StringConst.MoneyManagement,
    primaryColor: AppColors.moneyManagement,
    subtitle: StringConst.MoneyManagement,
    category: StringConst.MoneyManagement_CATEGORY,
    platform: StringConst.MoneyManagement_PLATFORM,
    image: ImagePath.MoneyManagement_COVER,
    coverUrl: ImagePath.MoneyManagement_COVER,
    portfolioDescription: StringConst.MoneyManagement_DETAIL,
    navTitleColor: AppColors.moneyManagementNavTitle,
    navSelectedTitleColor: AppColors.moneyManagementSelectedNavTitle,
    appLogoColor: AppColors.moneyManagementAppLogo,
    projectAssets: [
     //image list
    ],
    isPublic: true,
    isOnPlayStore: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.MoneyManagement_GITHUB_URL,
    playStoreUrl: StringConst.MoneyManagement_PLAYSTORE_URL,
  );

//----------Note App ----
  static ProjectItemData NoteApp = ProjectItemData(
    title: StringConst.NoteApp,
    subtitle: StringConst.NoteApp_SUBTITLE,
    category: StringConst.NoteApp_CATEGORY,
    designer: StringConst.NoteApp_DESIGNER,
    primaryColor: AppColors.noteApp,
    platform: StringConst.NoteApp_PLATFORM,
    image: ImagePath.NoteApp_COVER,
    coverUrl: ImagePath.NoteApp_COVER,
    navTitleColor: AppColors.noteAppNavTitle,
    navSelectedTitleColor: AppColors.noteAppSelectedNavTitle,
    appLogoColor: AppColors.noteAppAppLogo,
    projectAssets: [
      //image list
    ],
    portfolioDescription: StringConst.NoteApp_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.NoteApp_GITHUB_URL,
    playStoreUrl: StringConst.NoteApp_PLAYSTORE_URL,
  );

//------weather ---------
  static ProjectItemData WeatherApp = ProjectItemData(
    title: StringConst.WeatherApp,
    subtitle: StringConst.WeatherApp,
    primaryColor: AppColors.weather,
    platform: StringConst.WeatherApp_PLATFORM,
    category: StringConst.WeatherApp_CATEGORY,
    designer: StringConst.WeatherApp_DESIGNER,
    image: ImagePath.Weather_COVER,
    coverUrl: ImagePath.Weather_COVER,
    navTitleColor: AppColors.weatherNavTitle,
    navSelectedTitleColor: AppColors.weatherSelectedNavTitle,
    appLogoColor: AppColors.weatherAppLogo,
    projectAssets: [
   //image list
    ],
    portfolioDescription: StringConst.WeatherApp_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    isLive: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.WeatherApp_GITHUB_URL,
    webUrl: StringConst.WeatherApp_WEB_URL,
  );

//--------- Ping Chat ---------- 
  static ProjectItemData PingChat = ProjectItemData(
    title: StringConst.PingChat,
    subtitle: StringConst.PingChat_SUBTITLE,
    category: StringConst.PingChat_CATEGORY,
    primaryColor: AppColors.pingChat,
    platform: StringConst.PingChat_PLATFORM,
    image: ImagePath.PingChat_COVER,
    coverUrl: ImagePath.PingChat_COVER,
    portfolioDescription: StringConst.PingChat_DETAIL,
    navTitleColor: AppColors.pingChatNavTitle,
    navSelectedTitleColor: AppColors.pingChatSelectedNavTitle,
    appLogoColor: AppColors.pingChatAppLogo,
    isPublic: true,
    isLive: false,
    technologyUsed: StringConst.FLUTTER,
    gitHubUrl: StringConst.PingChat_GITHUB_URL,
    webUrl: StringConst.PingChat_WEB_URL,
  );

// //---------------- 
//   static ProjectItemData AERIUM = ProjectItemData(
//     title: StringConst.AERIUM,
//     subtitle: StringConst.AERIUM_SUBTITLE,
//     primaryColor: AppColors.aerium_v1,
//     platform: StringConst.AERIUM_PLATFORM,
//     category: StringConst.AERIUM_CATEGORY,
//     designer: StringConst.AERIUM_DESIGNER,
//     image: ImagePath.AERIUM_COVER,
//     coverUrl: ImagePath.AERIUM_COVER,
//     navTitleColor: AppColors.aeriumV1NavTitle,
//     projectAssets: [
//    //image list
//     ],
//     portfolioDescription: StringConst.AERIUM_DETAIL,
//     isPublic: true,
//     isLive: false,
//     technologyUsed: StringConst.FLUTTER,
//     gitHubUrl: StringConst.AERIUM_GITHUB_URL,
//     webUrl: StringConst.AERIUM_WEB_URL,
//   );

// //---------------------
//   static ProjectItemData AERIUM_V2 = ProjectItemData(
//     title: StringConst.AERIUM_V2,
//     subtitle: StringConst.AERIUM_V2_SUBTITLE,
//     category: StringConst.AERIUM_V2_CATEGORY,
//     designer: StringConst.AERIUM_V2_DESIGNER,
//     primaryColor: AppColors.aerium_v1,
//     platform: StringConst.AERIUM_V2_PLATFORM,
//     image: ImagePath.AERIUM_V2_LAST,
//     coverUrl: ImagePath.AERIUM_V2_LAST,
//     portfolioDescription: StringConst.AERIUM_V2_DETAIL,
//     projectAssets: [
//      //images
//     ],
//     isPublic: true,
//     isLive: false,
//     technologyUsed: StringConst.FLUTTER,
//     gitHubUrl: StringConst.AERIUM_V2_GITHUB_URL,
//     webUrl: StringConst.AERIUM_V2_WEB_URL,
//   );
  
}
