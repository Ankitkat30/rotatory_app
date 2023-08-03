

class UserModel {
  int? id;
  int? membershipId;
  int? userTypeId;
  int? clubId;
  String? name;
  String? userName;
  String? email;
  String? password;
  String? countryCode;
  String? primaryContact;
  String? secondaryContact;
  String? gender;
  String? dob;
  String? classification;
  String? imageUrl;
  int? latitude;
  int? longitude;
  int? radius;
  String? address;
  String? state;
  String? country;
  int? pincode;
  int? status;
  String? spouseName;
  String? dateOfMarriage;
  String? selfBloodGroup;
  String? spouseBloodGroup;
  String? token;
  int? emailVerified;
  int? mobileVerified;
  String? filePath;
  int? createdBy;
  String? createdAt;
  String? updatedAt;
  String? accessToken;
  GetUserClubDetails? getUserClubDetails;
  UserRoles? userRoles;
  List<dynamic>? userPermissions;

  UserModel({
    this.id,
    this.membershipId,
    this.userTypeId,
    this.clubId,
    this.name,
    this.userName,
    this.email,
    this.password,
    this.countryCode,
    this.primaryContact,
    this.secondaryContact,
    this.gender,
    this.dob,
    this.classification,
    this.imageUrl,
    this.latitude,
    this.longitude,
    this.radius,
    this.address,
    this.state,
    this.country,
    this.pincode,
    this.status,
    this.spouseName,
    this.dateOfMarriage,
    this.selfBloodGroup,
    this.spouseBloodGroup,
    this.token,
    this.emailVerified,
    this.mobileVerified,
    this.filePath,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
    this.accessToken,
    this.getUserClubDetails,
    this.userRoles,
    this.userPermissions,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      membershipId: json['membership_id'],
      userTypeId: json['user_type_id'],
      clubId: json['club_id'],
      name: json['name'],
      userName: json['user_name'],
      email: json['email'],
      password: json['password'],
      countryCode: json['country_code'],
      primaryContact: json['primary_contact'],
      secondaryContact: json['secondary_contact'],
      gender: json['gender'],
      dob: json['dob'],
      classification: json['classification'],
      imageUrl: json['image_url'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      radius: json['radius'],
      address: json['address'],
      state: json['state'],
      country: json['country'],
      pincode: json['pincode'],
      status: json['status'],
      spouseName: json['spouse_name'],
      dateOfMarriage: json['date_of_marriage'],
      selfBloodGroup: json['self_blood_group'],
      spouseBloodGroup: json['spouse_blood_group'],
      token: json['token'],
      emailVerified: json['email_verified'],
      mobileVerified: json['mobile_verified'],
      filePath: json['file_path'],
      createdBy: json['created_by'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      accessToken: json['access_token'],
      getUserClubDetails: json['get_user_club_details'] != null
          ? GetUserClubDetails.fromJson(json['get_user_club_details'])
          : null,
      userRoles: json['user_roles'] != null
          ? UserRoles.fromJson(json['user_roles'])
          : null,
      userPermissions: json['user_permissions'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': id,
      'membership_id': membershipId,
      'user_type_id': userTypeId,
      'club_id': clubId,
      'name': name,
      'user_name': userName,
      'email': email,
      'password': password,
      'country_code': countryCode,
      'primary_contact': primaryContact,
      'secondary_contact': secondaryContact,
      'gender': gender,
      'dob': dob,
      'classification': classification,
      'image_url': imageUrl,
      'latitude': latitude,
      'longitude': longitude,
      'radius': radius,
      'address': address,
      'state': state,
      'country': country,
      'pincode': pincode,
      'status': status,
      'spouse_name': spouseName,
      'date_of_marriage': dateOfMarriage,
      'self_blood_group': selfBloodGroup,
      'spouse_blood_group': spouseBloodGroup,
      'token': token,
      'email_verified': emailVerified,
      'mobile_verified': mobileVerified,
      'file_path': filePath,
      'created_by': createdBy,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'access_token': accessToken,
      'get_user_club_details': getUserClubDetails?.toJson(),
      'user_roles': userRoles?.toJson(),
      'user_permissions': userPermissions,
    };
    return data;
  }
}

class GetUserClubDetails {
  int? id;
  int? clubId;
  int? zoneId;
  String? name;
  String? address;
  String? meetingVenue;
  String? meetingDay;
  String? meetingTime;
  String? clubPanNumber;
  String? createdAt;
  String? updatedAt;
  GetZoneDetails? getZoneDetails;

  GetUserClubDetails({
    this.id,
    this.clubId,
    this.zoneId,
    this.name,
    this.address,
    this.meetingVenue,
    this.meetingDay,
    this.meetingTime,
    this.clubPanNumber,
    this.createdAt,
    this.updatedAt,
    this.getZoneDetails,
  });

  factory GetUserClubDetails.fromJson(Map<String, dynamic> json) {
    return GetUserClubDetails(
      id: json['id'],
      clubId: json['club_id'],
      zoneId: json['zone_id'],
      name: json['name'],
      address: json['address'],
      meetingVenue: json['meeting_venue'],
      meetingDay: json['meeting_day'],
      meetingTime: json['meeting_time'],
      clubPanNumber: json['club_pan_number'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      getZoneDetails: json['get_zone_details'] != null
          ? GetZoneDetails.fromJson(json['get_zone_details'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': id,
      'club_id': clubId,
      'zone_id': zoneId,
      'name': name,
      'address': address,
      'meeting_venue': meetingVenue,
      'meeting_day': meetingDay,
      'meeting_time': meetingTime,
      'club_pan_number': clubPanNumber,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'get_zone_details': getZoneDetails?.toJson(),
    };
    return data;
  }
}

class GetZoneDetails {
  int? id;
  String? name;
  int? status;
  String? createdAt;
  String? updatedAt;

  GetZoneDetails({
    this.id,
    this.name,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory GetZoneDetails.fromJson(Map<String, dynamic> json) {
    return GetZoneDetails(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': id,
      'name': name,
      'status': status,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
    return data;
  }
}

class UserRoles {
  int? id;
  String? title;
  String? details;
  int? status;

  UserRoles({
    this.id,
    this.title,
    this.details,
    this.status,
  });

  factory UserRoles.fromJson(Map<String, dynamic> json) {
    return UserRoles(
      id: json['id'],
      title: json['title'],
      details: json['details'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'id': id,
      'title': title,
      'details': details,
      'status': status,
    };
    return data;
  }
}

// Rest of the code remains the same...

