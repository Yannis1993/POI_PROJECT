package fr.mbds.tpgrails

import grails.converters.JSON
import grails.transaction.Transactional

@Transactional
class PoiService {

    Poi createPoi(params) {
        Poi newPoi = new Poi(name:params.name, longitude:params.longitude, latitude:params.latitude, description:params.description, user:params.user)
        newPoi.save(failError: true)
        return newPoi
    }
}
