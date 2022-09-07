using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for NewsBLL
/// </summary>
public class NewsBLL
{
    public static string InsertNewsTypeBLL(NewsTypeObject obj)
    {
        int result = NewsDLL.InsertNewsTypeDLL(obj);
        return result > 0 ? "Data Inserted Success !!!" : "Error!!!";
    }
    public static string InsertNewsCategoryBLL(NewsCategoryObject obj)
    {
        int result = NewsDLL.InsertNewsCategoryDLL(obj);
        return result > 0 ? "Data Inserted Success !!!" : "Error!!!";
    }
    public static List<NewsTypeObject> AllNewsTypeBLL()
     {
        return NewsDLL.AllNewsTypeDLL();
    }
    public static List<NewsCategoryObject> AllNewsCategoryBLL()
    {
        return NewsDLL.AllNewsCategoryDLL();
    }

}