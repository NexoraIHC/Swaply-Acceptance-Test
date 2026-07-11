# language: es
# HU-47 (US47)

Feature: Sección de ayuda y preguntas frecuentes
  Como usuario de la plataforma
  Quiero acceder a una sección de ayuda con preguntas frecuentes
  Para resolver mis dudas sobre el uso de la plataforma sin contactar al soporte

  Scenario Outline: Ayuda navegable
    Given que el <usuario> accede a "Ayuda" desde el menú principal
    When la página carga
    Then ve preguntas organizadas por categoría con respuestas expandibles

    Examples:
      | usuario    | preguntas_visibles |
      | Aprendiz16 | Sí                 |

  Scenario Outline: Búsqueda en preguntas frecuentes
    Given que el <usuario> escribe su duda en el buscador de ayuda
    When presiona buscar
    Then se muestran solo las preguntas que contienen el término ingresado

    Examples:
      | usuario | resultados_filtrados |
      | Tutor17 | Sí                   |
