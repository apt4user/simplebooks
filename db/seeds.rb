# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

categories = Category.create([
  { category_name: "Drama", category_description: "Dramen", category_designator: "novel" },
  { category_name: "Thriller", category_description: "Thriller", category_designator: "novel" },
  { category_name: "Fantasy", category_description: "Fantasy-Bücher", category_designator: "novel" },
  { category_name: "Naturwissenschaften", category_description: "Bücher über Naturwissenschaften", category_designator: "nonfiction" },
  { category_name: "Informationstechnologie", category_description: "Bücher über Informationstechnologien", category_designator: "nonfiction" },
  { category_name: "Mathematik", category_description: "Bücher über Mathematik", category_designator: "nonfiction" }
])

subcategories = Subcategory.create([
  { subcategory_topic: "High Fantasy", subcategory_description: "Bücher des Subgenres High Fantasy", category: categories[2] },
  { subcategory_topic: "Physik", subcategory_description: "Lehr-/ Sachbücher über Physik", category: categories[3] },
  { subcategory_topic: "Chemie", subcategory_description: "Lehr-/ Sachbücher über Chemie", category: categories[3] },
  { subcategory_topic: "Algorithmen", subcategory_description: "Lehr-/ Sachbücher über Algorithmen", category: categories[4] },
  { subcategory_topic: "Netzwerktechnik", subcategory_description: "Lehr-/ Sachbücher über Netzwerktechnik", category: categories[4] },
  { subcategory_topic: "Analysis", subcategory_description: "Lehr-/ Sachbücher über Mathematik über Analysis", category: categories[5] },
  { subcategory_topic: "Lineare Algebra", subcategory_description: "Lehr-/ Sachbücher über Lineare Algebra", category: categories[5] }
])

authors = Author.create([
  { author_name: "Terry Pratchett" },
  { author_name: "Kazushige Nojima" },
  { author_name: "Giancoli" },
  { author_name: "Tipler" },
  { author_name: "Peter Atkins" },
  { author_name: "Paula Bruice" },
  { author_name: "Steven Skiena" },
  { author_name: "Thomas Cormen" },
  { author_name: "Anatol Badach" },
  { author_name: "Steffen Wendzel" },
  { author_name: "George Thomas" },
  { author_name: "Lars Grüne" },
  { author_name: "Michael Ruhrländer" },
  { author_name: "Stefan Waldmann" }
])

books = Book.create([
  { book_title: "Final Fantasy VII Remake", book_isbn: "1646091779", book_description: "Final Fantasy VII Buch", book_price: 20, subcategory_id: subcategories[0].id },
  { book_title: "Fliegende Fetzen", book_isbn: "3442456398", book_description: "Scheibenwelt-Roman", book_price: 5, subcategory_id: subcategories[0].id },
  { book_title: "Physik", book_isbn: "3868943633", book_description: "Lehrbuch Physik", book_price: 90, subcategory_id: subcategories[1].id },
  { book_title: "Physik", book_isbn: "3662679353", book_description: "Lehrbuch Physik", book_price: 95, subcategory_id: subcategories[1].id },
  { book_title: "Physikalische Chemie", book_isbn: "3527345507", book_description: "Lehrbuch Physikalische Chemie", book_price: 70, subcategory_id: subcategories[2].id },
  { book_title: "Organische Chemie", book_isbn: "3868943412", book_description: "Lehrbuch Organische Chemie", book_price: 100, subcategory_id: subcategories[2].id },
  { book_title: "The Algorithm Design Manual", book_isbn: "3030542556", book_description: "Lehrbuch Algorithmen", book_price: 80, subcategory_id: subcategories[3].id },
  { book_title: "Algorithmen", book_isbn: "3486748610", book_description: "Lehrbuch Algorithmen", book_price: 105, subcategory_id: subcategories[3].id },
  { book_title: "Technik der IP-Netze", book_isbn: "3446462104", book_description: "Lehrbuch Netzwerktechnik", book_price: 60, subcategory_id: subcategories[4].id },
  { book_title: "IT-Sicherheit für TCP/IP- und IoT-Netzwerke", book_isbn: "9783658226022", book_description: "Lehrbuch IT-Sicherheit", book_price: 20, subcategory_id: subcategories[4].id },
  { book_title: "Analysis 1", book_isbn: "3868941703", book_description: "Lehrbuch Analysis", book_price: 50, subcategory_id: subcategories[5].id },
  { book_title: "Gewöhnliche Differentialgleichungen", book_isbn: "9783658102401", book_description: "Lehrbuch Mathematik", book_price: 30, subcategory_id: subcategories[5].id },
  { book_title: "Lineare Algebra", book_isbn: "3868942718", book_description: "Lehrbuch Lineare Algebra", book_price: 35, subcategory_id: subcategories[6].id },
  { book_title: "Lineare Algebra 1", book_isbn: "3662632624", book_description: "Lehrbuch Lineare Algebra", book_price: 35, subcategory_id: subcategories[6].id }
])

AuthorBook.create([
  { author: authors[0], book: books[0] },
  { author: authors[1], book: books[1] },
  { author: authors[2], book: books[2] },
  { author: authors[3], book: books[3] },
  { author: authors[4], book: books[4] },
  { author: authors[5], book: books[5] },
  { author: authors[6], book: books[6] },
  { author: authors[7], book: books[7] },
  { author: authors[8], book: books[8] },
  { author: authors[9], book: books[9] },
  { author: authors[10], book: books[10] },
  { author: authors[11], book: books[11] },
  { author: authors[12], book: books[12] },
  { author: authors[13], book: books[13] }
])
