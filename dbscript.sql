-- Create a table to store book data
drop database if exists bookshelf;
create database bookshelf;
use bookshelf;

CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(15) NOT NULL,
    amazon_link VARCHAR(255),
    description TEXT
);

-- Insert the provided data into the 'books' table
INSERT INTO books (name, author, isbn, amazon_link, description)
VALUES
    ("To Kill a Mockingbird", "Harper Lee", "0060935464", "https://www.amazon.com/Kill-Mockingbird-Harper-Lee/dp/0060935464",
     "A classic story of racial injustice, moral heroism, and innocence destroyed in the Deep South of the 1930s."),
    ("1984", "George Orwell", "9780451524935", "https://www.amazon.com/1984-Signet-Classics-George-Orwell/dp/0451524934",
     "A dystopian novel set in a world where totalitarianism has taken over, and individual freedom and critical thinking are suppressed."),
    ("The Great Gatsby", "F. Scott Fitzgerald", "9780743273565", "https://www.amazon.com/Great-Gatsby-F-Scott-Fitzgerald/dp/0743273567",
     "A tragic love story that explores themes of wealth, power, and the American Dream in the Roaring Twenties."),
    ("Moby-Dick", "Herman Melville", "0142000086", "https://www.amazon.com/Moby-Dick-Herman-Melville/dp/0142000086",
     "A novel about obsession, revenge, and the destructive power of nature, centered around a vengeful captain's hunt for a great white whale."),
    ("The Catcher in the Rye", "J.D. Salinger", "0316769487", "https://www.amazon.com/Catcher-Rye-J-D-Salinger/dp/0316769487",
     "A controversial novel that follows the rebellious Holden Caulfield as he navigates the challenges of growing up and finding his place in the world."),
    ("Pride and Prejudice", "Jane Austen", "0141439513", "https://www.amazon.com/Pride-Prejudice-Penguin-Classics-Austen/dp/0141439513",
     "A romantic comedy of manners that explores themes of social status, love, and marriage in 19th-century England."),
    ("One Hundred Years of Solitude", "Gabriel Garcia Marquez", "0060883286", "https://www.amazon.com/Hundred-Solitude-Harper-Perennial-Classics/dp/0060883286",
     "A novel that blends magical realism, family history, and political commentary to tell the story of the Buendia family over seven generations."),
    ("The Hobbit", "J.R.R. Tolkien", "054792822X", "https://www.amazon.com/Hobbit-J-R-Tolkien/dp/054792822X",
     "A fantasy adventure novel that follows hobbit Bilbo Baggins"),
    ("The Picture of Dorian Gray", "Oscar Wilde", "9780141442464", "https://www.amazon.com/Picture-Dorian-Gray-Penguin-Classics/dp/0141442468",
     "A novel about a man who sells his soul for eternal youth and beauty, only to see his portrait bear the scars of his sins."),
    ("The Road", "Cormac McCarthy", "9780307387899", "https://www.amazon.com/Road-Cormac-McCarthy/dp/0307387895",
     "A post-apocalyptic novel about a father and son's journey through a desolate wasteland, as they struggle to survive and retain their humanity."),
    ("The Alchemist", "Paulo Coelho", "9780062315007", "https://www.amazon.com/Alchemist-Paulo-Coelho/dp/0062315005",
     "A spiritual novel about a shepherd boy's journey to find his personal legend, as he learns the importance of following his dreams and trusting in the universe."),
    ("The Count of Monte Cristo", "Alexandre Dumas", "9780140449266", "https://www.amazon.com/Count-Monte-Cristo-Penguin-Classics/dp/0140449264",
     "A classic adventure novel about a man who is wrongfully imprisoned and seeks revenge against those who betrayed him, with themes of justice and redemption."),
    ("The Brothers Karamazov", "Fyodor Dostoevsky", "9780140449242", "https://www.amazon.com/Brothers-Karamazov-Fyodor-Dostoevsky/dp/0140449248",
     "A philosophical novel that explores themes of morality, religion, and the nature of existence through the lives of three brothers and their father."),
    ("Nader Shah", "Michael Axworthy", "978-1845119829", "https://www.amazon.de/Sword-Persia-Tribal-Warrior-Conquering/dp/1845119827/ref=sr_1_1?__mk_de_DE=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=FREU4XSPOAMM&keywords=nader+shah&qid=1685806195&sprefix=nader+shah%2Caps%2C87&sr=8-1",
     "cool book");
