
Feature: test de tipo POST con id negativo

    Feature Description Contenido del test POST

    Scenario: Verificar que se puede crear un Book
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Books'

        * def excerpt = call read('classpath:utils/generateRandomText.js'){ baseText: 'Auto', length:4}
        * def payload =
            """
            {
                "id": "-45",
                "title": "Test API",
                "description": "Diplomado Testing Funcional Software",
                "pageCount": "100",
                "excerpt": "#(excerpt)",
                "publishDate": "2025-10-18T01:40:46.657Z"
            }S
            """
        And request payload
        When method POST
        Then status 200




