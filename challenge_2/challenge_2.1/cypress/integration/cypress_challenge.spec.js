/// <reference types="cypress" />

describe('Cypress challenge', () => {
  it('Should assert map as visible', () => {
    cy.visit('https://vr.com.br/')
    cy.get(':nth-child(3) > .vr-quick-navigation__link').click()
    cy.get('.vr-button--negative').click()
    cy.get('.vr-section-map').should('be.visible')  
  })
})