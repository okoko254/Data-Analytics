SELECT SUSER_SNAME() AS CurrentUser, SESSION_USER AS SessionUser, USER_NAME() AS DatabaseUser;

SELECT SESSION_USER AS 'Database User', SYSTEM_USER AS 'Login Name';

SELECT HOST_NAME() AS HostName, @@SERVERNAME AS ServerInstance;

