Feature: test de tipo GET con id Inexistente

    Scenario: Verificar que se puede eliminar un book
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Books', '500'
        When method GET
        Then status 404
        And assert response.title == "Not Found"