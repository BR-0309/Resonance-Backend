insert into language (name) values ('English'),('German'),('French');
insert into country (name) values ('United Kingdom'),('Germany'),('France'),('Switzerland');

insert into source (id, name, homepage, language_id, country_id) values
(1, 'BBC News',                'http://www.bbc.com/news',   1, 1),
(2, 'Frankfurter Allgemeine',  'http://www.faz.net/',       2, 2),
(3, 'SRF',                     'http://www.srf.ch/news/',   2, 4);

insert into section (id, name, url, source_id) values
(1, 'Front page',              'http://www.bbc.com/news',                               1),
(2, 'UK news',                 'http://www.bbc.com/news/uk',                            1),
(3, 'World',                   'http://www.bbc.com/news/world',                         1),
(4, 'Africa',                  'http://www.bbc.com/news/world/africa',                  1),
(5, 'Asia',                    'http://www.bbc.com/news/world/asia',                    1),
(6, 'Australia',               'http://www.bbc.com/news/world/australia',               1),
(7, 'Europe',                  'http://www.bbc.com/news/world/europe',                  1),
(8, 'Latin America',           'http://www.bbc.com/news/world/latin_america',           1),
(9, 'Middle East',             'http://www.bbc.com/news/world/middle_east',             1),
(10, 'US & Canada',            'http://www.bbc.com/news/world/us_and_canada',           1),
(11, 'Business',               'http://www.bbc.com/news/business',                      1),
(12, 'Technology',             'http://www.bbc.com/news/technology',                    1),
(13, 'Science & Environment',  'http://www.bbc.com/news/science_and_environment',       1),
(14, 'Health',                 'http://www.bbc.com/news/health',                        1),
(15, 'Entertainment & Arts',   'http://www.bbc.com/news/entertainment_and_arts',        1),


(16, 'Economy',                'http://www.faz.net/aktuell/wirtschaft/',                2),
(17, 'Finances',               'http://www.faz.net/aktuell/finanzen/',                  2),
(18, 'Feuilleton',             'http://www.faz.net/aktuell/feuilleton/',                2),
(19, 'Sport',                  'http://www.faz.net/aktuell/sport/',                     2),
(20, 'Society',                'http://www.faz.net/aktuell/gesellschaft/',              2),
(21, 'Style',                  'http://www.faz.net/aktuell/stil/',                      2),
(22, 'Technology',             'http://www.faz.net/aktuell/technik-motor/',             2),
(23, 'Knowledge',              'http://www.faz.net/aktuell/wissen/',                    2),
(24, 'Travel',                 'http://www.faz.net/aktuell/reise/',                     2),
(25, 'Rhein-Main',             'http://www.faz.net/aktuell/rhein-main/',                2),


(26, 'Front page',             'http://www.srf.ch/news/',                               3),
(27, 'Switzerland',            'http://www.srf.ch/news/schweiz',                        3),
(28, 'Aargau Solothurn',       'http://www.srf.ch/news/regional/aargau-solothurn',      3),
(29, 'Basel Basel-Land',       'http://www.srf.ch/news/regional/basel-baselland',       3),
(30, 'Bern Fribourg Valais',   'http://www.srf.ch/news/regional/bern-freiburg-wallis',  3),
(31, 'Grisons',                'http://www.srf.ch/news/regional/graubuenden',           3),
(32, 'East Switzerland',       'http://www.srf.ch/news/regional/ostschweiz',            3),
(33, 'Central Switzerland',    'http://www.srf.ch/news/regional/zentralschweiz',        3),
(34, 'Zurich & Schaffhausen',  'http://www.srf.ch/news/regional/zuerich-schaffhausen',  3),
(35, 'World',                  'http://www.srf.ch/news/international',                  3),
(36, 'Panorama',               'http://www.srf.ch/news/panorama',                       3),
(37, 'Economy',                'http://www.srf.ch/news/wirtschaft',                     3),
(38, 'Infographics',           'http://www.srf.ch/news/infografik-3',                   3),
(39, 'Sport',                  'http://www.srf.ch/sport',                               3),
(40, 'SRF Data',               'http://www.srf.ch/news/srf-data',                       3);

