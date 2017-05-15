### Token store, clients and user-role relationships
CREATE TABLE IF NOT EXISTS oauth_access_token (
  token_id VARCHAR(128),
  token BLOB,
  authentication_id VARCHAR(128) PRIMARY KEY,
  user_name VARCHAR(128),
  client_id VARCHAR(128),
  authentication BLOB,
  refresh_token VARCHAR(128)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS oauth_refresh_token (
  token_id VARCHAR(128),
  token BLOB,
  authentication BLOB
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE oauth_client_details (
      client_id VARCHAR(128) PRIMARY KEY,
      resource_ids VARCHAR(128),
      client_secret VARCHAR(128),
      scope VARCHAR(128),
      authorized_grant_types VARCHAR(128),
      web_server_redirect_uri VARCHAR(128),
      authorities VARCHAR(128),
      access_token_validity INTEGER,
      refresh_token_validity INTEGER,
      additional_information VARCHAR(128),
      autoapprove VARCHAR(128)
);

INSERT INTO `greeter`.`oauth_client_details` (	`client_id`, `client_secret`, `scope`, `authorized_grant_types`, `authorities`, `access_token_validity`, `refresh_token_validity`)
VALUES ('greeter-mobile-client', 'greeter-pass', 'read,write,trust', 'password,authorization_code,refresh_token,implicit', 'ROLE_CLIENT,ROLE_TRUSTED_CLIENT', '86400', '86400');

/*
INSERT INTO `users` (`id`, `password`, `user_name`, `enabled`) VALUES ('1', '123', 'Makli', b'1'), ('2', '321', 'Tomi', b'1'), ('3', '132', 'Georj', b'1');

INSERT INTO `roles` (`id`, `role`) VALUES ('1', 'User'), ('2', 'Admin');

INSERT INTO `users_to_roles` (`user_id`, `role_id`) VALUES ('1', '1'), ('1', '2'), ('2', '2'), ('3', '1');
*/