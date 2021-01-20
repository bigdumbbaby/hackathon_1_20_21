console.log("connected")

const backendURL = "http://localhost:3000/"
const customerDropdown = document.querySelector('#customer-dropdown')

fetch(backendURL + 'customers')
.then( response => response.json())
.then( customers => customers.forEach( customer => {
    const listElement = document.querySelector("#customer-list")
    const selectElement = document.querySelector("#customer-dropdown")
    const $customerNames = document.createElement('li') 
    const option = document.createElement('option')
    

    option.value = customer.id 
    option.textContent = customer.name
    $customerNames.innerHTML = `<a href="/showCustomer.html?id=${customer.id}">${customer.name} - ${customer.moving_date}</a>`
    

    listElement.append($customerNames)
    selectElement.append(option)
  }))

// fetch(backendURL+ 'customers')
//   .then( response => response.json())
//   .then( customers => furnatures.forEach( furnature => {
//     const option = document.createElement('option')

//     option.value = furnature.id 
//     option.textContent = furnature.name 

//   }) )