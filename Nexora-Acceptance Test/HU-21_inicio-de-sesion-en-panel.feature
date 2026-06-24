# language: es
# HU-21 (US21)

Feature: Inicio de sesión en panel
  Como usuario
  Quiero iniciar sesión en un panel simple y profesional
  Para acceder a mis funciones

  Scenario Outline: Acceso exitoso del estudiante
    Given que tengo <credenciales> de <rol_estudiante>
    When ingreso mi <usuario> y <contrasena> en la página de login
    Then accedo al panel principal de estudiantes

    Examples:
      | credenciales | rol_estudiante | usuario   | contrasena | acceso_concedido | panel_mostrado |
      | "Válidas"    | "Estudiante"   | "user123" | "pass123"  | Sí               | "Estudiante"   |

  Scenario Outline: Acceso exitoso del coordinador
    Given que tengo <credenciales> de <rol_coordinador>
    When ingreso mi <usuario> y <contrasena> en la página de login
    Then accedo al panel principal de gestión

    Examples:
      | credenciales | rol_coordinador | usuario   | contrasena   | acceso_concedido | panel_mostrado |
      | "Válidas"    | "Coordinador"   | "admin01" | "admin_pass" | Sí               | "Gestión"      |

  Scenario Outline: Falla de inicio de sesión con credenciales incorrectas (Negativo)
    Given que soy un <usuario>
    When ingreso una <contrasena_incorrecta>
    Then el sistema muestra un <mensaje_error> y no permite el acceso

    Examples:
      | usuario   | contrasena_incorrecta | mensaje_error                    |
      | "user123" | "pass_erronea"        | "Usuario o contraseña inválidos" |
