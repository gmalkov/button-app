/// <reference types="cypress" />

context('Test', () => {
  it('Make sure page loads', () => {
    cy.visit('http://localhost:5000')
    cy.get('#button').should('be.visible')
    cy.get('#text').should('contain', 'Clicked 0 times')
  })

  it('Click the button once and make sure the counter goes up', () => {
    cy.get('#button').click()
    cy.get('#text').should('contain', 'Clicked 1 times')
  })

  it('Click the button again and make sure the counter goes up again', () => {
    cy.get('#button').click()
    cy.get('#text').should('contain', 'Clicked 2 times')
  })
})
