package fr.mbds.tpgrails

import grails.converters.JSON

class IndexController {

    def index() {
        List<Poi> pois = Poi.findAll()
        [poisList:pois]
    }
}
