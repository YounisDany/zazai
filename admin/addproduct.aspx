<%@ Page Title="" Language="C#" MasterPageFile="~/admin/main.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="admin_add_diploma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    
      <main class="col-md-9 ms-sm-auto col-lg-12 px-md-4">


        <div class="midde_cont">
                        <div class="container-fluid">
                            <div class="row column_title">
                                <div class="col-md-12">
                                    <div class="page_title">
                                        <h2>إضافة منتج</h2>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <!--=====================================row input=================================================-->


                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-body">
                                        <div class="row p-t-20">

                                          

                                              

                                            <div class="col_lg_12 col-md-12">

                                                <div class="row">
                                                    <div class="col_lg_12 col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label">إسم المنتج</label>
                                                         

                                                         
                                                         <input type="text" class="form-control" id="name" />
                                                          


                                                        </div>




                                                    </div>


                                                  
                                         

                                                     <%--        <div class="col_lg_12 col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label"> عدد الساعات</label>
                                                         

                                                    
                                                         <input type="text" class="form-control" id="number_hours" />
                                                          


                                                        </div>




                                                    </div>--%>


                                                 



                                            








              


                                              




                                                    
                                               



                                                 
                                                </div>



                                                       <div class="row">



                                                      


                                                    <div class="col_lg_12 col-md-3">
                                                        <div class="form-group">
                                                     
                                                         

                                                            <label class="control-label">صورةالمنتج</label>
                                                        <input type="file" class="form-control"  accept="image/*" name="image" id="file"  onchange="loadFile(event)" />
                                                          


                                                        </div>




                                                    </div>




                                                                




                                                           </div>




                                                <div class="row">



                                                      <div class="col_lg_6 col-md-6">
                                                        <div class="form-group">
                                                     
                                                         

                                                         
                                                    <img src="" class="form-control"  id="img"/>
                                                          


                                                        </div>




                                                    </div>


                                                </div>


                                                
                                                

                               


                                                <div class="row">



                                                                 <div class="col-lg-12 col-md-3">

                                                        <div class="form-group">


                                                       
      
      
   
                                                        
                                                        

                                                         




                                                           
                                                        </div>





                                                    </div>



                                                          

                                               



                                               


                                                    <!--                           <button type="button" id="button_upload" style="width: auto; height: 30px ;">ارسال المنشور</button>
                                                    -->
                                                </div>


                                                                                           <div class="row">
                                                       <div class="col_lg_12 col-md-12">
                                                        <div class="form-group">

                                                            

                                                          

                                                            <button type="button" class="btn btn-success" id="save">حفظ</button>

                                                            </div>
                                                           </div>
                                                      </div>


                                            </div>
                                                     











                                            <!-----------------image -------------------->

                                        </div>
                                    </div>
                                </div>
                                <br />
                                <br />
                                <br />





                            <!--------------------------------------/save-del buttons------------------------------------- -->
                            <!--------------------------------------/Model------------------------------------- -->
                            
                            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalCenterTitle">حفظ التغييرات</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            ...
                                        </div>
                                     
                                    </div>
                                </div>
                            </div>

                      
                        </div>
                    </div>
            </main>

    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>


    <script>
        var loadFile = function (event) {
            var image = document.getElementById('img');
            image.src = URL.createObjectURL(event.target.files[0]);
        };
</script>


    <script type="text/javascript">


      //  name






        function vaild() {

            if ($("#name").val() == '') {

                //alert(" إدخل اسم المنتج");
                swal("خطأ", "إدخل اسم المنتج", "error");
                //swal("إدخل اسم الدورة!");
                return false;
            }


      

          


    


    


       
     




            return true;


        }




        function saveimage() {

            var img;
            var fileUpload = $("#file").get(0);
            var files = fileUpload.files;

            var data = new FormData();
            if (files.length > 0) {
                data.append(files[0].name, files[0]);
                img = files[0].name;


                ////////////////start save image/////////


                $.ajax({
                    url: "FileUploadHandler.ashx",
                    type: "POST",
                    data: data,
                    contentType: false,
                    processData: false,
                    success: function (result) {
                        //swal("تم", "تم حفظ الصورة بنجاح,", "success");

                        /////////////////////////////////////الحفظ//////////////////////////

                        
                        
                        
                        
                        
                        
                   
                        $.ajax({
                            type: "POST",
                            url: "addproduct.aspx/insertsave",
                            data: '{name: "' + $("#name").val() + '",img:"' + img + '" }',
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (response) {
                                //alert(response.d);
                                swal("تم", "تم الحفظ بنجاح,", "success");
                                $("#name").val('');
                                $("#price").val('');
                            

                            },

                            error: function (response) {

                                swal("خطأ", "لم يتم الحفظ,", "error");
                                //alert(response.responseText);
                            }
                        });










                        ///////////////////////////////////////////////////////////////////////////////////////////////////////
                    },
                    error: function (err) {
                        // alert(err.statusText)
                        swal("خطأ", "لم يتم الحفظ,", "error");
                    }
                });
            }

            else {
                swal("خطأ", "اخل الصورة,", "error");
            }




        }





        $("#save").on('click', function () {

            if (vaild()) {
                // saveimage();
                //alert($("#currency option:selected").text());
                saveimage();
            }



        });


    </script>





</asp:Content>


