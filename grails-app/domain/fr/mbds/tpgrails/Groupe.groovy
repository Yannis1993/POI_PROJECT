package fr.mbds.tpgrails

class Groupe {

    String name
    String description
    User user

    static hasMany = [pois:Poi, images:Image]

    static constraints = {
        name blank: false, unique: true
        description blank: true
        user blank: false
    }

    static mapping = {
    }
}
