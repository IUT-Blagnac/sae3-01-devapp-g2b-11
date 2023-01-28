<?php
setcookie('cookieTest', 'je suis un test', time()+3600*3600);

echo '<pre>' . print_r($_COOKIE, true) . ' <pre>';