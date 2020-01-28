import Quick
import Nimble
import SwiftyJSON

@testable import Marvel

final class SearchHeroPresenterTests: QuickSpec {
    
    override func spec() {
        
        var sut: SearchHeroPresenter!
        var service: SearchHeroServiceSpy!
        var view: SearchHeroViewSpy!
        
        describe("SearchHeroPresenterTests") {
            
            beforeEach {
                service = SearchHeroServiceSpy()
                view = SearchHeroViewSpy()
                sut = SearchHeroPresenter(service: service)
                sut.attachView(view: view)
            }
            
            describe("when user search for hero") {
                
                context("and it's a valid hero") {
                    
                    beforeEach {
                        sut.searchByHero(name: "thor")
                    }
                    
                    it("then should show hero details") {
                        expect(view.showDetailsCalled).to(beTrue())
                        expect(view.heroPassed?.name) == "thor"
                    }
                    
                }
                
                context("and it's an invalid hero") {
                    
                    beforeEach {
                        sut.searchByHero(name: "doom")
                    }
                    
                    it("then should error message") {
                        expect(view.showErrorCalled).to(beTrue())
                        expect(view.errorPassed) == "not valid name"
                    }
                    
                }
                
            }
            
        }
        
    }
    
}

private class SearchHeroViewSpy: SearchHeroView {
    var showDetailsCalled: Bool?
    var heroPassed: Character?
    var showErrorCalled: Bool?
    var errorPassed: String?
    
    func showDetails(hero: Character) {
        showDetailsCalled = true
        heroPassed = hero
    }
    
    func showError(error: String) {
        showErrorCalled = true
        errorPassed = error
    }
}

private class SearchHeroServiceSpy: SearchHeroServiceProtocol {
    func getMarvelHeroesData(name: String, completion: @escaping (CharacterResponse?, MarvelError?) -> ()) {
        if name == "thor" {
            completion(CharacterData(results: [Character(id: 0, name: "thor", description: "might thor", imageURLPath: nil, imageExtension: nil)]), nil)
        } else if name == "doom" {
            completion(nil, MarvelError(error: "not valid name"))
        }
    }
    }
    
 
    
    
    func getMarvelHeroesData(name: String, completion: @escaping (CharacterData?, MarvelError?) -> ()) {

    
}


// (id: 0, name: "thor", description: "mighty thor")
