# language: es
# HU-13 (US13)

Feature: Configurar perfil de tutor
  Como estudiante tutor
  Quiero configurar mi perfil añadiendo las materias que domino en una sección de "Habilidades para Enseñar"
  Para ser visible en los resultados de búsqueda

  Scenario Outline: Añadir habilidades para enseñar
    Given que soy un <tutor> verificado y quiero ser tutor
    When edito mi perfil y añado <materia> a mis "Habilidades para Enseñar"
    Then mi perfil se actualiza y ahora soy visible en los resultados de búsqueda para esa <materia>

    Examples:
      | tutor        | materia          | perfil_visible_busqueda |
      | Maria Torres | "Álgebra Lineal" | Sí                      |

  Scenario Outline: No aparecer en búsquedas sin habilidades (Negativo)
    Given que no he añadido ninguna "Habilidad para Enseñar" a mi perfil de <tutor>
    When un <aprendiz> busca una materia que yo domino
    Then mi perfil de <tutor> no aparece en los resultados de búsqueda

    Examples:
      | tutor       | aprendiz   | perfil_visible_busqueda |
      | Pedro Ramos | Aprendiz02 | No                      |
