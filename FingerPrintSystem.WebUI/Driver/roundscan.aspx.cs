﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using FingerPrintSystem.DataAccess;
using FingerPrintSystem.MQTT;
using System.Data;
using System.Diagnostics;
using System.Threading;


using uPLibrary.Networking.M2Mqtt;
using uPLibrary.Networking.M2Mqtt.Messages;
using System.Text;

namespace FingerPrintSystem.WebUI.Driver
{
    public partial class roundscan : PageBase
    {
        MqttClient client_scan = new MqttClient("m12.cloudmqtt.com", 29315, true, null, null, MqttSslProtocols.TLSv1_2);
        public static bool Timer;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Timer = false;
                if (this.DecryptQueryString("driverid") != null)
                {
                    ViewState["member_driver_id"] = DecryptQueryString("driverid").ToString();
                }
                else
                {

                    Response.Redirect("../login.aspx");

                }
               

                UpdatePanel_DropDownList1.Update();
                BinddataDropDownList1();
                UpdateTimer.Enabled = false;

              

                labround.Text = "การเลือกเที่ยวรถรับส่งวันที่: " + DateTime.Now.ToString("dd MMMM yyyy")+" ";

            }
            else

            {
                
                //.......... แสดง ปุ่ม scanup และ scandown......................//
                if (roundscan.Timer == true)
                {

                    UpdatePanel_DropDownList2.Update();
                    showstatustrun();
                }

            }
          

            
        }

       

        private void BinddataDropDownList1()
        {

            // Add a default item at first position.
           // DropDownList1.Items.Insert(0, new ListItem("เลือกการสแกนลายเที่ยวรถรับส่ง และกดปุ่ม 'ตรวจสอบ'", ""));

            //Set the default item as selected.
            DropDownList1.Items[0].Selected = true;


            //Disable the default item.
            DropDownList1.Items[0].Attributes["disabled"] = "disabled";

            //DropDownList1.Items.Add("การเดินทางจาก บ้าน >>> โรงเรียน");
           // DropDownList1.Items.Add("การเดินทางจาก โรงเรียน >>> บ้าน");



        }
       /* private void BinddataDropDownList2()
        {

            // Add a default item at first position.
            DropDownList2.Items.Insert(0, new ListItem("เลือกการสแกนลายนิ้วมือ ขึ้น/ลง รถรับส่ง และกดปุ่ม 'ตกลง'", ""));

            //Set the default item as selected.
            DropDownList2.Items[0].Selected = true;


            //Disable the default item.
            DropDownList2.Items[0].Attributes["disabled"] = "disabled";

            DropDownList2.Items.Add("ขึ้นรถรับส่งเด็กนักเรียน");
            DropDownList2.Items.Add("ลงรถรับส่งเด็กนักเรียน");



        //}*/
        protected void gvMember_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                Label lalScanup = (Label)e.Row.FindControl("lalScanup");
                Label lalScandown = (Label)e.Row.FindControl("lalScandown");
                LinkButton bthdetial = (LinkButton)e.Row.FindControl("bthdetial");
                LinkButton bthnote = (LinkButton)e.Row.FindControl("bthnote");
                LinkButton bthreset = (LinkButton)e.Row.FindControl("bthreset");

                string memberid = drv["member_id"].ToString();
                string memberdriverid = ViewState["member_driver_id"].ToString();


                bthdetial.PostBackUrl = this.EncryptQueryString("userid=" + memberid + "&driverid=" + memberdriverid);
                bthnote.PostBackUrl = this.EncryptQueryString("userid=" + memberid + "&driverid=" + memberdriverid);
                bthreset.PostBackUrl = this.EncryptQueryString("userid=" + memberid + "&driverid=" + memberdriverid);

                string noteup = drv["noteup"].ToString();
                if (drv["datetime_up"].ToString() == "ยังไม่ได้สแกน")
                {
                    lalScanup.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333"); //สีแดง

                }
                else if (noteup == "1")
                {

                    lalScanup.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF9900"); // สีส้ม
                }

                else
                {
                    lalScanup.BackColor = System.Drawing.ColorTranslator.FromHtml("#009900"); // สีเขียว
                   
                }
                //..........................................................................................//
                string notedown = drv["notedown"].ToString();
                if (drv["datetime_down"].ToString() == "ยังไม่ได้สแกน")
                {

                    lalScandown.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF3333");
                }
                else if (notedown == "1")
                {

                    lalScandown.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF9900"); // สีส้ม
                }
                else
                {
                    lalScandown.BackColor = System.Drawing.ColorTranslator.FromHtml("#009900"); // สีเขียว
                   
                }

                //.......................................................................................//
                if (drv["datetime_up"].ToString() != "ยังไม่ได้สแกน" && drv["datetime_down"].ToString() != "ยังไม่ได้สแกน")
                {
                    bthnote.Visible = false;
                   
                }
              



            }
            
        }
     
        protected void gvMember_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "memberuserid")
            {
                string ID = e.CommandArgument.ToString();

            }
        }
        protected void gvMember_Sorting(object sender, GridViewSortEventArgs e)
        {
            SetSortGridView(e.SortExpression);
            this.GridViewSort(gvMember);


        }

       
       
        private void Showstatustrunup()
        {

            imgsuccess.Visible = true;
            labsuccess.Visible = true;
            labsuccess.Text = "กำลังใช้โหมดของการสแกนขี้นรถ";
            
          
        }
        private void Showstatustrundown()
        {
            imgsuccess.Visible = true;
            labsuccess.Visible = true;
            labsuccess.Text = "กำลังใช้โหมดของการสแกนลงรถ";

        }
        private void showstatustrun()
        {

            bthscanup.Visible = true;
            bthscandown.Visible = true;
            bthreset.Visible = true;
          // bthstop.Visible = true;
        }
        private void disshowstatustrun()
        {
            //bthclose.Visible = true; //แสดงปุ่ม เริ่มใหม่
            bthscanup.Visible = false;
            bthscandown.Visible = false;
            bthreset.Visible = false;

        }
        private void Disshowstatustrn_upanddown()
        {
           
            imgsuccess.Visible = false;
            labsuccess.Visible = false;
            bthclose.Visible = false; //แสดงปุ่ม เริ่มใหม่

        }
       

        //SubscribeDAO Subscribe = new SubscribeDAO();
        PublishDAO Publish = new PublishDAO();
        DriverDAO Driver = new DriverDAO();
        UserScanResultDAO UserscanResult = new UserScanResultDAO();
        UserScanDAO UserScan = new UserScanDAO();

        protected void bthsave_Click(object sender, EventArgs e)
        {
            //....... บันทึกข้อมูลการสแกนลง ใน database .........................//

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalsave", "$('#myModalsave').modal();", true);
           

        }
        protected void bthsavesuccess_Click(object sender, EventArgs e)
        {
            int Memberdriverid = Convert.ToInt32(ViewState["member_driver_id"].ToString());
            Driver.UpdateDriverByIDMember_Roundscan(Memberdriverid,Convert.ToInt32(DropDownList1.SelectedValue));
            foreach (GridViewRow row in gvMember.Rows)
            {

                int rowIndex = row.RowIndex;
                if (row.RowType == DataControlRowType.DataRow)
                {

                    int Memberuserid = Convert.ToInt32(gvMember.DataKeys[rowIndex].Values[0].ToString());
        
                    Label lalScanup = (row.Cells[2].FindControl("lalScanup") as Label);
                    string datetimeup = lalScanup.Text;

                    Label lalScandown = (row.Cells[3].FindControl("lalScandown") as Label);
                    string datetimedown = lalScandown.Text;

                    string fullnamedriver = gvMember.DataKeys[rowIndex].Values[1].ToString();
                    int roundscan = Convert.ToInt32(gvMember.DataKeys[rowIndex].Values[2].ToString());
                    UserscanResult.AddUserScanResultByIDMember(Memberuserid, datetimeup, datetimedown, fullnamedriver, roundscan,datetime1());

            
                    UserScan.UpdateUserScanByIDMemberReset(Memberuserid, "ยังไม่ได้สแกน", "ยังไม่ได้สแกน"); // Reset

                }

            }
          
            Response.Redirect("../Driver/roundscan.aspx" + EncryptQueryString("driverid=" + Memberdriverid));
        }
        
        protected void bthcheck_Click(object sender, EventArgs e)
        {
         
            //Disable the default item.
            DropDownList1.Items[0].Attributes["disabled"] = "disabled";


             
                int Memberdriverid = Convert.ToInt32(ViewState["member_driver_id"].ToString());
                DataTable dtdriverid = new DriverDAO().GetDriverByIDMember(Memberdriverid);  // เช็คสถานะของคนขับรถ
                if (dtdriverid.Rows.Count > 0)
                {
                    //.......... เช็ดคนขับรถว่าสแกนเที่ยวไหนไปแล้ว.........................//
                    //roundscan = 0 ยังไม่ได้เริ่มสแกน  
                    //roundscan = 1 สแกนเที่ยวบ้าน-โรงเรียน เรียบร้อยแล้ว
                    //roundscan = 2 สแกนเที่ยวโรงเรียน-บ้าน เรียบร้อยแล้ว

                    string roundscan = dtdriverid.Rows[0]["roundscan"].ToString();

                if (DropDownList1.Items[0].Selected == true)
                {

                    //........... "เลือกการสแกนลายเที่ยวรถรับส่ง และกดปุ่ม 'ตรวจสอบ'//................
                }
                else
                {

                        if (DropDownList1.SelectedValue == roundscan) // ถ้าคนขับรถได้บันทึกเที่ยว
                        {

                            if (roundscan == "1")
                            {
                            imgchk.ImageUrl = "~/Images/success.png";
                            imgchk.Width = 50;
                            imgchk.Height = 50;
                            labchk.Text = "สแกนเที่ยวจากบ้าน-โรงเรียน เรียบร้อยแล้ว";
                                
                            }
                            if (roundscan == "2")
                            {
                            imgchk.ImageUrl = "~/Images/Alert.png";
                            imgchk.Width = 50;
                            imgchk.Height = 50;
                            labchk.Text = "สแกนเที่ยวจากบ้าน-โรงเรียน ก่อน";

                        }


                    }
                        else // สแกนลานนิ้วมือเด็กนักเรียน
                        {
                            Timer = true;
                            //.......... update รอบเที่ยวไป-กลับของรถรับส่งที่คนขับรถเลือกมา...................//
                            string fullnamedriver = dtdriverid.Rows[0]["fullname"].ToString();
                            DataTable dt = new UserScanDAO().GetUserScanJoin_tbUserByfullnamedriver(fullnamedriver,true); // เช็คชื่อคนขับรถรับส่งที่จะให้สแกน

                        //เพิ่มสถานะเที่ยวรถรับส่งที่คนขับรถเลือกเข้ามา
                            foreach (DataRow row in dt.Rows)
                            {

                                int memberuserid = Convert.ToInt32(row["member_id"].ToString());
                                UserScanDAO UserScan = new UserScanDAO();
                                UserScan.UpdateUserScanByMember_Roundscan(memberuserid,Convert.ToInt32(DropDownList1.SelectedValue));
                            }

                        ViewState["roundscan"] = DropDownList1.SelectedValue;
                        DropDownList1.Visible = false;
                            bthcheck.Visible = false;
                            labround.Visible = false;
                            labchk.Visible = false;
                            imgchk.Visible = false;
                            UpdatePanel_DropDownList2.Update();
                            Binddatascan(DropDownList1.SelectedItem.Text.Trim());
                            
                        }

                }

            }

        }
        private void Binddatascan(string round)
        {

           
            labselectscan.Visible = true; //แสดงปุ่ม เลือกการสแกนลายนิ้วมือ
            showstatustrun(); // สแกนปุ่มเลือกการสแกนขึ้น- ลง รถรับส่ง

            //.......... แสดงตารางสแกน.............//
            UpdatePanel_GridView.Update();
            labpanel.Text = "" + round + " (วันที่ " + DateTime.Now.ToString("dd MMMM yyyy") + " )";
            UpdateTimer.Enabled = true;
            bthsave.Visible = true;
            Binddata(); // แสดงข้อมูลเด็กนักเรียนที่ให้สแกนกับคนขับรถที่ login เข้ามา
            //....................................//


        }

        private void Binddata()  // แสดงข้อมูลเด็กนักเรียนที่ให้สแกนกับคนขับรถที่ login เข้ามาบนตาราง
        {

            int Memberdriverid = Convert.ToInt32(ViewState["member_driver_id"].ToString());
            int roundscan = Convert.ToInt32(ViewState["roundscan"].ToString());
            DataTable dtdriverid = new DriverDAO().GetDriverByIDMember(Memberdriverid);
            


            if (dtdriverid.Rows.Count > 0)
            {
                string fullnamedriver = dtdriverid.Rows[0]["fullname"].ToString();
                DataTable dt = new UserScanDAO().GetUserScanJoin_tbUserBySuccess(fullnamedriver,true,roundscan); // เช็คชื่อคนขับรถรับส่งที่จะให้สแกน
               

                gvMember.DataSource = dt;
                gvMember.DataBind();
            }


        }
        private void UpdateUserScanByMemberid(string trunscan, string topicsearch) // สถานะการสแกน
        {

            client_scan.ProtocolVersion = MqttProtocolVersion.Version_3_1;
            client_scan.Connect(Guid.NewGuid().ToString(), "fjhgvxul", "cT9BYUzB5yCR", false, 120);



            client_scan.MqttMsgPublishReceived += client_MqttMsgPublishRecieved_GetSubscribe;
            // client.Subscribe(new string[] { topicup,topicdown }, new byte[] { MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE , MqttMsgBase.QOS_LEVEL_AT_LEAST_ONCE});
            client_scan.Subscribe(new string[] { topicsearch }, new byte[] { MqttMsgBase.QOS_LEVEL_EXACTLY_ONCE });
            ViewState["trunscan"] = trunscan;
            Debug.WriteLine("OnGetSubscribeUp");
        



        }
       public void client_MqttMsgPublishRecieved_GetSubscribe(object sender, MqttMsgPublishEventArgs e)
        {

            UserScanDAO userscan = new UserScanDAO();
            string trunscan = ViewState["trunscan"].ToString();

            if (trunscan == "ขึ้นรถรับส่งเด็กนักเรียน")
            {
                string fingerprintid = Encoding.UTF8.GetString(e.Message);
             
                if (fingerprintid == "disconnect")
                {

                    Debug.WriteLine("Received = " + fingerprintid + "\ron topic = " + e.Topic + "\rtrunscan = " + trunscan + datetime());
                    client_scan.Disconnect();

                }
                else if(fingerprintid=="fail")
                {
                    Debug.WriteLine("Disconnect");
                    client_scan.Disconnect();
                    Timer = true;

                }
                else
                {
                    int memberuserid = Convert.ToInt32(fingerprintid);
                    Debug.WriteLine("Received = " + fingerprintid + "\ron topic = " + e.Topic + "\rtrunscan = " + trunscan + datetime());
                    userscan.UpdateUserScanByIDMember_Noteup(memberuserid, 0);
                    userscan.UpdateUserScanByIDMember_Up(memberuserid, datetime());
                    
                    //userscan.UpdateUserScanByFingerprintid_Up(fingerprintid, DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss"));
                    Debug.WriteLine("OKScanup");
                    client_scan.Disconnect();
                    Timer = true;
                }
            }

            if (trunscan == "ลงรถรับส่งเด็กนักเรียน")
            {
                string fingerprintid = Encoding.UTF8.GetString(e.Message);
              
                if (fingerprintid == "disconnect")
                {
                    Debug.WriteLine("Received = " + fingerprintid + "\ron topic = " + e.Topic + "\rtrunscan = " + trunscan + datetime());
                    client_scan.Disconnect();
                    Timer = true;
                }
                else if (fingerprintid == "fail")
                {
                    Debug.WriteLine("Disconnect");
                    client_scan.Disconnect();
                    Timer = true;

                }
                else
                {
                    int memberuserid = Convert.ToInt32(fingerprintid);
                    Debug.WriteLine("Received = " + fingerprintid + "\ron topic = " + e.Topic + "\rtrunscan = " + trunscan + datetime());
                    userscan.UpdateUserScanByIDMember_Notedown(memberuserid, 0);
                    userscan.UpdateUserScanByIDMember_Down(memberuserid, datetime());
                  
                    //userscan.UpdateUserScanByFingerprintid_Down(fingerprintid, DateTime.Now.ToString("dd-MM-yyyy เวลา HH:mm:ss"));

                    Debug.WriteLine("OKScanDown");
                    client_scan.Disconnect();
                    Timer = true;
                }
            }

        }
        private string datetime()
        {


            DateTime DtNow = new DateTime();
            DtNow = DateTime.Now;
            int day = Convert.ToInt32(DtNow.ToString("dd"));
            int Mounth = Convert.ToInt32(DtNow.ToString("MM"));
            int year = Convert.ToInt32(DtNow.ToString("yyyy"));

            int HH = Convert.ToInt32(DtNow.ToString("HH"));
            int mm = Convert.ToInt32(DtNow.ToString("mm"));
            int ss = Convert.ToInt32(DtNow.ToString("ss"));

            if (Mounth <= 9 && day <= 9)
            {
                string cMounth = "0" + Mounth;
                string cday = "0" + day;
                return cday + "-" + cMounth + "-" + year + " เวลา " + HH + ":" + mm + ":" + ss;
            }
            else
            {
              
                return day + "-" + Mounth + "-" + year + " เวลา " + HH + ":" + mm + ":" + ss;
            }


        }
        private string datetime1()
        {


            DateTime DtNow = new DateTime();
            DtNow = DateTime.Now;
            int day = Convert.ToInt32(DtNow.ToString("dd"));
            int Mounth = Convert.ToInt32(DtNow.ToString("MM"));
            int year = Convert.ToInt32(DtNow.ToString("yyyy"));
            

            if (Mounth <= 9 && day<=9)
            {
                string cMounth = "0" + Mounth;
                string cday = "0" + day;
                return cday + "-" + cMounth + "-" + year;
            }
            else
            {
               
                return day + "-" + Mounth + "-" + year;
            }


        }

        protected void bthscanup_Click(object sender, EventArgs e)
        {
            UpdatePanel_DropDownList2.Update();
            disshowstatustrun();  // ปิดปุ่ม scanup และ scandown
            Timer = false;  // หยุดการ update ตาราง และ ปุ่ม
            Publish.OnScan("/searching", "on");
            //Subscribe.UpdateUserScanByMemberid("ขึ้นรถรับส่งเด็กนักเรียน", "/chksearching");
            UpdateUserScanByMemberid("ขึ้นรถรับส่งเด็กนักเรียน", "/chksearching");
            UpdatePanel_GridView.Update();
            Showstatustrunup();
          
         

        }
       
        protected void bthscandown_Click(object sender, EventArgs e)
        {
            UpdatePanel_DropDownList2.Update(); 
            disshowstatustrun(); // ปิดปุ่ม scanup และ scandown
            Timer = false; // หยุดการ update ตาราง และ ปุ่ม
            Publish.OnScan("/searching", "on");
            //Subscribe.UpdateUserScanByMemberid("ลงรถรับส่งเด็กนักเรียน", "/chksearching");
            UpdateUserScanByMemberid("ลงรถรับส่งเด็กนักเรียน", "/chksearching");
            UpdatePanel_GridView.Update();
            Showstatustrundown();

        }
        protected void bthstop_Click(object sender, EventArgs e)
        {
          
            Disshowstatustrn_upanddown();

        }
        protected void bthclose_Click(object sender, EventArgs e)
        {
            Timer = true;
        
            Publish.OnScan("/chksearching", "disconnect"); // ทำการ Disconnect MQTT
           // Publish.OnDisconnect("/register", "disconnect"); // ทำการ Disconnect MQTT

        }
        protected void bthreset_Click(object sender, EventArgs e)
        {
            Timer = true;
            foreach (GridViewRow row in gvMember.Rows)
            {

                int rowIndex = row.RowIndex;
                if (row.RowType == DataControlRowType.DataRow)
                {

                    int Memberuserid = Convert.ToInt32(gvMember.DataKeys[rowIndex].Values[0].ToString());

                    UserScanDAO UserScan = new UserScanDAO();
                    UserScan.UpdateUserScanByIDMemberReset(Memberuserid, "ยังไม่ได้สแกน", "ยังไม่ได้สแกน");

                }

            }
        }
        protected void UpdateTimer_Tick(object sender, EventArgs e)
        {

            if (UpdateTimer.Enabled == roundscan.Timer)
            {

                this.Binddata();
                Disshowstatustrn_upanddown(); // ปิกสถานะการใช้โหมดสแกนขึ้น-ลง

            }



        }
       


        protected void bthdetial_Click(object sender, EventArgs e)
        {

            //Disable the default item.
            DropDownList1.Items[0].Attributes["disabled"] = "disabled";

            int memberuserid = Convert.ToInt32(this.DecryptQueryString("userid").ToString());
            DataTable dt = new UserDAO().GetUserSelectJointbSchooladdress_ByIDMember(memberuserid);

            if (dt.Rows.Count > 0)
            {
                imgstudent.ImageUrl = dt.Rows[0]["photo"].ToString();
                txtid.Text = dt.Rows[0]["id"].ToString();
                txtfullname.Text = dt.Rows[0]["fullname"].ToString();
                txtshcool.Text = dt.Rows[0]["detailaddress"].ToString();
                txtfullnameparent.Text = dt.Rows[0]["fullnameparent"].ToString();
                txttel.Text = dt.Rows[0]["tel"].ToString();
                txtemail.Text = dt.Rows[0]["email"].ToString();


            }

            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModaldetial", "$('#myModaldetial').modal();", true);

        }

        protected void bthnote_Click(object sender, EventArgs e)
        {
            txtcomment.Text = "";
            chkup.Checked = false;
            chkdown.Checked = false;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalnote", "$('#myModalnote').modal();", true);
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            chkupreset.Checked = false;
            chkdownreset.Checked = false;
        
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModalreset", "$('#myModalreset').modal();", true);


        }
        protected void bthnoteok_Click(object sender, EventArgs e)
        {
    

            UserScanDAO userscan = new UserScanDAO();
            int memberuserid = Convert.ToInt32(this.DecryptQueryString("userid").ToString());
            DataTable dt = userscan.GetUserScanByIDMember(memberuserid);
            if (dt.Rows.Count > 0)
            {
                if (txtcomment.Text.Trim() != "")
                {
                    string datetimeup = dt.Rows[0]["datetime_up"].ToString();
                    string datetimedown = dt.Rows[0]["datetime_down"].ToString();

                    if (datetimeup == "ยังไม่ได้สแกน")
                    {
                        if (chkup.Checked == true)
                        {
                            userscan.UpdateUserScanByIDMember_Up(memberuserid, txtcomment.Text.Trim());
                            userscan.UpdateUserScanByIDMember_Noteup(memberuserid, 1);


                        }
                    }

                    if (datetimedown == "ยังไม่ได้สแกน")
                    {
                        if (chkdown.Checked == true)
                        {
                            userscan.UpdateUserScanByIDMember_Down(memberuserid, txtcomment.Text.Trim());
                            userscan.UpdateUserScanByIDMember_Notedown(memberuserid, 1);


                        }
                    }

                }
            }

        }

        protected void bthresetok_Click(object sender, EventArgs e)
        {
            UserScanDAO userscan = new UserScanDAO();
            int memberuserid = Convert.ToInt32(this.DecryptQueryString("userid").ToString());

            if (chkupreset.Checked == true)
            {
                userscan.UpdateUserScanByIDMemberReset_Up(memberuserid, "ยังไม่ได้สแกน");


            }


            if (chkdownreset.Checked == true)
            {
                userscan.UpdateUserScanByIDMemberReset_Down(memberuserid, "ยังไม่ได้สแกน");
           

            }


        }
        

      
    }
}