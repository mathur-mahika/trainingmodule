namespace training;

type Email : String(100) @assert.format : '^[^@] + @[^@] + $';

type Address {
    street : String(100);
    city : String(100);
    postCode : String(6);
    country : String(3);
}

type EnrollmentStatus : String(20) enum{
    confirmed = 'CONFIRMED';
    waitlisted = 'WAITLISTED';
    cancelled = 'CANCELLED';
}

entity Courses{
    key ID : UUID;
    title : String(100);
    descr : String(1000);
    startDate : Date;
    endDate : Date;
    seats : Integer;
    seatsBooked : Integer;
    price : Decimal(9, 3);
    currency : String;
}

entity Instructors{
    key ID : UUID;
    name : String(100);
    email : Email;
    bio : String(500);
}

entity Participants{
    key ID : UUID;
    name : String(100);
    email : Email;
    company : String(200);
    address : Address;
}