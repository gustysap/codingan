// hapus duplicate nama dan umur lihat perbedaannya

const name = 'John Doe';
//const name = 'Jane Doe';
const age = 23;
//age = 23;
//age = 24

function letData() {
  
   const fakOne = 'Tehnik Informatika';
  
   if(fakOne === 'Tehnik Informatika') {
     
       const fakTwo = 'Tehnik Informatika'
        
   }else{
     
      console.log('Tehnik Industri');
   }
   return fakTwo;
}

const result = `Nama: ${name}\nUmur: ${age}\nFakultas: ${letData()}`;

console.log(result);
