# MySQL Dockerfile

Dockerfile to build a MySQL container image.

## Available Configuration Templates

Below is the complete list of available configuration templates to create MySQL
database. For detailed configurations set by template see
[templates](https://github.com/skarllot/docker-mysql/tree/master/assets/templates)
directory.

 - **prod-raid-2cpu-1gb-m**: Values optimized to a production OLTP database with 2 CPUs, 1 GB RAM, RAID disk and medium sized database.
 - **prod-raid-2cpu-2gb-m**: Values optimized to a production OLTP database with 2 CPUs, 2 GB RAM, RAID disk and medium sized database.

## Available Configuration Parameters

Below is the complete list of available options that can be used to customize
your MySQL creation.

 - **BINLOG_BASENAME**: Sets base_name for `log_bin` system variable.
 - **BINLOG_CACHE_SIZE**: Sets [binlog_cache_size](http://dev.mysql.com/doc/refman/5.6/en/replication-options-binary-log.html#sysvar_binlog_cache_size) system variable.
 - **BINLOG_ENABLE**: Define whether [log_bin](http://dev.mysql.com/doc/refman/5.6/en/replication-options-binary-log.html#option_mysqld_log-bin) system variable should be enabled.
 - **BINLOG_EXPIRE**: Sets [expire_logs_days](http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_expire_logs_days) system variable.
 - **CONFIG_TEMPLATE**: Uses a template with predetermined system variables values.
 - **INNODB_AUTOEXTEND_SIZE**: Sets [innodb_autoextend_increment](http://dev.mysql.com/doc/refman/5.6/en/innodb-parameters.html#sysvar_innodb_autoextend_increment) system variable.
 - **INNODB_BUFFER_POOL_INSTANCES**: Sets [innodb_buffer_pool_instances](http://dev.mysql.com/doc/refman/5.6/en/innodb-parameters.html#sysvar_innodb_buffer_pool_instances) system variable.
 - **INNODB_BUFFER_POOL_SIZE**: Sets [innodb_buffer_pool_size](http://dev.mysql.com/doc/refman/5.6/en/innodb-parameters.html#sysvar_innodb_buffer_pool_size) system variable.
 - **INNODB_DATA_FILES**: Sets [innodb_data_file_path](http://dev.mysql.com/doc/refman/5.6/en/innodb-parameters.html#sysvar_innodb_data_file_path) system variable.
 - **INNODB_LOG_BUFFER_SIZE**: Sets [innodb_log_buffer_size](http://dev.mysql.com/doc/refman/5.6/en/innodb-parameters.html#sysvar_innodb_log_buffer_size) system variable.
 - **INNODB_MEMORY_POOL_DICT**: Sets [innodb_additional_mem_pool_size](http://dev.mysql.com/doc/refman/5.6/en/innodb-parameters.html#sysvar_innodb_additional_mem_pool_size) system variable.
 - **MAX_CONNECTIONS**: Sets [max_connections](http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_max_connections) system variable.
 - **MYISAM_KEY_BUFFER_SIZE**: Sets [key_buffer_size](http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_key_buffer_size) system variable.
 - **MYISAM_READ_BUFFER_SIZE**: Sets [read_buffer_size](http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_read_buffer_size) system variable.
 - **SORT_BUFFER_SIZE**: Sets [sort_buffer_size](http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_sort_buffer_size) system variable.
 - **SLOW_QUERY_TIME**: Sets [long_query_time](http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_long_query_time) system variable.
 - **THREAD_STACK**: Sets [thread_stack]() system variable.

You can calculate the required memory using the formula below

```
total = INNODB_BUFFER_POOL_SIZE + MYISAM_KEY_BUFFER_SIZE +
INNODB_MEMORY_POOL_DICT + INNODB_LOG_BUFFER_SIZE + MAX_CONNECTIONS *
(SORT_BUFFER_SIZE + MYISAM_READ_BUFFER_SIZE + BINLOG_CACHE_SIZE + THREAD_STACK);
```

