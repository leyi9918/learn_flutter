/// Data model classes for the home banner API response with JSON serialization helpers.

class HomeBannerResponse {
  HomeBannerResponse({
    required this.data,
    required this.errorCode,
    required this.errorMsg,
  });

  final List<HomeBannerItem> data;
  final int errorCode;
  final String errorMsg;

  factory HomeBannerResponse.fromJson(Map<String, dynamic> json) {
    final list = json['data'] as List<dynamic>?;
    return HomeBannerResponse(
      data: list == null
          ? <HomeBannerItem>[]
          : list
              .whereType<Map<String, dynamic>>()
              .map(HomeBannerItem.fromJson)
              .toList(),
      errorCode: json['errorCode'] as int? ?? 0,
      errorMsg: json['errorMsg'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'data': data.map((item) => item.toJson()).toList(),
      'errorCode': errorCode,
      'errorMsg': errorMsg,
    };
  }
}

class HomeBannerItem {
  HomeBannerItem({
    required this.desc,
    required this.id,
    required this.imagePath,
    required this.isVisible,
    required this.order,
    required this.title,
    required this.type,
    required this.url,
  });

  final String desc;
  final int id;
  final String imagePath;
  final int isVisible;
  final int order;
  final String title;
  final int type;
  final String url;

  factory HomeBannerItem.fromJson(Map<String, dynamic> json) {
    return HomeBannerItem(
      desc: json['desc'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      imagePath: json['imagePath'] as String? ?? '',
      isVisible: json['isVisible'] as int? ?? 0,
      order: json['order'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      type: json['type'] as int? ?? 0,
      url: json['url'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'desc': desc,
      'id': id,
      'imagePath': imagePath,
      'isVisible': isVisible,
      'order': order,
      'title': title,
      'type': type,
      'url': url,
    };
  }
}