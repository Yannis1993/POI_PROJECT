package fr.mbds.tpgrails

class Poi {

    String name
    String longitude
    String latitude
    String description
    User user

    static hasMany = [groupes:Groupe, images:Image]
    static belongsTo = [Groupe]

    static constraints = {
        name blank: false, unique: true
        longitude blank: false
        latitude blank: false
        description blank: true
        user blank: false
    }

    static mapping = {
    }
}
