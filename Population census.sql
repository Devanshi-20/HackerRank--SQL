Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.


select sum(c.population) from city c
 join country cy on 
c.countrycode=cy.code where cy.continent='Asia'
group by c.name;