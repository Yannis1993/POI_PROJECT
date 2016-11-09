package fr.mbds.tpgrails

import grails.transaction.Transactional

@Transactional
class RoleService {

    Role createPoi(params) {
        Role newRole = new Groupe(name:params.name, description:params.description, user:params.user)
        newPoi.save(failError: true)
        return newPoi
    }
}
