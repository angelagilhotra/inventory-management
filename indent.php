<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type = "text/javascript">
        $(document).ready(function() {
         var max_fields      = 10; //maximum input boxes allowed
         var wrapper         = $("#input_fields_wrap"); //Fields wrapper
         var add_button      = $(".add_field_button"); //Add button ID
         
         var x = 1; //initlal text box count
         $(add_button).click(function(e){ //on add input button click
             e.preventDefault();
            if(x < max_fields){ //max input box allowed
                $('#input_fields_wrap').clone()
          .attr('input_fields_wrap', 'input_fields_wrap'+ x++)
          .insertAfter('[id^="input_fields_wrap"]:last') ;
           //            ^-- Use '#id' if you want to insert the cloned 
           //                element in the beginning
        //   .text('Cloned ' + (x-1)); //<--For DEMO
            //    $(wrapper).clone().insertAfter(wrapper);
             }
         });
         
         $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
             e.preventDefault(); $(this).parent('div').remove(); x--;
         })
     });   
function handleclick(mode){
if(mode.value == "consumable")
{document.getElementById("ifconsumable").style.display="block";
}
else{
    document.getElementById("ifconsumable").style.display="none";
}
if(mode.value == "nonconsumable")
{document.getElementById("ifnonconsumable").style.display="block";
}
else{
document.getElementById("ifnonconsumable").style.display="none";
}
}

</script>

    
    <title>Request Form</title>

</head>
<body>
    <div class="container">
        <h2>INDENT</h2>
        <br>
        <form class="form-horizontal" action="" method="post">
         
                <div class="form-group">
                        <label class="control-label col-sm-2">INDENT NUMBER: </label>
                        <div class="col-sm-10">
                            <?php printf(uniqid()); ?>
                        </div>
                      </div>
          <div class="form-group">
                <label class="control-label col-sm-2" for="ID">Indentor Name: </label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="ID" >
                </div>
              </div>
              <div class="form-group">
                    <label class="control-label col-sm-2" for="dept">Select your Department: </label>
                    <div class="col-sm-10">
                        <select class="form-control" name="dept">
                            <option disabled selected>Select your option</option>
                           <option>IT</option>
                           <option>CSE</option>
                           <option>ECE</option>
                           <option>MAE</option>
                           <option>Applied Sciences & Humanities</option>
                           <option>Architecture and Planning</option>
                          </select>
                    </div>
                  </div>
             <div class="form-group">
                        <label class="control-label col-sm-2" for="date">Date: </label>
                        <div class="col-sm-10">
                            <input type="date" class="form-control" name="date" >
                        </div>
                      </div>
<hr>
ITEM DETAILS:
<div id="input_fields_wrap">
               
        <div class="form-group">
        <label class="control-label col-sm-2" for="type">Type of Item Required: </label>
        <div class="col-sm-10">
            <select class="form-control" name="type"  onclick="handleclick(this);">
                <option value="" disabled selected>Select your option</option>
                <option name="consumable" value="consumable">Consumable</option>
                <option name="nonconsumable" value="nonconsumable">Non-consumable</option>
                </select>
        </div>
      </div>

      <div id="ifconsumable"class = "form-horizontal" style="display: none;">
            <div class="form-group">
            <label  class="control-label col-sm-2"for="typeconsumable">Item:</label>
            <div class="col-sm-10">
             <select name="consumable">
             <option value="">Marker</option>
             <option value="">A4 notepad</option>
             <option value="">A5 notepad</option>
             <option value="">Register</option>
            <option>MORE ITEMS TO BE ADDED</option> 
            </select>
            </div>
            </div>
     
        <div class="form-group">
                <label class="control-label col-sm-2">Quantity Required:</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" name="Qty">
            </div>
            </div>
     </div>

     <div id = "ifnonconsumable" class = "form-horizontal" style="display: none;">
            <div class="form-group">
            <label  class="control-label col-sm-2"for="typenonconsumable">Item:</label>
            <div class="col-sm-10">
             <select>
             <option value="">Laptop</option>
             <option value="">Podium</option>
             <option value="">Server</option>
             <option value="">Wireless contoller</option>
            <option>MORE ITEMS TO BE ADDED</option> 
            </select>
            </div>
        </div>
     
        <div class="form-group">
                <label class="control-label col-sm-2">Quantity Required:</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" name="Qty">
            </div>
            </div>
     </div>
</div>
            <div class="col-sm-offset-2 col-sm-10">
            <div class = "add-button">
           <button class="add_field_button">Add More Items</button> 
         <!-- <input type="button" id = "btnAdd" onclick = "AddDropDownList()" value = "Add DropDownList" />-->
            </div>
            </div>
            <br>
            <br>
       
       
             <div class="form-group">        
            <div class="col-sm-offset-2 col-sm-10">
              <button type="submit" class="btn btn-success">Submit</button>
            </div>
          </div>
        </form>
      </div>
</body>
</html>
