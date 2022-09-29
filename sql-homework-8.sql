--1) test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
--2) Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
--3) Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
--4) Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.


1) CREATE TABLE employee (
id SERIAL PRIMARY KEY, name VARCHAR(50) NOT NULL, birthday DATE, email VARCHAR(100)
);

2) insert into employee (name, birthday, email) values 
('Nona', '1975/08/27', 'naddionizio0@discuz.net'),
('Colly', '1984/03/08', 'cgerson1@angelfire.com'),
('Noland', '1925/06/15', 'nhutsby2@noaa.gov'),
('Manda', '1963/11/13', 'mpalfreyman3@reddit.com'),
('Carlene', '1976/07/07', 'cclaxson4@sina.com.cn'),
('Claudio', '1919/03/11', 'ctaaffe5@de.vu'),
('Nevil', '1925/03/02', null),
('Culver', '1993/02/27', 'cmcphillimey7@japanpost.jp'),
('Milo', '1961/05/25', 'mmcclary8@list-manage.com'),
('Pippo', null, 'pphinnessy9@businessweek.com'),
('Inglebert', '1959/08/14', 'itithecotea@ustream.tv'),
('Gino', '1924/05/12', 'gneilusb@slashdot.org'),
('Carolann', '1942/02/21', 'cwellardc@simplemachines.org'),
('Fields', '1970/02/23', null),
('Rurik', '1953/07/07', 'rnapletone@yale.edu'),
('Emelen', '1923/01/14', null),
('Adina', null, 'acullipg@slashdot.org'),
('Rogers', '1911/04/24', 'rbrookesbieh@arstechnica.com'),
('Gustie', '1976/12/29', 'gwishami@reuters.com'),
('Marji', '1912/04/29', 'mbreawoodj@google.ca'),
('Dru', '1979/12/21', 'dshippardk@facebook.com'),
('Adoree', '1946/03/08', 'amapledoraml@hibu.com'),
('Vonnie', '1927/02/19', 'vreastm@addtoany.com'),
('Rowney', '1910/03/09', 'rhardawayn@tiny.cc'),
('Evelin', '1919/08/08', null),
('Archaimbaud', '1969/12/11', 'adevallp@tmall.com'),
('Delmar', '1973/07/14', 'dmuckq@netlog.com'),
('Alix', '1967/02/09', null),
('Betta', '1933/11/26', 'bmarzelos@blog.com'),
('Rock', '1999/06/02', null),
('Stephine', null, null),
('Astra', '1948/09/05', 'abasekev@cocolog-nifty.com'),
('Shelton', '1948/04/15', 'sfrantsevw@yellowpages.com'),
('Sven', '1987/06/22', 'socrowleyx@tmall.com'),
('Dorelia', '1945/05/24', 'dminchiy@statcounter.com'),
('Yolanda', '1901/06/18', null),
('Abra', '1968/09/26', 'auzielli10@google.it'),
('Boycie', '1994/01/14', 'bcyson11@unicef.org'),
('Kippie', '1920/05/25', null),
('Sinclare', '1913/06/07', 'swoodard13@github.io'),
('Corissa', '1986/07/04', 'cadderson14@jalbum.net'),
('Eran', '1983/09/23', 'etilt15@flavors.me'),
('Aluino', '1998/11/30', 'amccracken16@sbwire.com'),
('Omar', '1920/03/24', null),
('Chrisse', '1909/01/09', 'clow18@nyu.edu'),
('Stevie', '1924/10/11', 'spollen19@amazon.co.jp'),
('Cullie', null, 'cgrzegorzewicz1a@yellowpages.com'),
('Monroe', '1958/07/20', null),
('Jimmie', '1920/01/14', 'jmcloughlin1c@theatlantic.com'),
('Daniela', '1904/08/20', 'dpappin1d@sogou.com');

3) UPDATE employee
SET name = 'invalid',
birthday = '2000-01-01'
email = 'invalid'
WHERE id < 6;

4) DELETE FROM employee
WHERE id<6;

