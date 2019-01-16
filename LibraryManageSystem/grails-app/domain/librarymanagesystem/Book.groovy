package librarymanagesystem

class Book {
    int id
    String name
    Author author
    Date publishDate
    double price
    String bookVersion

    static constraints = {
        bookVersion(blank: true, maxSize: 255)
        publishDate(blank: true, maxSize: 255)
        name(blank: true, maxSize: 255)
        price(blank: true, maxSize: 255)
    }

    static mapping = {
        table "t_book"
        id generator: 'increment'
        version false
    }
}
