### Insert users
INSERT INTO `users` (`id`, `password`, `user_name`) VALUES ('1', '123', 'Makli'), ('2', '321', 'Tomi'), ('3', '132', 'Georj');

### Insert roles
INSERT INTO `roles` (`id`, `role`) VALUES ('1', 'User'), ('2', 'Admin');

### Insert users' roles
INSERT INTO `users_to_roles` (`user_id`, `role_id`) VALUES ('1', '1'), ('2', '2'), ('3', '1');
