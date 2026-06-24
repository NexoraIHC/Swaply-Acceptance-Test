# language: es
# HU-04 (US04)

Feature: Búsqueda de tutores
  Como estudiante aprendiz
  Quiero un dashboard principal con una barra de búsqueda
  Para encontrar temas, cursos o tutores fácilmente

  Scenario Outline: Búsqueda de cursos o temas
    Given que el <usuario> necesita ayuda en <materia>
    When escribe <materia> en la barra de búsqueda y presiona Enter
    Then la plataforma muestra una lista de tutores que enseñan esa materia

    Examples:
      | usuario    | materia   | resultados       |
      | Aprendiz01 | Cálculo 2 | Lista de tutores |

  Scenario Outline: Búsqueda de profesores
    Given que el <usuario> quiere reunirse nuevamente con <nombre_tutor>
    When escribe <nombre_tutor> en la barra de búsqueda y presiona Enter
    Then se muestra una lista de tutores con ese nombre

    Examples:
      | usuario    | nombre_tutor | resultados       |
      | Aprendiz02 | José Olaya   | Lista de tutores |

  Scenario Outline: Búsqueda sin resultados
    Given que el <usuario> busca una materia muy específica
    When realiza la búsqueda
    Then el sistema muestra el mensaje "No se encontraron tutores. Intenta con otra materia."

    Examples:
      | usuario    | materia_inexistente  | mensaje                                              |
      | Aprendiz03 | Cibernética Cuántica | No se encontraron tutores. Intenta con otra materia. |
