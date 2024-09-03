//
//  Bible.swift
//  swiftbible
//
//  Created by Adam Mischke on 9/1/24.
//

// MARK: - Bible
struct Book: Codable {
    let name: String
    let description: String
    let chapters: [String: [String: String]]

    private enum CodingKeys: String, CodingKey {
        case name, description, chapters
    }

    init(name: String, description: String, chapters: [String: [String: String]]) {
        self.name = name
        self.description = description
        self.chapters = chapters
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        description = try container.decode(String.self, forKey: .description)
        chapters = try container.decode([String: [String: String]].self, forKey: .chapters)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(chapters, forKey: .chapters)
    }

    static let genesis = Book(
        name: "Genesis",
        description: "The beginning",
        chapters: [
            "1": [
                "1": "In the beginning God created the heaven and the earth. ",
                "2": "And the earth was without form, and void; and darkness was upon the face of the deep. And the Spirit of God moved upon the face of the waters.",
                "3": "And God said, Let there be light: and there was light. ",
                "4": "And God saw the light, that it was good: and God divided the light from the darkness. ",
                "5": "And God called the light Day, and the darkness he called Night. And the evening and the morning were the first day. ",
                "6": "And God said, Let there be a firmament in the midst of the waters, and let it divide the waters from the waters. ",
                "7": "And God made the firmament, and divided the waters which were under the firmament from the waters which were above the firmament: and it was so. ",
                "8": "And God called the firmament Heaven. And the evening and the morning were the second day. ",
                "9": "And God said, Let the waters under the heaven be gathered together unto one place, and let the dry land appear: and it was so. ",
                "10": "And God called the dry land Earth; and the gathering together of the waters called he Seas: and God saw that it was good. ",
                "11": "And God said, Let the earth bring forth grass, the herb yielding seed, and the fruit tree yielding fruit after his kind, whose seed is in itself, upon the earth: and it was so. ",
                "12": "And the earth brought forth grass, and herb yielding seed after his kind, and the tree yielding fruit, whose seed was in itself, after his kind: and God saw that it was good. ",
                "13": "And the evening and the morning were the third day. ",
                "14": "And God said, Let there be lights in the firmament of the heaven to divide the day from the night; and let them be for signs, and for seasons, and for days, and years: 1:15 And let them be for lights in the firmament of the heaven to give light upon the earth: and it was so. ",
                "16": "And God made two great lights; the greater light to rule the day, and the lesser light to rule the night: he made the stars also. ",
                "17": "And God set them in the firmament of the heaven to give light upon the earth, 1:18 And to rule over the day and over the night, and to divide the light from the darkness: and God saw that it was good. ",
                "19": "And the evening and the morning were the fourth day. ",
                "20": "And God said, Let the waters bring forth abundantly the moving creature that hath life, and fowl that may fly above the earth in the open firmament of heaven. ",
                "21": "And God created great whales, and every living creature that moveth, which the waters brought forth abundantly, after their kind, and every winged fowl after his kind: and God saw that it was good. ",
                "22": "And God blessed them, saying, Be fruitful, and multiply, and fill the waters in the seas, and let fowl multiply in the earth. ",
                "23": "And the evening and the morning were the fifth day. ",
                "24": "And God said, Let the earth bring forth the living creature after his kind, cattle, and creeping thing, and beast of the earth after his kind: and it was so. ",
                "25": "And God made the beast of the earth after his kind, and cattle after their kind, and every thing that creepeth upon the earth after his kind: and God saw that it was good. ",
                "26": "And God said, Let us make man in our image, after our likeness: and let them have dominion over the fish of the sea, and over the fowl of the air, and over the cattle, and over all the earth, and over every creeping thing that creepeth upon the earth. ",
                "27": "So God created man in his own image, in the image of God created he him; male and female created he them. ",
                "28": "And God blessed them, and God said unto them, Be fruitful, and multiply, and replenish the earth, and subdue it: and have dominion over the fish of the sea, and over the fowl of the air, and over every living thing that moveth upon the earth. ",
                "29": "And God said, Behold, I have given you every herb bearing seed, which is upon the face of all the earth, and every tree, in the which is the fruit of a tree yielding seed; to you it shall be for meat. ",
                "30": "And to every beast of the earth, and to every fowl of the air, and to every thing that creepeth upon the earth, wherein there is life, I have given every green herb for meat: and it was so. ",
                "31": "And God saw every thing that he had made, and, behold, it was very good. And the evening and the morning were the sixth day. "
            ],
            "2": [
                "1": "Thus the heavens and the earth were finished, and all the host of them. ",
                "2": "And on the seventh day God ended his work which he had made; and he rested on the seventh day from all his work which he had made. ",
                "3": "And God blessed the seventh day, and sanctified it: because that in it he had rested from all his work which God created and made. ",
                "4": "These are the generations of the heavens and of the earth when they were created, in the day that the LORD God made the earth and the heavens, 2:5 And every plant of the field before it was in the earth, and every herb of the field before it grew: for the LORD God had not caused it to rain upon the earth, and there was not a man to till the ground. ",
                "6": "But there went up a mist from the earth, and watered the whole face of the ground. ",
                "7": "And the LORD God formed man of the dust of the ground, and breathed into his nostrils the breath of life; and man became a living soul. ",
                "8": "And the LORD God planted a garden eastward in Eden; and there he put the man whom he had formed. ",
                "9": "And out of the ground made the LORD God to grow every tree that is pleasant to the sight, and good for food; the tree of life also in the midst of the garden, and the tree of knowledge of good and evil. ",
                "10": "And a river went out of Eden to water the garden; and from thence it was parted, and became into four heads. ",
                "11": "The name of the first is Pison: that is it which compasseth the whole land of Havilah, where there is gold; 2:12 And the gold of that land is good: there is bdellium and the onyx stone. ",
                "13": "And the name of the second river is Gihon: the same is it that compasseth the whole land of Ethiopia. ",
                "14": "And the name of the third river is Hiddekel: that is it which goeth toward the east of Assyria. And the fourth river is Euphrates. ",
                "15": "And the LORD God took the man, and put him into the garden of Eden to dress it and to keep it. ",
                "16": "And the LORD God commanded the man, saying, Of every tree of the garden thou mayest freely eat: 2:17 But of the tree of the knowledge of good and evil, thou shalt not eat of it: for in the day that thou eatest thereof thou shalt surely die. ",
                "18": "And the LORD God said, It is not good that the man should be alone; I will make him an help meet for him. ",
                "19": "And out of the ground the LORD God formed every beast of the field, and every fowl of the air; and brought them unto Adam to see what he would call them: and whatsoever Adam called every living creature, that was the name thereof. ",
                "20": "And Adam gave names to all cattle, and to the fowl of the air, and to every beast of the field; but for Adam there was not found an help meet for him. ",
                "21": "And the LORD God caused a deep sleep to fall upon Adam, and he slept: and he took one of his ribs, and closed up the flesh instead thereof; 2:22 And the rib, which the LORD God had taken from man, made he a woman, and brought her unto the man. ",
                "23": "And Adam said, This is now bone of my bones, and flesh of my flesh: she shall be called Woman, because she was taken out of Man. ",
                "24": "Therefore shall a man leave his father and his mother, and shall cleave unto his wife: and they shall be one flesh. ",
                "25": "And they were both naked, the man and his wife, and were not ashamed. "
            ],
            "3": [
                "1": "Now the serpent was more subtil than any beast of the field which the LORD God had made. And he said unto the woman, Yea, hath God said, Ye shall not eat of every tree of the garden? 3:2 And the woman said unto the serpent, We may eat of the fruit of the trees of the garden:",
                "3": "But of the fruit of the tree which is in the midst of the garden, God hath said, Ye shall not eat of it, neither shall ye touch it, lest ye die. ",
                "4": "And the serpent said unto the woman, Ye shall not surely die: 3:5 For God doth know that in the day ye eat thereof, then your eyes shall be opened, and ye shall be as gods, knowing good and evil. ",
                "6": "And when the woman saw that the tree was good for food, and that it was pleasant to the eyes, and a tree to be desired to make one wise, she took of the fruit thereof, and did eat, and gave also unto her husband with her; and he did eat. ",
                "7": "And the eyes of them both were opened, and they knew that they were naked; and they sewed fig leaves together, and made themselves aprons. ",
                "8": "And they heard the voice of the LORD God walking in the garden in the cool of the day: and Adam and his wife hid themselves from the presence of the LORD God amongst the trees of the garden. ",
                "9": "And the LORD God called unto Adam, and said unto him, Where art thou? 3:10 And he said, I heard thy voice in the garden, and I was afraid, because I was naked; and I hid myself. ",
                "11": "And he said, Who told thee that thou wast naked? Hast thou eaten of the tree, whereof I commanded thee that thou shouldest not eat?",
                "12": "And the man said, The woman whom thou gavest to be with me, she gave me of the tree, and I did eat. ",
                "13": "And the LORD God said unto the woman, What is this that thou hast done? And the woman said, The serpent beguiled me, and I did eat. ",
                "14": "And the LORD God said unto the serpent, Because thou hast done this, thou art cursed above all cattle, and above every beast of the field; upon thy belly shalt thou go, and dust shalt thou eat all the days of thy life: 3:15 And I will put enmity between thee and the woman, and between thy seed and her seed; it shall bruise thy head, and thou shalt bruise his heel. ",
                "16": "Unto the woman he said, I will greatly multiply thy sorrow and thy conception; in sorrow thou shalt bring forth children; and thy desire shall be to thy husband, and he shall rule over thee. ",
                "17": "And unto Adam he said, Because thou hast hearkened unto the voice of thy wife, and hast eaten of the tree, of which I commanded thee, saying, Thou shalt not eat of it: cursed is the ground for thy sake; in sorrow shalt thou eat of it all the days of thy life; 3:18 Thorns also and thistles shall it bring forth to thee; and thou shalt eat the herb of the field; 3:19 In the sweat of thy face shalt thou eat bread, till thou return unto the ground; for out of it wast thou taken: for dust thou art, and unto dust shalt thou return. ",
                "20": "And Adam called his wifes name Eve; because she was the mother of all living. ",
                "21": "Unto Adam also and to his wife did the LORD God make coats of skins, and clothed them. ",
                "22": "And the LORD God said, Behold, the man is become as one of us, to know good and evil: and now, lest he put forth his hand, and take also of the tree of life, and eat, and live for ever: 3:23 Therefore the LORD God sent him forth from the garden of Eden, to till the ground from whence he was taken. ",
                "24": "So he drove out the man; and he placed at the east of the garden of Eden Cherubims, and a flaming sword which turned every way, to keep the way of the tree of life. "
            ]
        ]
    )

    var testament: Testament? = .old
}
