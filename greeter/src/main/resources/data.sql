### Insert oauth_client_details
INSERT INTO `greeter`.`oauth_client_details` (	`client_id`, `client_secret`, `scope`, `authorized_grant_types`, `authorities`, `access_token_validity`, `refresh_token_validity`)
VALUES ('greeter-mobile-client', 'greeter-pass', 'read,write,trust', 'password,authorization_code,refresh_token,implicit', 'ROLE_CLIENT,ROLE_TRUSTED_CLIENT', '86400', '86400');

### Insert users
INSERT INTO `users` (`id`, `password`, `user_name`, `enabled`) VALUES ('1', '123', 'Makli', b'1'), ('2', '321', 'Tomi', b'1'), ('3', '132', 'Georj', b'1');

### Insert roles
INSERT INTO `roles` (`id`, `role`) VALUES ('1', 'User'), ('2', 'Admin');

### Insert users' roles
INSERT INTO `users_to_roles` (`user_id`, `role_id`) VALUES ('1', '1'), ('2', '2'), ('3', '1');