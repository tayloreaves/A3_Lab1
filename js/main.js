(function() {
  // start with retrieving the elements from the page, and then adding event handling. then write the logic. refer to the seasons example / homework

  var img = document.querySelectorAll('.data-ref');
      //model = document.querySelector('.modelName'),
      //price = document.querySelector('.priceInfo'),
      //description = document.querySelector('.modelDetails');
    const httpRequest = new XMLHttpRequest();

  function getCarData() {
      const url = './includes/functions.php?carModel=' + this.id;

  //the fetch API uses new JavaScript Promise API
    fetch(url) //do an ajax call with fetch
    .then((resp) => resp.json()) //convert to json
    .then(({ modelName, pricing, modelDetails, model }) => { //call the process function
        let carModel = document.querySelector('.modelName').textContent = modelName;
        let price = document.querySelector('.priceInfo').innerHTML = pricing;
        let description = document.querySelector('.modelDetails').textContent = modelDetails;

    img.forEach(function(image, index){
      image.classList.add('nonActive');
    });

    //this is a template string constructor - look it up!
    document.querySelector(`#${model}`).classList.remove('nonActive');

    })

    .catch(function(error) {
      //catch the error
      console.log(error);

    });

  }


// function processResult(data) {
//   // destructuring assignment - new for E56
//   const { modelName, pricing, modelDetails } = data;
//
//    
//     let model = document.querySelector('.modelName').textContent = modelName;
//     let price = document.querySelector('.priceInfo').innerHTML = pricing;
//     let description = document.querySelector('.modelDetails').textContent = modelDetails;
//
//     img.forEach(function(image, index){
//       image.classList.add('nonActive');
//     });
//     //this is a template string constructor - look it up!
//
//     document.querySelector(`#${data.model}`).classList.remove('nonActive');
//   }
//
//
      img.forEach(function(image, index){
          //add an event handler to each image
        image.addEventListener('click', getCarData, false);
      });
})();
