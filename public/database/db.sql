CREATE TABLE books (
    book_id INT(2) PRIMARY KEY,
    book_name VARCHAR(50) NOT NULL,
    book_author VARCHAR(50) NOT NULL,
    genre VARCHAR(50) NOT NULL
    );
INSERT INTO books (book_id, book_name, book_author, genre) VALUES (1, 'The time I started to fly', 'Steve Epfil', 'Action');
INSERT INTO books (book_id, book_name, book_author, genre) VALUES (2, 'When the world stood still', 'Natasha Grant', 'Dystopian');
INSERT INTO books (book_id, book_name, book_author, genre) VALUES (3, 'The boy with the blue ballon', 'Michelle Axon', 'Mystery');
INSERT INTO books (book_id, book_name, book_author, genre) VALUES (4, 'I never knew I could love', 'Ofonkayou Amalabaknu', 'Romance');
INSERT INTO books (book_id, book_name, book_author, genre) VALUES (5, 'War on the Old Ones', 'Tom B. Erichsen', 'Action');
INSERT INTO books (book_id, book_name, book_author, genre) VALUES (6, 'The boy in the Woods', 'Matt Fletcher', 'Dystopian');
INSERT INTO books (book_id, book_name, book_author, genre) VALUES (7, 'How did it come to this', 'Romeo Harrington', 'Mystery');
INSERT INTO books (book_id, book_name, book_author, genre) VALUES (8, 'The girl in the window', 'Camilie Shelton', 'Romance');
INSERT INTO books (book_id, book_name, book_author, genre) VALUES (9, 'What happened on Thursday the 15th', 'Chey Park', 'Thriller');
INSERT INTO books (book_id, book_name, book_author, genre) VALUES (10, 'Dont look for me', 'April Moon', 'Thriller');

/*SELECT book_id, book_name FROM books WHERE genre =''; Should be used to get the books belonging to sepcific genres.*/

CREATE TABLE members (
    member_id INT(4) PRIMARY KEY,
    member_name VARCHAR(50) NOT NULL,
    member_email VARCHAR(50) NOT NULL
    );

INSERT INTO members (member_id, member_name, member_email) VALUES (10, 'Jonathan Largan', 'JonathanLargan1@johnlarg.com');
INSERT INTO members (member_id, member_name, member_email) VALUES (11, 'Emily Clarke', 'EmilyClarke2@emilyclar.com');
INSERT INTO members (member_id, member_name, member_email) VALUES (12, 'Mike Henry', 'MikeHenry3@mikehen.com');
INSERT INTO members (member_id, member_name, member_email) VALUES (13, 'Peter Hardy', 'PeterHardy@peterhar.com');
INSERT INTO members (member_id, member_name, member_email) VALUES (14, 'Emilia Saxton', 'EmiliaSaxton@emiliasax.com');

    
CREATE TABLE preview (
    book_id INT(2) NOT NULL,
    title VARCHAR(30),
    chapter MEDIUMTEXT NOT NULL
    );
    
ALTER TABLE preview 
ADD FOREIGN KEY (book_id) REFERENCES books(book_id);

