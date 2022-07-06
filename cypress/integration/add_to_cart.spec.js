/// <reference types="cypress" />

context('Add to card', () => {
    it("should vist home page", () => {
        cy.visit('http://localhost:3000/')
    })

    it("should add product to cart", () => {
        cy.contains("Swamp Root").parent('article').find(".btn").click({ force: true })
    })

    it("cart should increment by 1", () => {
        cy.contains("My Cart").should("exist")
    })
})