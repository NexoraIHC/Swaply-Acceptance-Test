# language: es
# HU-39 (US39)

Feature: Pizarra virtual integrada
  Como tutor
  Quiero una pizarra virtual
  Para dibujar diagramas y fórmulas durante la sesión

  Scenario Outline: Explicar un problema de matemáticas
    Given que estoy en una sesión de tutoría de <materia>
    When abro la pizarra virtual
    Then puedo escribir y resolver una <ecuacion> paso a paso en tiempo real

    Examples:
      | tutor        | materia   | ecuacion      | pizarra_abierta | resolucion_visible |
      | Maria Torres | "Álgebra" | "2x + 5 = 15" | Sí              | Sí                 |

  Scenario Outline: Colaboración en la pizarra
    Given que el <aprendiz> tiene una duda
    When le doy el <control_pizarra>
    Then puede marcar o resaltar en la pizarra la parte que no entiende

    Examples:
      | aprendiz   | control_pizarra | puede_marcar |
      | Aprendiz01 | "Habilitado"    | Sí           |
