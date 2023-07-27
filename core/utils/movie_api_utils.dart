// ignore_for_file: non_constant_identifier_names

class MovieAPIUtils {
  static String REQUEST_BASE_URL = 'https://api.themoviedb.org/4/';

  static Map<String, String> REQUEST_HEADERS = {
    'content-type': 'application/json;charset=utf-8',
    'authorization':
        'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkODVhZjhlZDA0NTZhNWQyNzVmZmQxODI4YmJkYzY4NSIsInN1YiI6IjU5ODA1NjQ0YzNhMzY4MTA1NTAwZDRiNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.MJcPKVkaqXdI_Oblbk-VjBM8pWtTmKltfxZqyuLIU_U',
  };

  static String REQUEST_IMG(String img) =>
      'https://image.tmdb.org/t/p/w500/$img';

  static const REQUEST_MOVIE_LIST = 'list/1?page=1';
}
