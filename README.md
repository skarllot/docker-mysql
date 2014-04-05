# MySQL Dockerfile

Dockerfile to build a MySQL container image.

## Available Configuration Parameters

Below is the complete list of available options that can be used to customize
your MySQL installation.

 - **INNODB_AUTOEXTEND_SIZE**: [innodb_autoextend_increment](http://dev.mysql.com/doc/refman/5.6/en/innodb-parameters.html#sysvar_innodb_autoextend_increment)
 - **INNODB_BUFFER_POOL_INSTANCES**: [innodb_buffer_pool_instances](http://dev.mysql.com/doc/refman/5.6/en/innodb-parameters.html#sysvar_innodb_buffer_pool_instances)
 - **INNODB_BUFFER_POOL_SIZE**: [innodb_buffer_pool_size](http://dev.mysql.com/doc/refman/5.6/en/innodb-parameters.html#sysvar_innodb_buffer_pool_size)
 - **INNODB_DATA_FILES**: [innodb_data_file_path](http://dev.mysql.com/doc/refman/5.6/en/innodb-parameters.html#sysvar_innodb_data_file_path)
 - **INNODB_LOG_BUFFER_SIZE**: [innodb_log_buffer_size](http://dev.mysql.com/doc/refman/5.6/en/innodb-parameters.html#sysvar_innodb_log_buffer_size)
 - **INNODB_MEMORY_POOL_DICT**: [innodb_additional_mem_pool_size](http://dev.mysql.com/doc/refman/5.6/en/innodb-parameters.html#sysvar_innodb_additional_mem_pool_size)
 - **MAX_CONNECTIONS**: [max_connections](http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_max_connections)
 - **MYISAM_KEY_BUFFER_SIZE**: [key_buffer_size](http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_key_buffer_size)
 - **MYISAM_READ_BUFFER_SIZE**: [read_buffer_size](http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_read_buffer_size)
 - **SORT_BUFFER_SIZE**: [sort_buffer_size](http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_sort_buffer_size)
 - **SLOW_QUERY_TIME**: [long_query_time](http://dev.mysql.com/doc/refman/5.6/en/server-system-variables.html#sysvar_long_query_time)

You can calculate the required memory using the formula below

```
total = INNODB_BUFFER_POOL_SIZE + MYISAM_KEY_BUFFER_SIZE +
INNODB_MEMORY_POOL_DICT + INNODB_LOG_BUFFER_SIZE + MAX_CONNECTIONS *
(sort_buffer_size + MYISAM_READ_BUFFER_SIZE + binlog_cache_size +
maximum_thread_stack_size);
```

