package fr.mbds.tpgrails

import grails.transaction.Transactional

@Transactional
class GroupeService {

    Groupe createGroupe(params) {
        Groupe newGroupe = new Groupe(name:params.name, description:params.description, user:params.user)
        newGroupe.save(failError: true)
        return newGroupe
    }
}
