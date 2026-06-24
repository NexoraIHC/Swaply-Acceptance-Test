# language: es
# HU-22 (US22)

Feature: Visualizar lista de verificaciones pendientes
  Como coordinador
  Quiero ver una lista de "Verificación Pendiente" en la pantalla principal de mi panel
  Para gestionar las validaciones

  Scenario Outline: Ver lista de solicitudes
    Given que hay <estudiantes> de mi <universidad> esperando validación
    When ingreso al panel de verificaciones
    Then veo una lista con el nombre, universidad y código de cada estudiante pendiente

    Examples:
      | coordinador | universidad | estudiantes  | lista_visible |
      | "Coord_UNI" | "UNI"       | "Pendientes" | Sí            |

  Scenario Outline: No ver solicitudes de otras universidades (Negativo)
    Given que soy el <coordinador> de la <universidad_A>
    When reviso la lista de pendientes
    Then solo veo solicitudes de estudiantes de la <universidad_A>

    Examples:
      | coordinador | universidad_A | solicitudes_otra_uni_visibles |
      | "Coord_UNI" | "UNI"         | No                            |

  Scenario Outline: Solicitud con formato de código incorrecto (Negativo)
    Given que estoy revisando la lista de verificaciones pendientes
    When una <solicitud> contiene un <codigo_incorrecto>
    Then esa <solicitud> aparece con un <icono_advertencia>

    Examples:
      | solicitud | codigo_incorrecto | icono_advertencia |
      | "S-125"   | "123-ABC"         | "Visible"         |
