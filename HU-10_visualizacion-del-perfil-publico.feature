# language: es
# HU-10 (US10)

Feature: Visualización del perfil público
  Como usuario buscando apoyo
  Quiero ver el perfil completo de un tutor
  Para evaluar si es la persona adecuada antes de contactarlo

  Scenario Outline: Perfil completo visible
    Given que el <usuario> hace clic en un <tutor> desde los resultados de búsqueda
    When la página del perfil carga
    Then ve foto, nombre, universidad, carrera, ciclo, habilidades, calificación y reseñas

    Examples:
      | usuario    | tutor        | perfil_completo |
      | Aprendiz21 | Luis Mendoza | Sí              |

  Scenario Outline: Perfil incompleto (Negativo)
    Given que el <tutor> no tiene foto ni descripción cargada
    When el aprendiz visita su perfil
    Then ve los campos vacíos con "Sin información" y la insignia "Perfil incompleto"

    Examples:
      | tutor   | insignia            |
      | Tutor22 | "Perfil incompleto" |
