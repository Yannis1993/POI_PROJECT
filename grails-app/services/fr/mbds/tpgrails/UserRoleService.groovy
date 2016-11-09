package fr.mbds.tpgrails

import grails.transaction.Transactional

@Transactional
class UserRoleService {

    Poi createPoi(params) {
        Poi newPoi = new Groupe(name:params.name, description:params.description, user:params.user)
        newPoi.save(failError: true)
        return newPoi
    }
}
