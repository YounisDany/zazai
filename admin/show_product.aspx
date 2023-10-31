<%@ Page Title="" Language="C#" MasterPageFile="~/admin/main.master" AutoEventWireup="true" CodeFile="show_product.aspx.cs" Inherits="admin_show_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
 <main class="col-md-9 ms-sm-auto col-lg-12 px-md-4">


        <div class="midde_cont">
                        <div class="container-fluid">
                            <div class="row column_title">
                                <div class="col-md-12">
                                    <div class="page_title">
                                        <h2>عرض جميع المنتجات</h2>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <!--=====================================row input=================================================-->


                            <div class="row">
                                 <div class="col_lg_12 col-md-3">
                                                        <div class="form-group">

                                                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success form-control" Text="تحديث" OnClick="Button1_Click" ></asp:Button>




                                                            </div>
                                     </div>
                                
                          
                                <br />
                            




                                <!-------------------------------------------------------------------------------------------->
                                <!-------------------------------------------------------------------------------------------->
                                <!-------------------------------------------------------------------------------------------->
                                <table class=" table-responsive table1" id="tb">
                                    <thead>
                                        <tr>
                                            <th style="display:none"><div>#</div></th>
                                            <th><div >اسم المنتج</div></th>
                                    
                                               <th><div >    صورة المنتج</div></th>
                                          

                                
                                           
                                        

                                        
                                           
                                      
                                            <th style="  text-align: center;">الحذف</th>
                                                 <th style="  text-align: center;">التعديل</th>


                                        </tr>

                                    </thead>

                                    <tbody>
                                        <br>


                                           

                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>

                                        

                                        <tr>

                                                              
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                  

                                            <td style="display:none"><div id="id"><%#Eval("id") %></div></td>

                                          <td ><div id="name" style="    text-align: center;color: black;font-size: 18px;"><%#Eval("name") %></div></td>

                                            
                                              


  
                                            
                                            <td style="display:none"id="img3"><%#Eval("nameimage") %></td>
                                            
   <td ><div style="text-align:center"><img src="images/<%#Eval("nameimage") %>" width="100" height="100"   id="img2" /></div></td>                




                                            
     <td  style="  text-align: center;"><div >  <button type="button" class="btn btn-danger deletem">حذف</button>  </div></td>
                                              <td  style="  text-align: center;"><div >  <button type="button" class="btn btn-primary updatem">تعديل</button>  </div></td>

                                        </tr>


                                                    </ItemTemplate>

                                        </asp:Repeater>

                                       

                                    </tbody>
                                </table>



                             

                                <!--===========================================================================================-->

                                        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>




                                <button type="button" class="btn btn-primary" id="show" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo" style="display:none"></button>


<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="direction: ltr;">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">بيانات المنتجات </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="direction: rtl;">

               <div class="row">

                                                        <span style="display:none" id="idd"></span>



                                                   <div class="col_lg_6 col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label" style="float:right">إسم المنتج</label>
                                                         

                                                         
                                                         <input type="text" class="form-control" id="namee" />
                                                          


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



                                                      


                                                     <div class="col_lg_6 col-md-6">
                                                        <div class="form-group">
                                                     
                                                         

                                                            <label class="control-label"style="float:right">صورة المنتج</label>
                                                        <input type="file" class="form-control"  accept="image/*" name="image" id="file"  onchange="loadFile(event)" />
                                                          


                                                        </div>




                                                    </div>

                                                              <div class="col_lg_6 col-md-6">
                                                        <div class="form-group">
                                                     
                                                         

                                                         
                                                    <img src="" class="form-control"  id="img"/>
                                                          


                                                        </div>




                                                    </div>









                                                    
                                                                     





                                                






                                            
                                              
                                              

                                                 
                                                </div>

    

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق النافذة</button>
           <button type="button" class="btn btn-danger" id="dele">حذف</button>
        <button type="button" class="btn btn-primary" id="updat">حفظ التعديل</button>
      </div>
    </div>
  </div>
</div>





<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



                            </div>


                            <!-- ====================================save-del buttons========================================= -->
                            <!--<div class="text-end d-sm-flex justify-content-sm-center align-items-sm-end social-icons" style="padding: 41px 0px;text-align: right;align-items: center;">
                                           <a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-youtube"></i></a></div>

                                         <div class="icons">
                                           <a href="#" class="edit" id="update"><i class="fa fa-print"></i> طباعة</a>
                                           <a href="#" class="edit" id="update"><i class="fa fa-print"></i> طباعة</a>
                                           <a href="#" class="edit" id="update"><i class="fa fa-print"></i> طباعة</a>

                                         </div>
                            -->



                            <!--

                            <div class="save-edit" data-toggle="modal" data-target="#exampleModalCenter">
                                <button class="save" id="save">
                                    <h4><i class="fa fa-file-text"> حفظ</i></h4>
                                </button>

                                <button class="edit" id="update">
                                    <h4><i class="fa fa-pencil-square-o"></i> تعديل</h4>
                                </button>
                            </div>-->

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


             


      


    <script src="jquery.bootstrap-growl.js"></script>
    <script src="jquery.bootstrap-growl.min.js"></script>


     <script>
         var loadFile = function (event) {
             var image = document.getElementById('img');
             image.src = URL.createObjectURL(event.target.files[0]);
         };
