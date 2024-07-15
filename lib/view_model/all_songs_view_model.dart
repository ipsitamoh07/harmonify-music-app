import 'package:get/get.dart';

class AllSongsViewModel extends GetxController {
  final allList = <Map<String, dynamic>>[
    {
      "success": true,
      "data": {
        "topQuery": {
          "results": [
            {
              "id": "599452",
              "title": "Imagine Dragons",
              "image": [
                {
                  "quality": "50x50",
                  "url": "https://c.saavncdn.com/artists/Imagine_Dragons_50x50.jpg"
                },
                {
                  "quality": "150x150",
                  "url": "https://c.saavncdn.com/artists/Imagine_Dragons_150x150.jpg"
                },
                {
                  "quality": "500x500",
                  "url": "https://c.saavncdn.com/artists/Imagine_Dragons_500x500.jpg"
                }
              ],
              "type": "artist",
              "description": "Artist"
            }
          ],
          "position": 0
        },
        "songs": {
          "results": [
            {
              "id": "BeXBcbVK",
              "title": "Believer",
              "image": [
                {
                  "quality": "50x50",
                  "url": "https://c.saavncdn.com/248/Evolve-English-2017-20180716230950-50x50.jpg"
                },
                {
                  "quality": "150x150",
                  "url": "https://c.saavncdn.com/248/Evolve-English-2017-20180716230950-150x150.jpg"
                },
                {
                  "quality": "500x500",
                  "url": "https://c.saavncdn.com/248/Evolve-English-2017-20180716230950-500x500.jpg"
                }
              ],
              "album": "Evolve",
              "url": "https://www.jiosaavn.com/song/believer/Mg0zcxdSYXg",
              "type": "song",
              "description": "Imagine Dragons · Evolve",
              "primaryArtists": "Imagine Dragons",
              "singers": "Imagine Dragons",
              "language": "english"
            },
            {
              "id": "zikdtWU6",
              "title": "Thunder",
              "image": [
                {
                  "quality": "50x50",
                  "url": "https://c.saavncdn.com/248/Evolve-English-2017-20180716230950-50x50.jpg"
                },
                {
                  "quality": "150x150",
                  "url": "https://c.saavncdn.com/248/Evolve-English-2017-20180716230950-150x150.jpg"
                },
                {
                  "quality": "500x500",
                  "url": "https://c.saavncdn.com/248/Evolve-English-2017-20180716230950-500x500.jpg"
                }
              ],
              "album": "Evolve",
              "url": "https://www.jiosaavn.com/song/thunder/CgEAVQBnYgU",
              "type": "song",
              "description": "Imagine Dragons · Evolve",
              "primaryArtists": "Imagine Dragons",
              "singers": "Imagine Dragons",
              "language": "english"
            },
            {
              "id": "lKKbRg6w",
              "title": "Bad Liar",
              "image": [
                {
                  "quality": "50x50",
                  "url": "https://c.saavncdn.com/189/Origins-English-2018-20190419235827-50x50.jpg"
                },
                {
                  "quality": "150x150",
                  "url": "https://c.saavncdn.com/189/Origins-English-2018-20190419235827-150x150.jpg"
                },
                {
                  "quality": "500x500",
                  "url": "https://c.saavncdn.com/189/Origins-English-2018-20190419235827-500x500.jpg"
                }
              ],
              "album": "Origins",
              "url": "https://www.jiosaavn.com/song/bad-liar/HCMgUyZXAUQ",
              "type": "song",
              "description": "Imagine Dragons · Origins",
              "primaryArtists": "Imagine Dragons",
              "singers": "Imagine Dragons",
              "language": "english"
            }
          ],
          "position": 2
        },
        "albums": {
          "results": [
            {
              "id": "13435951",
              "title": "Evolve",
              "image": [
                {
                  "quality": "50x50",
                  "url": "https://c.saavncdn.com/248/Evolve-English-2017-20180716230950-50x50.jpg"
                },
                {
                  "quality": "150x150",
                  "url": "https://c.saavncdn.com/248/Evolve-English-2017-20180716230950-150x150.jpg"
                },
                {
                  "quality": "500x500",
                  "url": "https://c.saavncdn.com/248/Evolve-English-2017-20180716230950-500x500.jpg"
                }
              ],
              "artist": "Imagine Dragons",
              "url": "https://www.jiosaavn.com/album/evolve/gvCWqZLfVbs_",
              "type": "album",
              "description": "2018 · English Album · Imagine Dragons",
              "year": "2018",
              "songIds": "uQKEtZYc, JM05-GBQ, sZULdFlE, BeXBcbVK, O0F3-PWY, _n4tm2Ws, eOhQat6c, RLWcTXW7, -KYvAnod, zikdtWU6, tRu8-oj5, VmddtEso",
              "language": "english"
            },
            {
              "id": "37926010",
              "title": "Chutney",
              "image": [
                {
                  "quality": "50x50",
                  "url": "https://c.saavncdn.com/765/Chutney-Punjabi-2022-20240622132718-50x50.jpg"
                },
                {
                  "quality": "150x150",
                  "url": "https://c.saavncdn.com/765/Chutney-Punjabi-2022-20240622132718-150x150.jpg"
                },
                {
                  "quality": "500x500",
                  "url": "https://c.saavncdn.com/765/Chutney-Punjabi-2022-20240622132718-500x500.jpg"
                }
              ],
              "artist": "Various Artists",
              "url": "https://www.jiosaavn.com/album/chutney/Z6XPg1dc1Uo_",
              "type": "album",
              "description": "2022 · Punjabi Film · Various Artists",
              "year": "2022",
              "songIds": "67S0vhrW, uv06Dm36, t8pKauam, VPwveD_u, yOYUMDDS, _lAJTnAD, _qOLH-6X, 8ugLXtYQ, M5L6p3bI, hiGqEXUQ, KFxbUfPo, jb7RotHq, PcHPl7ID",
              "language": "punjabi"
            },
            {
              "id": "14799536",
              "title": "Believer",
              "image": [
                {
                  "quality": "50x50",
                  "url": "https://c.saavncdn.com/128/Believer-English-2018-20190107213710-50x50.jpg"
                },
                {
                  "quality": "150x150",
                  "url": "https://c.saavncdn.com/128/Believer-English-2018-20190107213710-150x150.jpg"
                },
                {
                  "quality": "500x500",
                  "url": "https://c.saavncdn.com/128/Believer-English-2018-20190107213710-500x500.jpg"
                }
              ],
              "artist": "Imagine Dragons",
              "url": "https://www.jiosaavn.com/album/believer/tXjhb4AnRtk_",
              "type": "album",
              "description": "2019 · English Album · Imagine Dragons",
              "year": "2019",
              "songIds": "SdZc6-ST",
              "language": "english"
            }
          ],
          "position": 3
        },
        "artists": {
          "results": [
            {
              "id": "4992352",
              "title": "Kygo &amp; Imagine Dragons",
              "image": [
                {
                  "quality": "50x50",
                  "url": "https://www.jiosaavn.com/_i/3.0/artist-default-music.png"
                },
                {
                  "quality": "150x150",
                  "url": "https://www.jiosaavn.com/_i/3.0/artist-default-music.png"
                },
                {
                  "quality": "500x500",
                  "url": "https://www.jiosaavn.com/_i/3.0/artist-default-music.png"
                }
              ],
              "type": "artist",
              "description": "Singer",
              "position": 2
            },
            {
              "id": "13217374",
              "title": "Imagine Dragons Publishing",
              "image": [
                {
                  "quality": "50x50",
                  "url": "https://www.jiosaavn.com/_i/3.0/artist-default-film.png"
                },
                {
                  "quality": "150x150",
                  "url": "https://www.jiosaavn.com/_i/3.0/artist-default-film.png"
                },
                {
                  "quality": "500x500",
                  "url": "https://www.jiosaavn.com/_i/3.0/artist-default-film.png"
                }
              ],
              "type": "artist",
              "description": "Musicpublisher",
              "position": 3
            },
            {
              "id": "18395281",
              "title": "SONGS OF UNIVERSAL, INC. OBO IMAGINE DRAGONS PUB",
              "image": [
                {
                  "quality": "50x50",
                  "url": "https://www.jiosaavn.com/_i/3.0/artist-default-film.png"
                },
                {
                  "quality": "150x150",
                  "url": "https://www.jiosaavn.com/_i/3.0/artist-default-film.png"
                },
                {
                  "quality": "500x500",
                  "url": "https://www.jiosaavn.com/_i/3.0/artist-default-film.png"
                }
              ],
              "type": "artist",
              "description": "Musicpublisher",
              "position": 4
            }
          ],
          "position": 4
        },
        "playlists": {
          "results": [
            {
              "id": "154025790",
              "title": "Let's Play - Imagine Dragons",
              "image": [
                {
                  "quality": "50x50",
                  "url": "https://c.saavncdn.com/editorial/Let_sPlayImagineDragons_20231004094413_50x50.jpg"
                },
                {
                  "quality": "150x150",
                  "url": "https://c.saavncdn.com/editorial/Let_sPlayImagineDragons_20231004094413_150x150.jpg"
                },
                {
                  "quality": "500x500",
                  "url": "https://c.saavncdn.com/editorial/Let_sPlayImagineDragons_20231004094413_500x500.jpg"
                }
              ],
              "url": "https://www.jiosaavn.com/featured/lets-play-imagine-dragons/RgGxJg6gKsduOxiEGmm6lQ__",
              "type": "playlist",
              "language": "english",
              "description": "Saavn Editor"
            }
          ],
          "position": 1
        }
      }
    }
  ].obs;
}
