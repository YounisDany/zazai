﻿<%@ WebHandler Language="C#" Class="FileUploadHandler" %>

using System;
using System.Web;
using System.IO;

public class FileUploadHandler : IHttpHandler
{


    public void ProcessRequest(HttpContext context)
    {
        try
        {
            if (context.Request.Files.Count > 0)
            {
                HttpFileCollection files = context.Request.Files;
                for (int i = 0; i < files.Count; i++)
                {
                    string filePath = context.Server.MapPath("images/");
                    HttpPostedFile file = files[i];
                    if (!Directory.Exists(filePath))
                    {
                        Directory.CreateDirectory(filePath);
                    }
                    string fileName = filePath + file.FileName;
                    file.SaveAs(fileName);
                }
                context.Response.ContentType = "application/octet-stream";
                context.Response.Write("File Uploaded Successfully!");
            }

        }
        catch (Exception ex)
        {

        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}
