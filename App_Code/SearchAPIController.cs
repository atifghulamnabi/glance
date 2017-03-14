﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

/// <summary>
/// Summary description for SearchAPIController
/// </summary>
public class SearchAPIController
{
	public SearchAPIController()
	{
		
	}

    private WebRequest request;
    private Stream dataStream;

    private string userName = "Glancetravels";
    private string password = "worldxml";


    public string status { get; set; }

    public SearchAPIController(string url, string method, string data)
    {
        try
        {
            data = data + "&username=" + userName + "&password=" + password;
            request = WebRequest.Create(url);
            if (method.Equals("GET") || method.Equals("POST"))
            {
                // Set the Method property of the request to POST.
                request.Method = method;
            }
            else
            {
                throw new Exception("Invalid Method Type");
            }

            // Create POST data and convert it to a byte array.
            string postData = data;
            byte[] byteArray = Encoding.UTF8.GetBytes(postData);

            // Set the ContentType property of the WebRequest.
            request.ContentType = "application/x-www-form-urlencoded";

            // Set the ContentLength property of the WebRequest.
            request.ContentLength = byteArray.Length;

            // Get the request stream.
            dataStream = request.GetRequestStream();

            // Write the data to the request stream.
            dataStream.Write(byteArray, 0, byteArray.Length);

            // Close the Stream object.
            dataStream.Close();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

    public string GetResponse()
    {
        try
        {
            // Get the original response.
            WebResponse response = request.GetResponse();

            this.status = ((HttpWebResponse)response).StatusDescription;

            // Get the stream containing all content returned by the requested server.
            dataStream = response.GetResponseStream();

            // Open the stream using a StreamReader for easy access.
            StreamReader reader = new StreamReader(dataStream);

            // Read the content fully up to the end.
            string responseFromServer = reader.ReadToEnd();

            // Clean up the streams.
            reader.Close();
            dataStream.Close();
            response.Close();

            return responseFromServer;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
}