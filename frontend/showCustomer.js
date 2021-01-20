const queryParams = new URLSearchParams(window.location.search)
const id = queryParams.get('id')

fetch(`http://localhost:3000/customers/${id}`)
  .then(response => response.json())
  .then( customer => {

    console.log(customer.furnature)
    const customerInfo = document.createElement('section')
    customerInfo.innerHTML = `
    <h1> Name: ${customer.name}</h1>
    <h1> Age: ${customer.age}</h1>
    <h1> Move Date: ${customer.moving_date}</h1>
    `
    document.querySelector('body').append(customerInfo)
  })