insert into exclude_urls (url) values
('http://www.bbc.co.uk/events/*'),
('http://www.bbc.com/earth/uk'),
('http://www.bbc.co.uk/science'),
('http://www.bbc.com/future'),
('http://www.faz.net/op900/event/*'),
('http://www.faz.net/epaper'),
('http://www.faz.net/aktuell/gesellschaft/jugend-schreibt/'),
('http://www.faz.net/aktuell/feuilleton/pop/album-der-woche/'),
('http://www.faz.net/op900/event/europa-league/live/'),
('http://www.faz.net/gastspezial'),
('http://blogs.faz.net/foodaffair/*'),
('http://www.faz.net/plus'),
('http://plus.faz.net/*'),
('http://eix.faz.net/*'),
('http://quelleinternet.faz.net/*'),
('http://event.faz.net/*'),
('http://dynamic.faz.net/*'),
('http://www.fnp.de/fnp/anzeigen/trauerportal/'),
('http://www.faz-leser-helfen.de/die-stiftung/f-a-z-leser-helfen-hier-koennen-sie-spenden-13086256.html'),
('http://www.facebook.com/*'),
('http://www.twitter.com/*'),
('https://www.facebook.com/*'),
('https://www.twitter.com/*'),
('http://foursquare.com/*'),
('https://www.faz.net/mein-faz-net/newsletter/'),
('http://www.faz.net/aktuell/finanzen/boersenspiel/');



insert into parse_rule (section_id, css_selector, text_selector, url_selector) values
(1,  '.gs-c-promo-heading', 'h3',   'self'  ),
(2,  '.title-link__title',  'self', 'parent'),
(3,  '.title-link__title',  'self', 'parent'),
(4,  '.title-link__title',  'self', 'parent'),
(5,  '.title-link__title',  'self', 'parent'),
(6,  '.title-link__title',  'self', 'parent'),
(7,  '.title-link__title',  'self', 'parent'),
(8,  '.title-link__title',  'self', 'parent'),
(9,  '.title-link__title',  'self', 'parent'),
(10, '.title-link__title',  'self', 'parent'),
(11, '.title-link__title',  'self', 'parent'),
(12, '.title-link__title',  'self', 'parent'),
(13, '.title-link__title',  'self', 'parent'),
(14, '.title-link__title',  'self', 'parent'),
(15, '.title-link__title',  'self', 'parent'),


(16, '.TeaserHeadLink', '.Headline', 'self'),
(17, '.TeaserHeadLink', '.Headline', 'self'),
(18, '.TeaserHeadLink', '.Headline', 'self'),
(19, '.TeaserHeadLink', '.Headline', 'self'),
(20, '.TeaserHeadLink', '.Headline', 'self'),
(21, '.TeaserHeadLink', '.Headline', 'self'),
(22, '.TeaserHeadLink', '.Headline', 'self'),
(23, '.TeaserHeadLink', '.Headline', 'self'),
(24, '.TeaserHeadLink', '.Headline', 'self'),
(25, '.TeaserHeadLink', '.Headline', 'self'),

(26, '.title', 'self', 'self_parent'),
(27, '.title', 'self', 'self_parent'),
(28, '.title', 'self', 'self_parent'),
(29, '.title', 'self', 'self_parent'),
(30, '.title', 'self', 'self_parent'),
(31, '.title', 'self', 'self_parent'),
(32, '.title', 'self', 'self_parent'),
(33, '.title', 'self', 'self_parent'),
(34, '.title', 'self', 'self_parent'),
(35, '.title', 'self', 'self_parent'),
(36, '.title', 'self', 'self_parent'),
(37, '.title', 'self', 'self_parent'),
(38, '.title', 'self', 'self_parent'),
(39, '.title', 'self', 'self_parent'),
(40, '.title', 'self', 'self_parent');