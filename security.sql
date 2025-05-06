-- security.sql
CREATE ROLE readonly;

CREATE USER user1 WITH PASSWORD 'Password1';
CREATE USER user2 WITH PASSWORD 'Password2';

GRANT readonly TO user4;
GRANT readonly TO user5;

GRANT CONNECT ON DATABASE your_database_name TO readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly;
