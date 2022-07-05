/// <reference types="cypress" />

// Welcome to Cypress!
//
// This spec file contains a variety of sample tests
// for a todo list app that are designed to demonstrate
// the power of writing tests in Cypress.
//
// To learn more about how Cypress works and
// what makes it such an awesome testing tool,
// please read our getting started guide:
// https://on.cypress.io/introduction-to-cypress

describe('HOME page', () => {
    beforeEach(() => {
        cy.visit('http://localhost:3000/')
    })

    it('displays home page', () => {
        cy.get('body').should('be.visible')
    })

    it("There is products on the page", () => {
        cy.get(".products article").should("be.visible");
    });

    it("There is 2 products on the page", () => {
        cy.get(".products article").should("have.length", 12);
    });


})
