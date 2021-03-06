part of '../tdapi.dart';

class InlineQueryResult extends TdObject {
  

  /// Represents a single result of an inline query
  InlineQueryResult();

  /// a InlineQueryResult return type can be :
  /// * InlineQueryResultArticle
  /// * InlineQueryResultContact
  /// * InlineQueryResultLocation
  /// * InlineQueryResultVenue
  /// * InlineQueryResultGame
  /// * InlineQueryResultAnimation
  /// * InlineQueryResultAudio
  /// * InlineQueryResultDocument
  /// * InlineQueryResultPhoto
  /// * InlineQueryResultSticker
  /// * InlineQueryResultVideo
  /// * InlineQueryResultVoiceNote
  factory InlineQueryResult.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InlineQueryResultArticle.CONSTRUCTOR:
        return InlineQueryResultArticle.fromJson(json);
      case InlineQueryResultContact.CONSTRUCTOR:
        return InlineQueryResultContact.fromJson(json);
      case InlineQueryResultLocation.CONSTRUCTOR:
        return InlineQueryResultLocation.fromJson(json);
      case InlineQueryResultVenue.CONSTRUCTOR:
        return InlineQueryResultVenue.fromJson(json);
      case InlineQueryResultGame.CONSTRUCTOR:
        return InlineQueryResultGame.fromJson(json);
      case InlineQueryResultAnimation.CONSTRUCTOR:
        return InlineQueryResultAnimation.fromJson(json);
      case InlineQueryResultAudio.CONSTRUCTOR:
        return InlineQueryResultAudio.fromJson(json);
      case InlineQueryResultDocument.CONSTRUCTOR:
        return InlineQueryResultDocument.fromJson(json);
      case InlineQueryResultPhoto.CONSTRUCTOR:
        return InlineQueryResultPhoto.fromJson(json);
      case InlineQueryResultSticker.CONSTRUCTOR:
        return InlineQueryResultSticker.fromJson(json);
      case InlineQueryResultVideo.CONSTRUCTOR:
        return InlineQueryResultVideo.fromJson(json);
      case InlineQueryResultVoiceNote.CONSTRUCTOR:
        return InlineQueryResultVoiceNote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResult';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultArticle extends InlineQueryResult {
  String id;
  String url;
  bool hideUrl;
  String title;
  String description;
  Thumbnail thumbnail;

  /// Represents a link to an article or web page. 
  /// [id] Unique identifier of the query result . 
  /// [url] URL of the result, if it exists . 
  /// [hideUrl] True, if the URL must be not shown . 
  /// [title] Title of the result. 
  /// [description] A short description of the result. 
  /// [thumbnail] Result thumbnail in JPEG format; may be null
  InlineQueryResultArticle({this.id,
    this.url,
    this.hideUrl,
    this.title,
    this.description,
    this.thumbnail});

  /// Parse from a json
  InlineQueryResultArticle.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.url = json['url'];
    this.hideUrl = json['hide_url'];
    this.title = json['title'];
    this.description = json['description'];
    this.thumbnail = Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "url": this.url,
      "hide_url": this.hideUrl,
      "title": this.title,
      "description": this.description,
      "thumbnail": this.thumbnail.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultArticle';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultContact extends InlineQueryResult {
  String id;
  Contact contact;
  Thumbnail thumbnail;

  /// Represents a user contact. 
  /// [id] Unique identifier of the query result . 
  /// [contact] A user contact . 
  /// [thumbnail] Result thumbnail in JPEG format; may be null
  InlineQueryResultContact({this.id,
    this.contact,
    this.thumbnail});

  /// Parse from a json
  InlineQueryResultContact.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.contact = Contact.fromJson(json['contact'] ?? <String, dynamic>{});
    this.thumbnail = Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "contact": this.contact.toJson(),
      "thumbnail": this.thumbnail.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultContact';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultLocation extends InlineQueryResult {
  String id;
  Location location;
  String title;
  Thumbnail thumbnail;

  /// Represents a point on the map. 
  /// [id] Unique identifier of the query result . 
  /// [location] Location result . 
  /// [title] Title of the result . 
  /// [thumbnail] Result thumbnail in JPEG format; may be null
  InlineQueryResultLocation({this.id,
    this.location,
    this.title,
    this.thumbnail});

