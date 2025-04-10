Feature: certificar el el servicio https://reqres.in/


  Scenario: T - Obtener la lista de usuarios de ws reqres.in
    Given url 'https://reqres.in/api/users'
    When  method GET
    Then status 200

  Scenario Outline: caso de prueba <nombreCaso>
    Given url 'https://reqres.in/api/users/<ID>'
    When header 'Content-Type' = 'Application/json'
    When method GET
    Then status <estadoHTTP>
    Examples:
      | nombreCaso        | ID | estadoHTTP |
      | caso id 1         | 1  | 200        |
      | caso id 2         | 2  | 200        |
      | caso id 3         | 3  | 200        |
      | caso id not Found | 50 | 404        |
