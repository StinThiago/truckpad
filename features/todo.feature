# encoding: utf-8

Feature: Todo list
    In order to add new todo list
    A user
    Should create a new todo list
 
Scenario: Add new Todo List
    Given I am on the Todo list page
    And I will click at Nova lista
    And I fill in "User Id" with "1"
    And I fill in "Description" with "BDD Todo List"
    When I press "Criar/Alter" button
    Then page should have notice message "Lista de afazeres criada com sucesso."