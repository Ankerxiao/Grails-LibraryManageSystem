package librarymanagesystem

class Author {

    int id
    String phone
    String name
    String sex
    int age
    String job
    String company
    String address

    static constraints = {

    }

    static mapping = {
        table 't_author'
        id generator: 'increment'
        version false
    }
}
