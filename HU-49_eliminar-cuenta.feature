# language: es
# HU-49 (US49)

Feature: Eliminar cuenta
  Como usuario
  Quiero poder eliminar permanentemente mi cuenta
  Para borrar todos mis datos si ya no deseo usar el servicio

  Scenario Outline: Eliminación confirmada
    Given que el <usuario> solicita eliminar su cuenta y confirma con su contraseña
    When acepta los términos de eliminación
    Then recibe un correo de confirmación y sus datos se eliminan en 30 días

    Examples:
      | usuario | correo_confirmacion |
      | Tutor19 | Sí                  |

  Scenario Outline: Cancelar proceso de eliminación (Negativo)
    Given que el <usuario> inicia el proceso de eliminación
    When presiona "Cancelar" y sale del modal
    Then su cuenta permanece activa sin cambios

    Examples:
      | usuario    | cuenta_activa |
      | Aprendiz18 | Sí            |
