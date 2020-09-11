Npc.destroy_all
Player.destroy_all
Quest.destroy_all

malganus = Player.create(
    name: "Malganus the Wise",
    race: "Old Wood Elf",
    char_class: "Speed Walker"
)

sunspeaker = Player.create(
    name: "Sunspeaker Tarrion",
    race: "Senile Merfolk",
    char_class: "Amnesia Creator"
)

garrus = Player.create(
    name: "Garrus Shufflefeet",
    race: "Dwarven High Elder",
    char_class: "Shuffleboarder"
)

bill = Player.create(
    name: "Bill O'neilly",
    race: "I Don't Rollplay",
    char_class: "Why am I here"
)

nurse = Player.create(
    name: "Nurse Joy",
    race: "Forever Young Human",
    char_class: "Support Medic"
)

tray = Player.create(
    name: "Traytanion Graybeard",
    race: "Cremated Human",
    char_class: "Ashy Wizard"
)

9.times do
    Quest.create(
        name: Faker::Book.title,
        description: Faker::Books::Lovecraft.paragraphs,
        objective: Faker::Books::Lovecraft.sentence,
        quest_reward: Faker::Books::Lovecraft.tome
    )
end


dan = Npc.create(
    name: "Eagle-Eye Dan",
    speech: "* Puts in glass eye * Have you seen my unifocal glasses?  They're probably at the end of a quest or something."    
)

phil = Npc.create(
    name: "Old-Dragon Slayer Phillip",
    speech: "* Loud ringing from hearing aide *  Did you say dragons?  I only give quests!"
)

dave = Npc.create(
    name: "Drooling Dave",
    speech: "* Drool slowly running down his chin *  I'm sleepin' here, what you want a quest or somethin'?"
)