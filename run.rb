require './classes/library'

def determines(library)
  puts "'#{library.bookworm}' often takes the book"
  puts "'#{library.bestseller}' is the most popular book"
  puts "'#{library.top3_books_readers}' people ordered one of the three most popular books"
end

library = Library.new
File.file?("ledger.yaml") ? library.import : library.generate_data

determines(library)