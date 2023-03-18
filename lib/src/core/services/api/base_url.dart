enum BaseUrls {
  prayerTime(name: 'http://api.aladhan.com/v1/'),
  prayyerCalender(name: "")
  ;
  
  final String name;
  const BaseUrls({
    required this.name,
  });
}
