create table NEWS(
    NEWS_ID NUMBER PRIMARY KEY NOT NULL,
    NEWS_NAME VARCHAR(20),
    NEWS_CONTENT VARCHAR(200),
    NEWS_DATE DATE,
    NEWS_TAG NUMBER,
    USER_ID NUMBER   
)

drop table news

SELECT * FROM news WHERE ROWNUM < 100

insert into news values(1,'12','23344',to_date('2010-2-12 10:20:30','YYYY-MM-DD HH24:MI:SS'),1,2)






