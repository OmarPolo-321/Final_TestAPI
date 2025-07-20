Feature: test de tipo DELETE con id negativo

  Scenario: Verificar que se puede eliminar un book
    Given url 'https://fakerestapi.azurewebsites.net/api/v1/'
    And path 'Books', '-5'
    When method DELETE
    Then status 200
    