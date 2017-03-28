if npctype = "mayor" {
    randomize()
    meeting_text[1] = choose("You're a new face around here.","I havent seen you here before.","Welcome to my town!")
    greeting[1] = choose("Greetings, Player!","Hello, Player!","I just love days like this.")
}
if npctype = "healer" {
    randomize()
    meeting_text[1] = choose("I sense an adventurous aura coming for you","It's so nice to meet a unique soul","Greetings, kind traveller")
    greeting[1] = choose("Need a healing?","Are you in need of a healing?")
}
if npctype = "fortuneteller" {
    randomize()
    meeting_text[1] = choose("Player, Hmmm?")
    meeting_text[2] = choose("You are chosen, yes?","I see now..")
    meeting_text[3] = choose("Indeed, you are the chosen vessel")
    meeting_text[4] = choose("I can help guide you on your journey.")
    greeting[1] = choose("Care for any tips?","Do you need assistance?")
}
if npctype = "witch" {
    randomize()
    meeting_text[1] = choose("Hehehe!")
    meeting_text[2] = choose("Tis me, the witch.")
    meeting_text[3] = choose("With a simple twitch,")
    meeting_text[4] = choose("I can make you rich!")
    greeting[1] = choose("Hehehe!")
    greeting[2] = choose("With a drop of dew, I make my brew,")
    greeting[3] = choose("A potion for me, or maybe for you.")
}
if npctype = "wizard" {
    randomize()
    meeting_text[1] = choose("Nice to meet you, youngen.","Has the moon been bigger than usual? Hmmm..","Hello there, Player, I am the wizard of this town.")
    meeting_text[2] = choose("I have a collection of items you may be interested in.","I sell all types of magical items!")
    greeting[1] = choose("Eh.. what was I doing again?","Come to buy anything?","See anything you like?","My dragons are acting up again.")
}
if npctype = "clown" {
    randomize()
    meeting_text[1] = choose("If you're ever feeling down, you can come to this clown!")
    greeting[1] = choose("a Crystil for a joke.","1 Crystil each","Care to buy a joke?")
    joke = choose("Why can't a nose be 12 inches long? . . . Because then it'll be a foot!","Why was 3 afraid of 2? . . . Because he killed every one!","Here the one with the ground in the water? No? . . . Well. Well. Well.",
    "What does a baby computer call his father? . . . Data!","What did the wall say to the ceiling? . . . I'll meet you at the corner!","Why didn't the terminator upgrade to windows 10? . . . He said, I still love vista, baby!",
    "Why did the cookie cry? . . . His mother was a wafer so long!","What do you do with a sink outside of your door? . . . You let that sink in!","What did the oceans say to each other? . . . Nothing they just waved!",
    "")
}
