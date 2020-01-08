# Auditar-inicios-sesion-erroneos-envio-email-PowerShell
Auditar inicios de sesión erróneos Id. y notificarlos vía email. 

No solo será útil para auditar los inicios de sesión local sino también los intentos de inicio de sesión por ataques de fuerza bruta a través de sesiones de escritorio remoto RDP.

#### Habilitar directiva de auditoría para inicios de sesión incorrectos.

<p align="center">
<img src="https://raw.githubusercontent.com/adrianlois/Auditar-inicios-sesion-erroneos-envio-email-PowerShell/master/screenshots/secpol-auditar-inicio-sesion-erroneo.png" width="550" />
</p>

#### Crear tarea programada a partir del evento con Id. 4625 (Inicios de sesión erróneos)

<p align="center">
<img src="https://raw.githubusercontent.com/adrianlois/Auditar-inicios-sesion-erroneos-envio-email-PowerShell/master/screenshots/eventvwr-id4635-inicio-sesion-incorrecto.png" width="670" />
</p>

#### Configuración de la tarea programada.

<p align="center">
<img src="https://raw.githubusercontent.com/adrianlois/Auditar-inicios-sesion-erroneos-envio-email-PowerShell/master/screenshots/taskschd-desencadenador-inicio-sesion-incorrecto-id4625.png" width="550" />
</p>

#### Ejemplo de una recepción de email de un aviso por inicio de sesión erróneo. 

<p align="center">
<img src="https://raw.githubusercontent.com/adrianlois/Auditar-inicios-sesion-erroneos-envio-email-PowerShell/master/screenshots/email-aviso-inicio-sesion-incorrecto.png" />
</p>
