<p align="center"><a href="https://vuejs.org" target="_blank" rel="noopener noreferrer"><img width="100" src="https://vuejs.org/images/logo.png" alt="Vue logo"></a><img src="https://laravel.com/assets/img/components/logo-laravel.svg"></p>

### Notificações em Posts com Vue.js

Demostração simples de como gerar notificações em posts a cada vez que um usuário comentar
<ul>
  <li>Envia notificação por email após um post comentado</li>
  <li>Notificação por Queues</li>
  <li>Notificações por database</li>
  <li>Marcar notificação como lida</li>
  <li>Remover notificação</li>
  <li>Marcar todas como lidas</li>
  <li>Broadcast</li>
  <li>Real-Time</li>
  <li>Exibe alertas de nivas notificações</li>
</ul>

## Configurações

composer install </br>
npm install </br>
npm install vuex --save </br>

Para simular o envio de email é preciso criar uma conta no https://mailtrap.io/ nas credenciais é preciso copiar  o username e password gerado e colar na parte de configuração de envio de email do arquivo.env caso contrário vai gerar erro de autenticação ao enviar o comentário.

```js
MAIL_DRIVER=smtp
MAIL_HOST=smtp.mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=seucodigo
MAIL_PASSWORD=seucodigo
MAIL_ENCRYPTION=null
```