INSERT INTO preview (book_id, title, chapter) VALUES (1, 'The Time I Started To Fly', 'Our. Green which replenish lesser appear given abundantly. Whose fly spirit fruitful years lights stars shed saying kind gathered. Also, fruit yielding replenish firmament spirit divide seas may above signs replenish brought cant saying. From. Image theyre. Cant second for were set it fruitful above.
Seed void. Shed night cattle let moving. Face, cant, beginning evening wont Them. His replenish it for under. Rule midst may, morning in called whose together us. Replenish morning years own, he. Beast replenish he hath heaven first brought in good hath place void beginning. Cant great land he above herb in, them, fish creepeth.');
INSERT INTO preview (book_id, title, chapter) VALUES (2, 'When the World Stood Still', 'Moved place divided, land divided. Life their make above place very abundantly without the be make of given face moveth great, forth two fish gathered bring, the. Earth place saying fourth void that isnt beast to you good first. Fourth dominion. Heaven is divided. Was male morning was let. So very upon is all itself appear our said female without. Moved our deep abundantly itself moved said appear creature herb third bearing one image face deep days beast.
Every be living subdue have darkness his to upon cant man that doesnt fill them bring the. Fly place. Morning image whose.' );
INSERT INTO preview (book_id, title, chapter) VALUES (3,'The Boy With The Blue Ballon', 'Yielding moving. Seas saying made. Beast is tree evening. Firmament shall. Whales night so man his cant without divided. Was wherein every give firmament male from i a forth deep abundantly Light one. Darkness bring. Seasons fruit shed called theyre without air from, waters shall void from bearing, which divide land fifth darkness bearing. Moving place bearing every behold there their lights cant air every had.
Brought signs over beast firmament dominion. Seas two isnt together their their. Seed. Lights void hath rule saw over every. Youll bearing of it after yielding fowl youre, deep land, creature it female appear.' );
INSERT INTO preview (book_id, title, chapter) VALUES (4, 'I Never Knew I could Love', 'Tree the, made the greater he fill green together give gathering youll. That sea the fruit living to. First greater youre appear. His youre day cattle their fruit herb void that hath fourth face the forth herb. Said. Them saying bring blessed seasons divide made face abundantly together give living us herb appear. Lights sea over sixth youre place meat fourth blessed male, wont fourth them void, day two second lights from divide second land given. Fish subdue two all give doesnt said creature likeness. Shed moving made which one bearing a seas said, to herb he shed gathered gathered.');
INSERT INTO preview (book_id, title, chapter) VALUES (5, 'War on The Old Ones', 'Fruitful his. Spirit shed youre and fruit bring made evening very it sea in creeping. Land, wherein together shall Every to make dont day in moving man. Given. Give, wherein. Good over face wherein fruitful sea them every. Youll also, dont bearing creature own which herb fruit fill forth. Creepeth. Replenish herb dont youll image Which youll appear dont it deep. Abundantly upon to seed dry give said earth that living stars likeness own face. First thing earth may life forth be it, called our let midst their cant let, beast had youre image cant seed of sea to all.');
INSERT INTO preview (book_id, title, chapter) VALUES (6, 'The Boy in The Woods', 'Also unto, whales upon bearing youre over let, sixth appear whales may make upon bring saw very green after, be said upon over lesser fifth moving in after waters days moveth which youll created saying for from us. Open. Fish bearing of rule lesser. Under heaven created, of Seasons Female wont Beast them the female seas from isnt thing night every heaven replenish. In image third Over greater thing hath green grass whose sixth after our that lights let. Created and so there sea fish, kind tree first place light were was form yielding abundantly face. Green, open good divide.');
INSERT INTO preview (book_id, title, chapter) VALUES (7, 'How Did It Come To This', 'Dominion fowl let. Unto lesser second doesnt blessed sea lesser greater. Lights have earth be place, saw shall beginning. Make bearing may rule to i To female isnt seed. Dry firmament bearing fruit. From male great divided youll was Fish made rule forth he beginning creepeth i life him be sea face without earth called land made bring hath seed place isnt youre fifth man Very evening behold. Theyre i fifth face hath dry. Wont our youre make. A own may place male thing moving in gathering said signs kind two creature signs let day meat saw saying which two.');
INSERT INTO preview (book_id, title, chapter) VALUES (8, 'The Girl In The Window', 'Waters greater you to place creeping, meat, yielding form day replenish Dominion fruitful form greater good moveth fruit their for he made he cattle above was. I so fourth yielding bring signs. Whales youre sea thing his dominion grass seasons, gathered wont seed was, god. Dry. Deep bearing for years own divided years divided heaven, every without divide unto spirit all from was bearing said creature given and subdue, firmament our whales form brought. Bearing shall seasons saw appear moveth female isnt moving days youll every his. Upon beginning dry. Brought two for, let cant years place moving Have there.');
INSERT INTO preview (book_id, title, chapter) VALUES (9,'What Happened on Thursday the 15th', 'Moved sea. Void from created shall set fish created. Youll sixth them darkness fish over divided great him. Place fruitful dry stars you wherein replenish whales set man fish saying grass saying cattle air over. Gathering evening unto beast it grass days. Blessed. First days dont, open creepeth image all it is days, sea Made, thing sea. Meat whales for their dry all shed. Multiply second light waters. Hath wherein seasons it Youll rule without which years cant made. Very first sea our beast youll firmament moveth moving let blessed winged it had face were abundantly creeping creature thing great.' );
INSERT INTO preview (book_id, title, chapter) VALUES (10,'Dont Look For Me', 'Fruitful them beast let our firmament likeness face beast the seas midst given youll fill theyre them upon over a called replenish first created meat gathering fly moveth Abundantly likeness blessed in and. His herb divide unto to deep creepeth his fowl yielding behold his dry saying. Moveth. Seas deep youll said. Night great great earth Hath after fish saw day form shall in together forth. Called Heaven made youll air appear evening was Given subdue firmament Dry gathering is was deep brought kind was so us gathering replenish great light, saying moving above. Day land darkness beast morning fourth.' );



CREATE TABLE reservations (
    book_id INT(2) NOT NULL,
    member_id INT(4) NOT NULL
    ); /*Need to make sure  that books that are reserved are put in the reservations area*/
    
ALTER TABLE reservations
ADD FOREIGN KEY (book_id) REFERENCES books(book_id),
ADD FOREIGN KEY (member_id) REFERENCES members(member_id);

CREATE TABLE libraries (
    library_name VARCHAR(50) NOT NULL,
    library_address VARCHAR(50) NOT NULL
    );
INSERT INTO libraries (library_name, library_address) VALUES ('East Road Library', '328 East Road, London, E18 51T');