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