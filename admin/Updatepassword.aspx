<%@ Page Title="" Language="C#" MasterPageFile="~/admin/main.master" AutoEventWireup="true" CodeFile="Updatepassword.aspx.cs" Inherits="admin_Updatepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    
      <main class="col-md-9 ms-sm-auto col-lg-12 px-md-4">


        <div class="midde_cont">
                        <div class="container-fluid">
                            <div class="row column_title">
                                <div class="col-md-12">
                                    <div class="page_title">
                                        <h2> تعديل كلمة المرور</h2>
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
                                                            <label class="control-label">كلمة المرور القديمة</label>
                                                         

                                                         
                                                         
                                                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" TextMode="Password"></asp:TextBox>


                                                        </div>




                                                    </div>

                                                     <div class="col_lg_12 col-md-3">
                                                        <div class="form-group">

                                                             <label class="control-label">كلمة المرور الجديدة</label>
                                                   

                                                     <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Password"></asp:TextBox>


                                                        </div>




                                                    </div>


                                                      <div class="col_lg_12 col-md-3">
                                                        <div class="form-group">


                                                       <label class="control-label">تأكيد كلمة المرور الجديدة</label>
                                                   

                                                     <asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="Password"></asp:TextBox>

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

                                                            

                                                            <asp:Button ID="Button1" runat="server" Text="حفظ التعديل" class="btn btn-success" OnClick="Button1_Click"></asp:Button>



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




                                <!-------------------------------------------------------------------------------------------->
                                <!-------------------------------------------------------------------------------------------->
                                <!-------------------------------------------------------------------------------------------->
                              




                                <!-------------------------------------------------------------------------------------------->
                             



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




</asp:Content>

