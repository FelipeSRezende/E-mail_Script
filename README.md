# E-mail_Script
## Descrição
Script para automação de envio de e-mail.

##Observações##

1- Este script pode ser utilizado para automatizar um alerta de ocorrência de um evento no Windows Server 2008 R2 ou superior podendo ser configurado como uma Schedule Task. Também é possível executa-lo através do powershell.

2- Este script está previamente configurado para gmail, mas pode ser configurado para qualquer outro provedor.

3- Caso deseje incluir um anexo, insira no cabeçalho as linhas: 

//Como parametro da funcao

[string]$attachmentpath

//Abaixo do corpo da mensagem

$attachment = New-Object Net.Mail.Attachment($attachmentpath);

$message.Attachments.Add($attachment);

//Abaixo do write host
 
 $attachment.Dispose();
 
//Após o e-mail de quem irá receber o alerta

-attachmentpath $path
 
