class Movie {
  String name;
  String description;
  String imageUrl;
  String rating;
  int year;

  Movie({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.year,
  });
}

// For recent movies
List<Movie> listOfMovie = [
  Movie(
    name: "Avatar",
    description:
        "Avatar is a 2009 epic science fiction film directed, written, co-produced, and co-edited by James Cameron and starring Sam Worthington, Zoe Saldana, Stephen Lang, Michelle Rodriguez,[6] and Sigourney Weaver. It is the first installment in the Avatar film series.",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/d/d6/Avatar_%282009_film%29_poster.jpg",
    rating: "8.2/10",
    year: 2009,
  ),
  Movie(
    name: "Titanic",
    description:
        "Titanic is a 1997 American romantic disaster film directed, written, produced, and co-edited by James Cameron. Incorporating both historical and fictionalized aspects, it is based on accounts of the sinking of RMS Titanic in 1912.",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/1/18/Titanic_%281997_film%29_poster.png",
    rating: "9.0/10",
    year: 1997,
  ),
  Movie(
    name: "Zootopia",
    description:
        "Zootopia is a 2016 American animated buddy cop action comedy film produced by Walt Disney Animation Studios and released by Walt Disney Pictures. It was directed by Byron Howard and Rich Moore, co-directed by Jared Bush , and produced by Clark Spencer, from a screenplay written by Bush and Phil Johnston, .",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/9/96/Zootopia_%28movie_poster%29.jpg",
    rating: "7.9/10",
    year: 2016,
  ),
  Movie(
    name: "Minions",
    description:
        "Minions is a 2015 American animated comedy film produced by Illumination Entertainment and distributed by Universal Pictures. The film is a spin-off/prequel to Despicable Me (2010) and the third installment overall in the film series of the same name.",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/1/19/Minions_%282015_film%29.jpg",
    rating: "8.0/10",
    year: 2015,
  ),
  Movie(
    name: "Black Panther",
    description:
        "Black Panther is a 2018 American superhero film based on the Marvel Comics character of the same name. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the 18th film in the Marvel Cinematic Universe (MCU). The film was directed by Ryan Coogler.",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/d/d6/Black_Panther_%28film%29_poster.jpg",
    rating: "7.2/10",
    year: 2018,
  ),
  Movie(
    name: "Avengers: Endgame",
    description:
        "Avengers: Endgame is a 2019 American superhero film based on the Marvel Comics superhero team the Avengers. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the direct sequel to Avengers: Infinity War (2018), and the 22nd film in the Marvel Cinematic Universe (MCU).",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg",
    rating: "7.0/10",
    year: 2019,
  ),
];

// For trending movies
List<Movie> trendingMovie = [
  Movie(
    name: "Top Gun",
    description:
        "Top Gun: Maverick is a 2022 American action drama film directed by Joseph Kosinski and written by Ehren Kruger, Eric Warren Singer, and Christopher McQuarrie from stories by Peter Craig and Justin Marks. The film is a sequel to the 1986 film Top Gun.",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/1/13/Top_Gun_Maverick_Poster.jpg",
    rating: "6.0/10",
    year: 2022,
  ),
  Movie(
    name: "Barbie",
    description:
        "Barbie is a 2023 fantasy comedy film directed by Greta Gerwig from a screenplay she wrote with Noah Baumbach. Based on the eponymous fashion dolls by Mattel, it is the first live-action Barbie film after numerous computer-animated films and specials.",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/0/0b/Barbie_2023_poster.jpg",
    rating: "9.7/10",
    year: 2023,
  ),
  Movie(
    name: "Frozen II",
    description:
        "Frozen 2, also known as Frozen II, is a 2019 American animated musical fantasy film produced by Walt Disney Animation Studios and distributed by Walt Disney Studios Motion Pictures as the sequel to Frozen (2013). Produced by Peter Del Vecho, the film was directed by Chris Buck and Jennifer Lee",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/8/89/Frozen_II_%282019_animated_film%29.jpg",
    rating: "8.2/10",
    year: 2019,
  ),
  Movie(
    name: "The Way of Water",
    description:
        "Avatar: The Way of Water is a 2022 American epic science fiction film co-produced and directed by James Cameron, who co-wrote the screenplay with Rick Jaffa and Amanda Silver from a story the trio wrote with Josh Friedman and Shane Salerno.",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/5/54/Avatar_The_Way_of_Water_poster.jpg",
    rating: "6.9/10",
    year: 2022,
  ),
  Movie(
    name: "The Lion King",
    description:
        "The Lion King is a 2019 American musical drama film directed by Jon Favreau, written by Jeff Nathanson, and produced by Walt Disney Pictures and Fairview Entertainment. It is a photorealistic computer-animated remake of Disney's traditionally animated 1994 film of the same name. ",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/9/9d/Disney_The_Lion_King_2019.jpg",
    rating: "8.5/10",
    year: 2019,
  ),
  Movie(
    name: "Avengers:Endgame",
    description:
        "Avengers: Endgame is a 2019 American superhero film based on the Marvel Comics superhero team the Avengers. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the direct sequel to Avengers: Infinity War (2018), and the 22nd film in the Marvel Cinematic Universe (MCU).",
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg",
    rating: "7.0/10",
    year: 2019,
  ),
];
