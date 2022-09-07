using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BusinessObject
/// </summary>
public class NewsObject
{
    public int NewsID { get; set; }
    public int NewsType { get; set; }
    public int NewsCategory { get; set; }
    public string Heading { get; set; }
    public string SubHeading { get; set; }
    public string Description { get; set; }
    public Guid ReporterID { get; set; }
    public string Place { get; set; }
    public DateTime NewsDate { get; set; }
    public DateTime DateOfAdd { get; set; }
    public string Image { get; set; }
    public Guid EditorID { get; set; }
    public int Priority { get; set; }
    public bool Approved { get; set; }
    public bool TotalReads { get; set; }
    public int Visits { get; set; }
    public bool Active { get; set; }
}
public class NewsTypeObject
{

    public int ID { get; set; }
    public string Title { get; set; }
    public DateTime DateOfAdd { get; set; }
    public bool Active { get; set; }

}

public class NewsCategoryObject
{

    public int ID { get; set; }
    public string Title { get; set; }
    public DateTime DateOfAdd { get; set; }
    public bool Active { get; set; }
}
public class PersonObject
{
    public Guid PersonID { get; set; }
    public int PlaceID { get; set; }
    public string PersonName { get; set; }
    public string PersonImage { get; set; }
    public string PersonInfo { get; set; }
    public string Mobile { get; set; }
    public  string Email { get; set; }
    public string CAddress { get; set; }
    public string PAddress { get; set; }
    public DateTime DOJ { get; set; }
    public DateTime DOB { get; set; }
    public char Gender { get; set; }
    public DateTime Anniversary { get; set; }
    public bool Active { get; set; }  
}
public class PlaceObject
{
    public int ID { get; set; }
    public string Name { get; set; }
    public DateTime DateOfAdd { get; set; }
    public bool Active { get; set; }
}
public class EditorObject
{
    public Guid ID { get; set; }
    public DateTime DateOfAdd { get; set; }
    public bool Active { get; set; }

}
public class ReporterObject
{
    public Guid ID { get; set; }
    public int EditorID { get; set; }
    public DateTime DateOfAdd { get; set; }
    public bool Active { get; set; }

}