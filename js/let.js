// hapus duplicate nama dan umur lihat perbedaannya

let name = 'John Doe';
//let name = 'Jane Doe';
let age;
age = 23;
age = 24

function letData() {
  
   let fakOne = 'Tehnik Informatika';
  
   if(fakOne === 'Tehnik Informatika') {
     
       let fakTwo = 'Tehnik Informatika'
        
   }else{
     
      console.log('Tehnik Industri');
   }
  
    return fakTwo;
}

let result = `Nama: ${name}\nUmur: ${age}\nFakultas: ${letData()}`;

console.log(result);
