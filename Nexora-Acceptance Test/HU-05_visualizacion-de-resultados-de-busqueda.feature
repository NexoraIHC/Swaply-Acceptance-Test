# language: es
# HU-05 (US05)

Feature: Visualización de resultados de búsqueda
  Como estudiante aprendiz
  Quiero ver los resultados como tarjetas con foto, universidad y calificación
  Para elegir un tutor rápidamente

  Scenario Outline: Ver lista de tutores
    Given que el <usuario> ha realizado una búsqueda
    When la página de resultados carga
    Then se muestran tarjetas con foto, nombre, universidad y calificación

    Examples:
      | usuario    | tarjetas_mostradas |
      | Aprendiz01 | Sí                 |

  Scenario Outline: No ver tutores de mi misma universidad
    Given que la regla de negocio impide conexiones dentro de la misma institución
    When el <usuario> visualiza los resultados
    Then la lista excluye tutores de la misma universidad

    Examples:
      | usuario    | universidad_usuario | excluidos_misma_universidad |
      | Aprendiz02 | UNI                 | Sí                          |
