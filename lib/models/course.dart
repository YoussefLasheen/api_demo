class Course {
  final List images;
  final Map descSectionData;
  final Map authorSectionData;
  final Map longDescSectionData;
  final Map pricingSectionData;

  Course({
    this.images,
    this.descSectionData,
    this.authorSectionData,
    this.longDescSectionData,
    this.pricingSectionData,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      images: json['img'],
      descSectionData: {
        'interest': json['interest'],
        'title': json['title'],
        'date': json['date'],
        'address': json['address'],
      },
      authorSectionData: {
        'author_name': json['trainerName'],
        'author_avatar': json['trainerImg'].replaceAll('https', 'http'),
        'author_desc': json['trainerInfo'],
      },
      longDescSectionData: {
        'long_desc': json['occasionDetail'],
      },
      pricingSectionData: {
        'reservTypes': json['reservTypes'],
      },
    );
  }
}
