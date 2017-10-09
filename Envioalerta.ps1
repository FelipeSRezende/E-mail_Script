$Username = "E-mail de quem envia";
$Password= "password de quem envia";

#Função para o envio de e-mail
function Send-ToEmail([string]$email){

    #Cabeçalho
    $message = new-object Net.Mail.MailMessage;
    $message.From = "E-mail de quem envia";
    $message.To.Add($email);
    $message.Subject = "Assunto";
    $message.Body = "Corpo do e-mail";
    
    
    #Definindo smtp e sua porta
    $smtp = new-object Net.Mail.SmtpClient("smtp.gmail.com", "587");
    $smtp.EnableSSL = $true;
    $smtp.Credentials = New-Object System.Net.NetworkCredential($Username, $Password);
    $smtp.send($message);
    write-host "E-mail enviado" ; 
    
 }
 #Definindo para quem enviar
Send-ToEmail  -email "E-mail para";