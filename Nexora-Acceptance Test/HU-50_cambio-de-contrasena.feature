# language: es
# HU-50 (US50)

Feature: Cambio de contraseña
  Como usuario autenticado
  Quiero cambiar mi contraseña desde la configuración
  Para mantener la seguridad de mi cuenta actualizada

  Scenario Outline: Cambio exitoso
    Given que el <usuario> ingresa correctamente su <contrasena_actual> y una nueva que cumple los requisitos
    When presiona "Actualizar"
    Then el sistema muestra "Contraseña actualizada correctamente"

    Examples:
      | usuario | contrasena_actual | mensaje                                |
      | Tutor20 | Correcta          | "Contraseña actualizada correctamente" |

  Scenario Outline: Contraseña actual incorrecta (Negativo)
    Given que el <usuario> ingresa una <contrasena_actual> incorrecta
    When intenta guardar los cambios
    Then el sistema muestra "La contraseña actual no es correcta"

    Examples:
      | usuario    | contrasena_actual | mensaje                               |
      | Aprendiz19 | Incorrecta        | "La contraseña actual no es correcta" |
