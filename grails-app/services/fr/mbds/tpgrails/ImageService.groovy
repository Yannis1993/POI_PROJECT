package fr.mbds.tpgrails

import grails.transaction.Transactional

@Transactional
class ImageService {

    Image createImage(params) {
        Image newImage = new Image(name:params.name, url:params.url, poi:params.poi)
        newImage.save(failError: true)
        return newImage
    }
}
