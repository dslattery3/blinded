puts "Creating Users"

u1 = User.create(username: "Kev", password: "hi",first_name: "Kevin", last_name: "Gallo", email: "gallok731@gmail.com")
u2 = User.create(username: "dslat",password: "hi",first_name: "Dalton", last_name: "slattery",email: "dslat@gmail.com")

puts "Creating Whiskey"

w1 = Whiskey.create(name: "Weller full proof",proof: 114,whiskey_type: "bourbon",distiller: "BT", age: 6)
w2 = Whiskey.create(name: "Weller Single Barrel", proof: 97,whiskey_type: "Bourbon", distiller:"BT",age: 6,single_barrel: true)

puts "Creating blinds"

b1 = Blind.create(name: "Test1", password:"hi",reveal_date: "04 June 2022")

puts "Creating UserBlinds"

ub1 = Userblind.create(user_id: u1.id,blind_id: b1.id,admin: true)
ub2 = Userblind.create(user_id: u2.id,blind_id: b1.id)

puts "Creating Samples"

s1 = Sample.create(identifier: "A",blind_id: b1.id,whiskey_id: w1.id)
s2 = Sample.create(identifier: "B",blind_id: b1.id,whiskey_id: w2.id)

puts "Creating Ratings"

r1 = Rating.create(sample_id: s1.id,user_id: u1.id,nose: 3,palate: 1,finish: 4,notes: "pretty darn good")
r2 = Rating.create(sample_id: s2.id,user_id: u1.id,nose: 3,palate: 2,finish: 1,notes: "pretty darn good too")
r3 = Rating.create(sample_id: s1.id,user_id: u2.id,nose: 1,palate: 5,finish: 2,notes: "cool bourbon")
r4 = Rating.create(sample_id: s2.id,user_id: u2.id,nose: 5,palate: 2,finish: 4,notes: "very cool bourbon")
