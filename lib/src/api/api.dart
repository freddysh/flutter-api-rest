import 'package:hello_flutter/src/models/photos.dart';
import 'package:http/http.dart' show Client;

class API{
    static const baseUrl='https://jsonplaceholder.typicode.com/photos';

    final Client _client=Client();

    Future<List<Photos>> getPhotos()async{
        List<Photos> photosList;
        final response=await _client.get(baseUrl);
        photosList=photosFromJson(response.body);
        return photosList;
    }
}
