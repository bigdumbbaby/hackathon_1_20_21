const backendURL = "http://localhost:3000/"

fetch(backendURL + 'furnatures')
.then( response => response.json())
.then( furnitures => furnitures.forEach( furniture => {
    const furnatureName = document.createElement('h3')
    const furnatureInfo = document.createElement('ul')
    
    furnatureName.textContent = furniture.name
    furnatureInfo.innerHTML = `
    <li>Size - ${furniture.size}</li>
    <li>Customer - ${furniture.customer.name}</li>`
    

    document.body.append(furnatureName)
    document.body.append(furnatureInfo)
  }))