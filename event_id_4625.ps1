$usuarioEmail = "myEmail@gmail.com" 
$passwdEmail = "myPassword"
$pathTempWevtutil = "C:\temp\temp_wevtutil"
$secPasswdEmail = ConvertTo-SecureString $passwdEmail -AsPlainText -Force
$credencialesEmail = New-Object System.Management.Automation.PSCredential ($usuarioEmail, $secPasswdEMail)
$asuntoEmail = "ID 4625: Inicio de sesion incorrecto"

# Muestra el último evento en formato text con identificador 4625 encadena la salida filtrando por unas palabras clave y redirecciona la salida a un fichero temporal.
wevtutil query-events Security /count:1 /rd:true /format:text /q:"Event[System[(EventID=4625)]]" | findstr /V "puerto" | `
findstr "cuenta: trabajo: Direcci" > "$pathTempWevtutil"

# Lee las últimas 5 líneas del fichero temporal y lo convierte en una cadena de caracteres tal cual se mostrarían en pantalla (formato columna). 
$cuerpoEmail = Get-Content "$pathTempWevtutil" -Tail 5 | Out-String

Send-MailMessage -From $usuarioEmail -To $usuarioEmail -Subject "$asuntoEmail" -Body "$cuerpoEmail" -SmtpServer "smtp.gmail.com" -Port "587" -UseSsl -Credential $credencialesEmail
Remove-Item -Path "$pathTempWevtutil" -Force
exit
