/// <reference types="cypress" />

context('View product', () => {
    beforeEach(() => {
        cy.visit('http://localhost:3000/')
    })

    it('.click() - click on a DOM element', () => {
        cy.get('.products article').first().click()
        cy.get('.products-show').should('be.visible');
    })
})
