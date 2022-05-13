﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Foodies_WebApp
{
    public partial class AddMenuItem : System.Web.UI.Page
    {
        private MySqlConnection connection =
              new MySqlConnection("datasource=localhost;port=3306;username=root;password=;database=foodies_db");
        MySqlCommand command;
        MySqlDataReader mdr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddMenuItem_OnClick(object sender, EventArgs e)
        {
            var menuitemid = 0;
            connection.Open();
            string selectQuery = "SELECT MAX(menuitemid) FROM menuitem";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                menuitemid = int.Parse(mdr[0].ToString());
            }
            connection.Close();
            menuitemid++;
            if (FileUpload.HasFile)
            {
                string Extent = System.IO.Path.GetExtension(FileUpload.FileName);
                if (Extent.ToLower() != ".png" || Extent.ToLower() == ".jpg" || Extent.ToLower() == ".JPEG")
                {
                    FileUpload = null;
                    MessageBox.Show("menu item image must be  JPG, JPEG  or PNG extension");
                    itemPrice.Text = " ";
                    ItemName.Text = " ";
                }
                else
                {
                    Stream sm = FileUpload.PostedFile.InputStream;
                    BinaryReader binReader = new BinaryReader(sm);
                    byte[] bytes = binReader.ReadBytes((Int32)sm.Length);
                    string connectionString = "datasource=127.0.0.1;port=3306;username=root;password=;database=foodies_db;";
                    MySqlConnection databaseConnection = new MySqlConnection(connectionString);
                    string iquery = "INSERT INTO `menuitem`(`menuItemId`, `adminName`,`imagePath`, `price`, `name`) VALUES (@menuitemid,NULL,@image,'" + float.Parse(itemPrice.Text) + "','" + ItemName.Text + "')";
                    MySqlCommand commandDatabase = new MySqlCommand(iquery, databaseConnection);
                    databaseConnection.Open();
                    commandDatabase.Parameters.AddWithValue("@menuitemid", menuitemid);
                    commandDatabase.Parameters.AddWithValue("@image", bytes);
                    commandDatabase.ExecuteNonQuery();
                    databaseConnection.Close();
                    MessageBox.Show("Menu Item Added Successfully");

                }

            }
        }
    }
}