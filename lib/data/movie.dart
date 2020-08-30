class Movie {
  final int id, time ,size, price ;
  final String title,  desc, poster, category, genre, comment;


  Movie({
    this.id,
    this.title,
    this.time,
    this.desc,
    this.size,
    this.poster,
    this.category,
    this.genre,
    this.price,
    this.comment,
  });


}

List <Movie> movies = [
  Movie(
    id: 1,
    title: "Dolittle",
    time: 124,
    category: "New Realeases",
    desc: "Dolittle is a 2020 American fantasy comedy adventure film directed by Stephen Gaghan",
    size: 450,
    poster: "https://www.uphe.com/sites/default/files/styles/scale__319w_/public/2020/02/Dolittle_PosterArt.jpg?itok=9fJ5tfOA",
    price: 10,
    comment: "The movie is very good, it is worth buying."
  ),
   Movie(
    id: 1,
    title: "Extraction",
    time: 124,
    category: "New Realeases",
    desc: "Extraction is a 2020 American action-thriller film directed by Sam Hargrave (in his feature debut) and written by Joe Russo, based on the graphic novel Ciudad by Ande Parks,",
    size: 450,
    price: 10,
    poster: "https://upload.wikimedia.org/wikipedia/en/8/89/Extraction_%282020_film%29.png",
    comment: "very good indedd"
  ),
   Movie(
    id: 1,
    title: "All the Bright Places",
    time: 124,
    category: "Editor's choice",
    desc: "After meeting each other, two people struggle with the emotional and physical scars of their past. They discover that even the smallest moments can mean something.",
    size: 450,
    price: 10,
    poster: "https://upload.wikimedia.org/wikipedia/en/thumb/8/8c/All_the_Bright_Places.jpeg/220px-All_the_Bright_Places.jpeg",
    comment: "The movie is very sentimental"
  ),
   Movie(
    id: 1,
    title: "A Whisker Away",
    time: 124,
    category: "Most Popular",
    desc: "The line between human and animal starts to blur after a girl transforms herself into a cat.The line between human and animal starts to blur after a girl transforms herself into a cat.The line between human and animal starts to blur after a girl transforms herself into a cat.The line between human and animal starts to blur after a girl transforms herself into a cat.The line between human and animal starts to blur after a girl transforms herself into a cat.The line between human and animal starts to blur after a girl transforms herself into a cat.The line between human and animal starts to blur after a girl transforms herself into a cat.The line between human and animal starts to blur after a girl transforms herself into a cat.The line between human and animal starts to blur after a girl transforms herself into a cat.",
    size: 450,
    price: 10,
    poster: "https://m.media-amazon.com/images/M/MV5BNDI5ODBhYzMtNDc4Yi00NjEwLWJiZWUtMGE2Mzc4MGVjN2E0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg",
    comment: "The animation are quite good but the story was lacking in a sense"
  ),
   Movie(
    id: 1,
    title: "365 Days",
    time: 124,
    category: "Most Popular",
    desc: "365 Days (Polish: 365 Dni) is a 2020 Polish erotic romantic drama film directed by Barbara Białowąs and Tomasz Mandes. ",
    size: 450,
    price: 10,
    poster: "https://images-na.ssl-images-amazon.com/images/I/41W+gxN5TWL._SX311_BO1,204,203,200_.jpg",
    comment: "The movie is very intense and did not notice how time flew away while watching"
  ),
   Movie(
    id: 1,
    title: "Detective Pikachu",
    time: 124,
    category: "New Realeases",
    desc: "Pokémon Detective Pikachu is a 2019 American-Japanese urban fantasy mystery film directed by Rob Letterman.",
    size: 450,
    price: 10,
    poster: "https://is5-ssl.mzstatic.com/image/thumb/Video123/v4/73/46/91/7346915c-141a-4bee-4574-bce2490c266e/pr_source.lsr/268x0w.png",
    comment: "this one is a total blockbuster and complete worth on watching it, i recommend it."
  )
];