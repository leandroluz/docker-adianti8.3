<?php
return [
    'host' => "db",  # Nome do serviço no docker-compose
    'port' => "5432",  # Porta padrão do PostgreSQL
    'name' => "adianti",  # Nome do banco de dados
    'user' => "admin",  # Usuário do banco
    'pass' => "admin",  # Senha do banco
    'type' => "pgsql",  # Tipo de banco de dados
    'prep' => "1"  # Utilizar consultas preparadas
];
