
     
         let setRate=document.querySelector(".rate");
        let rate=document.querySelector(".rating");
        let form=document.querySelector(".upload-form");
        let pname=document.form.pname;
        let prate=document.form.rate;
        let pprice=document.form.price;
        let des=document.form.description;
        
      
        let i,price;
     
        rate.onmousedown=(e)=>{

            price= (e.target.getAttribute("rate"));
            //  ★★★☆ 
            i=1;
            [...rate.children].forEach(a=>{
                a.textContent=(i<=Number(price))?"★":"☆"; 
                setRate.setAttribute("value",price);  
                
            i++;
            });

    };

        let upload=document.querySelector(".upload");
        var file;
        upload.ondragover=(e)=>{
            e.preventDefault();
             upload.classList.add("dropping");
             
        };
        upload.ondragleave=(e)=>{
            e.preventDefault(); 
                upload.classList.remove("dropping");
                
        };
        upload.ondrop=(e)=>{
                e.preventDefault();
                upload.classList.remove("dropping");
                file=e.dataTransfer.files[0];
               
                showFile(file);
                console.log("-->"+file);
          
        };
        
        
         function mySubmitFunction(e){
            e.preventDefault();
          try {
           js_file_upload(file);
           window.location.href="Dashboard.jsp";
           } catch (e) {
            throw new Error(e.message);  }  
        return false;
            
        }
    function getAll(){
       
        
        
        
    }
    function showFile(file){
        let type=file.type;
        let extension=["image/jpeg","image/png","image/jpg"];
        if(extension.includes(type)){
            let reader=new FileReader();
        
            reader.onload=()=>{
                let url=reader.result;
                upload.innerHTML="<img src='"+url+"'>";
            };
            reader.readAsDataURL(file);
           

        }

    }
    function js_file_upload(obj){
      
            if(obj!==undefined){
                
                var forms=new FormData();
                forms.append("file",obj);
                forms.append("name",pname.value);
                forms.append("price",pprice.value);
                forms.append("rate",prate.value);
                forms.append("description",des.value);
                var xhttp = new XMLHttpRequest();
                
                xhttp.open("POST","FileUpload",false);
                
                xhttp.onload=function(event){
                    if(xhttp.status === 200){console.log("Uploaded!");
                        console.log(xhttp.response);
        }
                    else alert(xhttp.status);
                };
                xhttp.send(forms);
          
            }
    }