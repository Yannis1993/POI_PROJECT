package fr.mbds.tpgrails

import grails.transaction.Transactional

@Transactional
class UserService {
    def springSecurityService

    User createUser(params) {
        User newUser = new User(username:params.username, password:params.password, mail:params.mail)
        newUser.save(failError: true)
        UserRole.create(newUser, params.role)
        return newUser
    }
}
