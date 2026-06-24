# language: es
# HU-08 (US08)

Feature: Solicitar ayuda a un tutor
  Como estudiante aprendiz
  Quiero un botón claro de "Solicitar tutoría"
  Para iniciar el contacto con un tutor

  Scenario Outline: Iniciar solicitud de tutoría
    Given que el <usuario> revisa el perfil del <tutor> y desea su ayuda
    When hace clic en el botón "Solicitar tutoría"
    Then se abre un formulario para escribir un mensaje

    Examples:
      | usuario    | tutor        | formulario_abierto |
      | Aprendiz01 | Maria Torres | Sí                 |

  Scenario Outline: Botón deshabilitado para tutores de la misma universidad (Negativo)
    Given que el <usuario> y el <tutor> pertenecen a la misma universidad
    When el usuario busca el botón de solicitud
    Then el botón está deshabilitado o no es visible

    Examples:
      | usuario    | universidad_usuario | tutor       | universidad_tutor | solicitutoria_visible |
      | Aprendiz02 | UNI                 | Pedro Ramos | UNI               | No                    |
