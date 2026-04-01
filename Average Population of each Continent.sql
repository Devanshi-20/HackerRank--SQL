Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

select cy.continent, floor(avg(c.population)) from city c
 join country cy on 
c.countrycode=cy.code group by cy.continent;