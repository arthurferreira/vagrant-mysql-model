USE vagrantdb;
CREATE  TABLE users (
    email VARCHAR(45) NOT NULL ,
    password VARCHAR(45) NOT NULL ,
    enabled TINYINT NOT NULL DEFAULT 1 ,
    PRIMARY KEY (email)
);

CREATE TABLE user_roles (
    user_role_id int(11) NOT NULL AUTO_INCREMENT,
    email varchar(45) NOT NULL,
    role varchar(45) NOT NULL,
    PRIMARY KEY (user_role_id),
    UNIQUE KEY uni_email_role (role,email),
    KEY fk_email_idx (email),
    CONSTRAINT fk_email FOREIGN KEY (email) REFERENCES users (email)
);

INSERT INTO users(email,password,enabled) VALUES ('john.doe@mail.com','123456', true);
INSERT INTO users(email,password,enabled) VALUES ('jane.doe@mail.com','123456', true);

INSERT INTO user_roles (email, role) VALUES ('john.doe@mail.com', 'ROLE_USER');
INSERT INTO user_roles (email, role) VALUES ('john.doe@mail.com', 'ROLE_ADMIN');
INSERT INTO user_roles (email, role) VALUES ('jane.doe@mail.com', 'ROLE_USER');
