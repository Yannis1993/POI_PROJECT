package fr.mbds.tpgrails

class Image {
    String name
    String url

    static constraints = {
        name blank: false
        url blank: false
    }

    static mapping = {
    }
}
