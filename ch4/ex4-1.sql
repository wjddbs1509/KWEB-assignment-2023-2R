CREATE TABLE student (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(5) NOT NULL,
    `student_id` INT NOT NULL,
    `admission_year` INT NOT NULL,
    `major` VARCHAR(20) NOT NULL,
    `phone_number` VARCHAR(11) NOT NULL,
    `address` VARCHAR(100) NOT NULL,
    `accmulated_grade` INT NOT NULL DEFAULT 0,
    `average_grade` DOUBLE NOT NULL DEFAULT 0.0,
    `on_going` TINYINT NOT NULL DEFAULT 1,
    PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;