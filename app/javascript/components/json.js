
const jsonloyverse = () => {
if (document.getElementById('loyverse')) {
  console.log("Funcionando")
fetch(`https://api.loyverse.com/v1.0/receipts`, {
    method: "GET",
    headers: {'Authorization': 'Bearer' + "aa793dc9358d4a678e7387ac191d6d53"}
  })
  .then(response => response.json())
  .then((data) => {
    // lugar == link para google maps
    console.log(data)
  });
};

}


export { jsonloyverse };
