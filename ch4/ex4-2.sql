CREATE TABLE `users` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `userid` VARCHAR(20) NOT NULL,
    `userpassword` VARCHAR(20) NOT NULL,
    `usernickname` VARCHAR(20) NOT NULL,
    `profilelink` VARCHAR(200) NOT NULL,
    `profilemessage` VARCHAR(200) NOT NULL,
    `getout` TINYINT(1) NOT NULL DEFAULT 0,
    `signindate` DATETIME NOT NULL,
    PRIMARY KEY(`id`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `channels` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,
    `userwhocreate` INT NOT NULL,
    `channellink` VARCHAR(200) NOT NULL,
    `maxcapacity` INT NOT NULL,
    `getout` TINYINT(1) NOT NULL DEFAULT 0,
    `createdate` DATETIME NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`userwhocreate`) REFERENCES `users`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `chats` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `chat` VARCHAR(300) NOT NULL,
    `userwhochat` INT NOT NULL,
    `chatchannel` INT NOT NULL,
    `createdate` DATETIME NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`userwhochat`) REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY(`chatchannel`) REFERENCES `channels`(`id`) ON DELETE CASCADE
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `follows` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `follower` INT NOT NULL,
    `followee` INT NOT NULL,
    `followdate` DATETIME NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`follower`) REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY(`followee`) REFERENCES `users`(`id`) ON DELETE CASCADE
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `blocks` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `blocker` INT NOT NULL,
    `blockee` INT NOT NULL,
    `blockdate` DATETIME NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`blocker`) REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY(`blockee`) REFERENCES `users`(`id`) ON DELETE CASCADE
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;
