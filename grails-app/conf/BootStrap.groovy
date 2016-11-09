//import fr.mbds.tpgrails.UserRole
import fr.mbds.tpgrails.*

class BootStrap {
    PoiService poiService
    def init = { servletContext ->
        try {
            def adminRole = new Role('ROLE_ADMIN').save()
            def userRole = new Role('ROLE_USER').save()
            def moderateurRole = new Role('ROLE_MODERATEUR').save()

            def testUser = new User('user', 'user').save()
            def adminUser = new User('admin', 'admin').save()
            def moderateurUser = new User('modo','modo').save()

            UserRole.create(adminUser, adminRole, false)
            UserRole.create(moderateurUser, moderateurRole, false)
            UserRole.create(testUser, userRole, false)

            def image1 = new Image(name:"Zoo 1 Image", url:"zoo1.jpg").save()
            def image2 = new Image(name:"Zoo Image La Fleche", url:"zoo2.jpg").save()

            def poi1 = new Poi(name:"ZOO Borce", longitude:"-0.57225", latitude:"42.90756", description:"F-Borce, Espace Animalier de Borce, +33 559348933", user:moderateurUser).save()
            def poi2 = new Poi(name:"ZOO La Fleche", longitude:"-0.04561", latitude:"47.67610", description:"Zoo, F-La Fleche, Zoo La Fleche", user:moderateurUser).save()

            poi1.addToImages(image1).save()
            poi2.addToImages(image2).save(flush: true, failOnError: true)

            def groupe1 = new Groupe(name:"Groupe Zone 1", description:"Zone Nord-Est", user:moderateurUser).save()
            def groupe2 = new Groupe(name:"Groupe Zone 2", description:"Zone Nord-Ouest", user:moderateurUser).save()

            groupe1.addToPois(poi1).save()
            groupe2.addToPois(poi2).save(flush:true, failOnError: true)

            assert User.count() == 3
            assert Role.count() == 3
            assert UserRole.count() == 3
            assert Poi.count() == 2
            assert Groupe.count() == 2
        }
        catch(e) {
            println e
            println "erreur bootstrap init"
        }
    }
}
