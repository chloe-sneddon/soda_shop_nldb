pragma foreign_keys = on;

create table MenuItem (
    id bigint primary key,
    item_name text not null,
    price bigint not null,
    base_soda text not null
);

create table Ingredient (
    id bigint primary key,
    flavor text not null,
    ingredient_type text not null check (ingredient_type in ('syrup', 'fresh_fruit', 'cream', 'candy'))
);

create table MenuItem_Ingredient (
    menuItem_id bigint not null references MenuItem(id),
    ingredient_id bigint not null references Ingredient(id),
    quantity integer not null default 1,
    primary key (menuItem_id, ingredient_id)
);

create table zip (
    zip integer primary key,
    city varchar(35),
    state_two_letter_code char(2)
);

create table dog (
    dog_id integer primary key,
    name varchar(35),
    breed varchar(35),
    birth_date date
);

create table award (
    award_id integer primary key,
    dog_id integer not null,
    event_date date,
    award_name varchar(25) not null,
    foreign key (dog_id) references dog (dog_id)
);

create table person_dog (
    dog_id integer,
    person_id integer,
    foreign key (dog_id) references dog (dog_id),
    foreign key (person_id) references person (person_id)
);