</script>
<script type="text/javascript">



    //  start();





    //function start() {

    //    $.ajax({
    //        type: "POST",
    //        contentType: "application/json",
    //        url: "show_category.aspx/start",
    //        data: "{}",
    //        dataType: "JSON",
    //        success: function (result) {



    //            $.each(result.d, function (key, value) {


    //                var data = $("#tb tr:eq(1)").clone(true).appendTo("#tb");

    //                data.find("#id").text(value.ID);

    //                data.find("#name").text(value.name);







    //            });
    //            $('#tb tr').each(function (index, ele) {
    //                if (index == 1) {
    //                    $(this).closest("tr").remove();

    //                }

    //            });

    //        },
    //        error: function ajaxError(result) {
    //            alert(result.status);
    //        },



    //    });


    //}









    $(function () {




        $("#updat").on('click', function () {



            if (vaild()) {
                // saveimage();
                //alert($("#currency option:selected").text());
                saveimage();
            }



        });



        ////////////////////////////////////الحذف//////////////////////
        $("#dele").on('click', function () {

            var id = $("#idd").text();
            swal({
                title: "هل تريد",
                text: "هل تريد حذف القسم",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "نعم",
                cancelButtonText: "لا",
                closeOnConfirm: false,
                closeOnCancel: false
            },
 function (isConfirm) {
     if (isConfirm) {

         $.ajax({
             type: "POST",
             url: "show_product.aspx/DeleteP",
             data: '{id: "' + row.find("#id").text() + '"  }',
             contentType: "application/json; charset=utf-8",
             dataType: "json",
             success: function (response) {



                 swal("Deleted!", "تم الحذف بنجاح.", "success");

                 $("#<%=Button1.ClientID%>").click();




             },

             error: function (response) {

                 swal("خطأ", "لم يتم الحذف,", "error");
                 //alert(response.responseText);
             }
         });


     } else {
         swal("Cancelled", "لم يتم الحذف :)", "error");
     }
 });











        });
















        $(".updatem").on('click', function () {

            var trIndex = $(this).closest("tr").index();
            var row = $(this).closest("tr");

            $("#namee").val(row.find("#name").text());
            $("#idd").text(row.find("#id").text());



            $("#img").attr('src', 'images/' + row.find("#img3").text());








            $("#show").click();










        });








        ////////////////////////////////////الحذف//////////////////////
        $(".deletem").on('click', function () {
            var trIndex = $(this).closest("tr").index();
            var row = $(this).closest("tr");
            var id = row.find("#id").text();
            swal({
                title: "هل تريد",
                text: "هل تريد حذف القسم",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "نعم",
                cancelButtonText: "لا",
                closeOnConfirm: false,
                closeOnCancel: false
            },
 function (isConfirm) {
     if (isConfirm) {

         $.ajax({
             type: "POST",
             url: "show_product.aspx/DeleteP",
             data: '{id: "' + row.find("#id").text() + '"  }',
             contentType: "application/json; charset=utf-8",
             dataType: "json",
             success: function (response) {



                 swal("Deleted!", "تم الحذف بنجاح.", "success");

                 $("#<%=Button1.ClientID%>").click();




             },

             error: function (response) {

                 swal("خطأ", "لم يتم الحذف,", "error");
                 //alert(response.responseText);
             }
         });


     } else {
         swal("Cancelled", "لم يتم الحذف :)", "error");
     }
 });











        });
    });













function vaild() {

    if ($("#namee").val() == '') {

        //alert(" إدخل اسم المنتج");
        swal("خطأ", "إدخل اسم المنتج", "error");
        //swal("إدخل اسم الدورة!");
        return false;
    }






    return true;


}




function saveimage() {
    var id = $("#idd").text();

    var fullPath = document.getElementById("img").src;
    var filename = fullPath.replace(/^.*[\\\/]/, '');

    var img;
    var fileUpload = $("#file").get(0);
    var files = fileUpload.files;

    var data = new FormData();
    if (files.length > 0) {
        data.append(files[0].name, files[0]);
        filename = files[0].name;


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
                    url: "show_product.aspx/Update",
                    data: '{name: "' + $("#namee").val() + '",img:"' + filename + '",id:"' + id + '" }',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        //alert(response.d);
                        swal("تم", "تم التعديل بنجاح,", "success");
                        //$("#name").val('');
                        $("#<%=Button1.ClientID%>").click();


                        },

                        error: function (response) {

                            swal("خطأ", "لم يتم التعديل,", "error");
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






            $.ajax({
                type: "POST",
                url: "show_product.aspx/Update",
                data: '{name: "' + $("#namee").val() + '",img:"' + filename + '",id:"' + id + '"  }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    //alert(response.d);
                    swal("تم", "تم التعديل بنجاح,", "success");
                    // $("#name").val('');
                    $("#<%=Button1.ClientID%>").click();

                },

                error: function (response) {

                    swal("خطأ", "لم يتم التعديل,", "error");
                    //alert(response.responseText);
                }
            });









        }




    }









</script>





</asp:Content>
