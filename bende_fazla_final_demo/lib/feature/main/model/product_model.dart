class ProductModel {
  String? pid;
  String? ptitle;
  String? pdesc;
  String? pkategory;
  String? pstatus;
  String? plocation;
  String? psize;
  String? pcolor;
  String? pdate;
  int? pviews;
  int? prated;
  int? pcomments;
  int? plike;

  ProductModel({
    this.pid,
    this.ptitle,
    this.pdesc,
    this.pkategory,
    this.pstatus,
    this.plocation,
    this.psize,
    this.pcolor,
    this.pdate,
    this.pviews,
    this.prated,
    this.pcomments,
    this.plike,
  });

  ProductModel copyWith({
    String? pid,
    String? ptitle,
    String? pdesc,
    String? pkategory,
    String? pstatus,
    String? plocation,
    String? psize,
    String? pcolor,
    String? pdate,
    int? pviews,
    int? prated,
    int? pcomments,
    int? plike,
  }) {
    return ProductModel(
      pid: pid ?? this.pid,
      ptitle: ptitle ?? this.ptitle,
      pdesc: pdesc ?? this.pdesc,
      pkategory: pkategory ?? this.pkategory,
      pstatus: pstatus ?? this.pstatus,
      plocation: plocation ?? this.plocation,
      psize: psize ?? this.psize,
      pcolor: pcolor ?? this.pcolor,
      pdate: pdate ?? this.pdate,
      pviews: pviews ?? this.pviews,
      prated: prated ?? this.prated,
      pcomments: pcomments ?? this.pcomments,
      plike: plike ?? this.plike,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'pid': pid,
      'ptitle': ptitle,
      'pdesc': pdesc,
      'pkategory': pkategory,
      'pstatus': pstatus,
      'plocation': plocation,
      'psize': psize,
      'pcolor': pcolor,
      'pdate': pdate,
      'pviews': pviews,
      'prated': prated,
      'pcomments': pcomments,
      'plike': plike,
    };
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      pid: json['pid'] as String?,
      ptitle: json['ptitle'] as String?,
      pdesc: json['pdesc'] as String?,
      pkategory: json['pkategory'] as String?,
      pstatus: json['pstatus'] as String?,
      plocation: json['plocation'] as String?,
      psize: json['psize'] as String?,
      pcolor: json['pcolor'] as String?,
      pdate: json['pdate'] as String?,
      pviews: json['pviews'] as int?,
      prated: json['prated'] as int?,
      pcomments: json['pcomments'] as int?,
      plike: json['plike'] as int?,
    );
  }
}
