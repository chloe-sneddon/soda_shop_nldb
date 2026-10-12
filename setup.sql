pragma foreign_keys = on;

create table menu_item (
    menu_item_id bigint primary key,
    item_name varchar(255),
    price mediumint,
    base_soda varchar(255)
);

create table Ingredient (
    id bigint primary key,
    flavor text not null,
    ingredient_type text not null check (ingredient_type in ('syrup', 'fresh_fruit', 'cream', 'candy'))
);

create table employee (
    employee_id bigint primary key,
    first_name varchar(255),
    last_name varchar(255),
    hourly_pay bigint
);

create table customer (
    customer_id bigint primary key,
    first_name varchar(255),
    last_name varchar(255),
    birthdate date,
    phone_number bigint
);

create table receipt (
    receipt_id bigint primary key,
    employee_id bigint not null,
    customer_id bigint not null,
    subtotal bigint,
    tip bigint,
    tax bigint,
    foreign key (employee_id) references employee (employee_id),
    foreign key (customer_id) references customer (customer_id)
);

create table menu_item_ingredient (
    menu_item_id bigint not null,
    ingredient_id bigint not null,
    quantity bigint,
    primary key (menu_item_id, ingredient_id),
    foreign key (menu_item_id) references menu_item (menu_item_id),
    foreign key (ingredient_id) references ingredient (id)
);

create table receipt_item (
    receipt_item_id bigint primary key,
    menu_item_id bigint not null,
    receipt_id bigint not null,
    price_at_sale bigint,
    foreign key (menu_item_id) references menu_item (menu_item_id),
    foreign key (receipt_id) references receipt (receipt_id)
);

create table receipt_item_addin (
    receipt_item_id bigint not null,
    ingredient_id bigint not null,
    quantity bigint,
    primary key (receipt_item_id, ingredient_id),
    foreign key (receipt_item_id) references receipt_item (receipt_item_id),
    foreign key (ingredient_id) references ingredient (id)
);
