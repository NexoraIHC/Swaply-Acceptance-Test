# language: es
# HU-41 (US41)

Feature: Panel de administración
  Como administrador
  Quiero acceder a un panel central con estadísticas generales
  Para monitorear el crecimiento y salud del sistema

  Scenario Outline: Dashboard visible
    Given que el <administrador> inicia sesión con credenciales de admin
    When accede al panel
    Then ve el total de usuarios, sesiones, universidades y calificación promedio

    Examples:
      | administrador | dashboard_visible |
      | Admin01       | Sí                |

  Scenario Outline: Datos actualizados
    Given que el <administrador> visualiza los gráficos del panel
    When los datos cargan
    Then reflejan información de las últimas 24 horas

    Examples:
      | administrador | datos_actualizados |
      | Admin02       | Sí                 |
