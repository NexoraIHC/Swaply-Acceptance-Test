# language: es
# HU-24 (US24)

Feature: Aprobar o rechazar una verificación
  Como coordinador
  Quiero botones claros de "Aceptar" y "Rechazar"
  Para procesar solicitudes

  Scenario Outline: Aprobar estudiante
    Given que he verificado que un <estudiante> es legítimo
    When presiono el botón "Aprobar"
    Then el perfil del <estudiante> se activa y desaparece de mi <lista_pendiente>

    Examples:
      | coordinador | estudiante   | lista_pendiente | perfil_activo | lista_actualizada |
      | "Coord_UNI" | "Juan Perez" | "Pendientes"    | Sí            | "Actualizada"     |

  Scenario Outline: Confirmación antes de una acción crítica (Negativo)
    Given que estoy a punto de rechazar una <solicitud>
    When hago clic en "Rechazar"
    Then el sistema muestra una <ventana_confirmacion>

    Examples:
      | coordinador | solicitud | ventana_confirmacion                        |
      | "Coord_UNI" | "S-126"   | "¿Estás seguro de que quieres rechazar...?" |
