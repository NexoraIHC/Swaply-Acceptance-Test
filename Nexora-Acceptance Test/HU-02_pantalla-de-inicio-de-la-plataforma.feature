# language: es
# HU-02 (US02)

Feature: Pantalla de inicio de la plataforma
  Como usuario
  Quiero que los beneficios de la plataforma sean la primera pantalla que se aprecie
  Para conocer mejor las funciones antes de registrarme

  Scenario Outline: Visualizar información principal de la plataforma
    Given que el <usuario> ingresa a la página por primera vez
    When accede a la primera pantalla
    Then se muestran los beneficios de la plataforma junto con la información del equipo

    Examples:
      | usuario        | beneficios_mostrados | informacion_equipo |
      | UsuarioNuevo01 | Sí                   | Sí                 |

  Scenario Outline: Navegación hacia Iniciar Sesión
    Given que el <usuario> está en la pantalla de inicio
    When hace clic en "Iniciar sesión"
    Then el sistema muestra la página de inicio de sesión

    Examples:
      | usuario     | destino   |
      | Invitado001 | LoginPage |

  Scenario Outline: Navegación hacia Registrarse
    Given que el <usuario> está en la pantalla de inicio
    When hace clic en "Registrarse"
    Then el sistema muestra la página de registro

    Examples:
      | usuario     | destino      |
      | Invitado002 | RegisterPage |

  Scenario Outline: Navegación hacia Información
    Given que el <usuario> está en la pantalla de inicio
    When hace clic en "Información"
    Then el sistema dirige al usuario a la sección "Sobre nosotros"

    Examples:
      | usuario     | destino       |
      | Invitado003 | SobreNosotros |
