Feature: test de tipo GET con un id

    Scenario: Verificar que se puede eliminar un vehiculo
        Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
        And path 'Books', '3'
        When method GET
        Then status 200
        And match response ==
            """
            {
                "id": "#number",
                "title": "#string",
                "description": "#string",
                "pageCount": "#number",
                "excerpt": "#string",
                "publishDate": "#string"
            }
            """
        And assert response.title == "Book 3"
        And match response.id == 3