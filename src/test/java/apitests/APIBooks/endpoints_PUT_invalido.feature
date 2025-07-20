
Feature: Test del PUT mandar un numero en el campo title

    Feature Description del test metodo PUT
    Scenario: Verificar que se puede actualizar un Book
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Books', '2'
        * def randomNumber = read('classpath:utils/generateRandomNumber.js')
        * def numPaginas = randomNumber(100,500)
        * def excerpt = call read('classpath:utils/generateRandomText.js'){ baseText: 'Book', length:4}
        * def payload =
            """
            {
                "id": 50,
                "title": 50,
                "description": "Diplomado Testing Funcional Software",
                "pageCount": "#(numPaginas)",
                "excerpt": "#(excerpt)",
                "publishDate": "2025-07-18T01:40:46.657Z"
            }
            """
        And request payload
        When method PUT
        Then status 400
        And assert response.title == "One or more validation errors occurred."
