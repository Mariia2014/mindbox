CREATE TABLE Products (
 id int PRIMARY KEY,
 title VARCHAR(100))


CREATE TABLE Categories(
 id int PRIMARY KEY,
 title VARCHAR(100))


INSERT INTO Products (id, title)
 VALUES 
 (1, 'Хлеб'),(2, 'Молоко'),(3, 'Кефир'), (4,'Кофе');


INSERT INTO Categories (id, title)
 VALUE (1,'Молочка'),(2,'Выпечка'),(3,'Заморозка');
 
CREATE TABLE ProductCategories(
 ProductId INT FOREIGN  KEY Products(id)
 CategoryId INT FOREIGN KEY Categories(id)
 PRIMARY KEY (ProductId,CategoryId))


INSERT INTO (ProductId,CategoryId)
 VALUES(1,2),(2,1),(3,1)


SELECT p.title, c.title 
FROM Product as p
LEFT JOIN ProductCategories as pc ON pc.ProductId = p.id
LEFT JOIN Categories as c ON c.id = pc.CategoryId
ORDER BY p.title