  /// Parse from a json
  InlineQueryResultLocation.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.thumbnail = Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "location": this.location.toJson(),
      "title": this.title,
      "thumbnail": this.thumbnail.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultLocation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultVenue extends InlineQueryResult {
  String id;
  Venue venue;
  Thumbnail thumbnail;

  /// Represents information about a venue. 
  /// [id] Unique identifier of the query result . 
  /// [venue] Venue result . 
  /// [thumbnail] Result thumbnail in JPEG format; may be null
  InlineQueryResultVenue({this.id,
    this.venue,
    this.thumbnail});

  /// Parse from a json
  InlineQueryResultVenue.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.venue = Venue.fromJson(json['venue'] ?? <String, dynamic>{});
    this.thumbnail = Thumbnail.fromJson(json['thumbnail'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "venue": this.venue.toJson(),
      "thumbnail": this.thumbnail.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultVenue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultGame extends InlineQueryResult {
  String id;
  Game game;

  /// Represents information about a game. 
  /// [id] Unique identifier of the query result . 
  /// [game] Game result
  InlineQueryResultGame({this.id,
    this.game});

  /// Parse from a json
  InlineQueryResultGame.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.game = Game.fromJson(json['game'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "game": this.game.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultGame';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultAnimation extends InlineQueryResult {
  String id;
  Animation animation;
  String title;

  /// Represents an animation file. 
  /// [id] Unique identifier of the query result . 
  /// [animation] Animation file . 
  /// [title] Animation title
  InlineQueryResultAnimation({this.id,
    this.animation,
    this.title});

  /// Parse from a json
  InlineQueryResultAnimation.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.animation = Animation.fromJson(json['animation'] ?? <String, dynamic>{});
    this.title = json['title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "animation": this.animation.toJson(),
      "title": this.title,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultAudio extends InlineQueryResult {
  String id;
  Audio audio;

  /// Represents an audio file. 
  /// [id] Unique identifier of the query result . 
  /// [audio] Audio file
  InlineQueryResultAudio({this.id,
    this.audio});

  /// Parse from a json
  InlineQueryResultAudio.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.audio = Audio.fromJson(json['audio'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "audio": this.audio.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultAudio';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultDocument extends InlineQueryResult {
  String id;
  Document document;
  String title;
  String description;

  /// Represents a document. 
  /// [id] Unique identifier of the query result . 
  /// [document] Document . 
  /// [title] Document title . 
  /// [description] Document description
  InlineQueryResultDocument({this.id,
    this.document,
    this.title,
    this.description});

  /// Parse from a json
  InlineQueryResultDocument.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.document = Document.fromJson(json['document'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.description = json['description'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "document": this.document.toJson(),
      "title": this.title,
      "description": this.description,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultDocument';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultPhoto extends InlineQueryResult {
  String id;
  Photo photo;
  String title;
  String description;

  /// Represents a photo. 
  /// [id] Unique identifier of the query result . 
  /// [photo] Photo . 
  /// [title] Title of the result, if known . 
  /// [description] A short description of the result, if known
  InlineQueryResultPhoto({this.id,
    this.photo,
    this.title,
    this.description});

  /// Parse from a json
  InlineQueryResultPhoto.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.description = json['description'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "photo": this.photo.toJson(),
      "title": this.title,
      "description": this.description,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultPhoto';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultSticker extends InlineQueryResult {
  String id;
  Sticker sticker;

  /// Represents a sticker. 
  /// [id] Unique identifier of the query result . 
  /// [sticker] Sticker
  InlineQueryResultSticker({this.id,
    this.sticker});

  /// Parse from a json
  InlineQueryResultSticker.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.sticker = Sticker.fromJson(json['sticker'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "sticker": this.sticker.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultSticker';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultVideo extends InlineQueryResult {
  String id;
  Video video;
  String title;
  String description;

  /// Represents a video. 
  /// [id] Unique identifier of the query result . 
  /// [video] Video . 
  /// [title] Title of the video . 
  /// [description] Description of the video
  InlineQueryResultVideo({this.id,
    this.video,
    this.title,
    this.description});

  /// Parse from a json
  InlineQueryResultVideo.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.video = Video.fromJson(json['video'] ?? <String, dynamic>{});
    this.title = json['title'];
    this.description = json['description'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "video": this.video.toJson(),
      "title": this.title,
      "description": this.description,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultVideo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}

class InlineQueryResultVoiceNote extends InlineQueryResult {
  String id;
  VoiceNote voiceNote;
  String title;

  /// Represents a voice note. 
  /// [id] Unique identifier of the query result . 
  /// [voiceNote] Voice note . 
  /// [title] Title of the voice note
  InlineQueryResultVoiceNote({this.id,
    this.voiceNote,
    this.title});

  /// Parse from a json
  InlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.voiceNote = VoiceNote.fromJson(json['voice_note'] ?? <String, dynamic>{});
    this.title = json['title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "voice_note": this.voiceNote.toJson(),
      "title": this.title,
    };
  }

  static const CONSTRUCTOR = 'inlineQueryResultVoiceNote';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}