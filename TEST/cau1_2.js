let submit=document.getElementById('button');
let result=document.getElementById('result')
submit.addEventListener('click',()=>{
    let a =+document.getElementById('numberA').value;
   
    let b =+document.getElementById('numberB').value;

    let sum =0;
    for(let i=a+1;i<b;i++){
        if(isPrime(i)){
            
            sum+=i;
        }
        }
        result.innerText=sum;
    })

function isPrime(a){
    for(let i=2;i<=Math.floor(Math.sqrt(a));i++){
        if(a%i==0){
            return false;
        }
        
    }
    return true;
}

document.write("<br/>")
function numberOneTriangle(n){
    if(n>10){
        alert("Hãy truyền lại tham số");
    }else{
        for(let i=0;i<n;i++){
            for(let j=0;j<=i;j++){
                document.writeln(" * ")
            }
            document.writeln("<br/>");
        }
    }
}

numberOneTriangle(7);