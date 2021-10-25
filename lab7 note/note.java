import javax.xml.parsers.*;
import org.xml.sax.*;
import org.xml.sax.helpers.*;
import java.io.*;

public class note
{
	public static void main(String[] args) throws IOException
	{
		BufferedReader bf = new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter XML file name:");
		String xmlFile = bf.readLine();
		Events detail = new Events(xmlFile);
	}
	public void Events(String str)
	{
		try
		{
			File file = new File(str);
			if (file.exists())
			{
				SAXParserFactory obj = SAXParserFactory.newInstance();
				SAXParser oobj = obj.newSAXParser();
				System.out.println("XML Data: ");
				DefaultHandler d = new DefaultHandler()
				{
					
					boolean receiver;
					boolean sender;
					boolean subject;
					boolean draft;
					
					public void startElement(String uri, String localName, String element_name, Attributes attributes)
					throws SAXException
					{
						if (element_name.equals("to"))
{
							receiver = true;
						}
						if (element_name.equals("from"))
{
							sender = true;
						}
						if (element_name.equals("heading"))
{
							subject = true;
						}
							if (element_name.equals("body1"))
{
							draft = true;
						}
					}
					
					public void characters(char[] ch, int start, int len)
                    throws SAXException
					{
						String str = new String (ch, start, len);
						if (receiver)
{
							System.out.println("to "+str);
							receiver = false;
						}
						if (sender)
{
							System.out.println("from:   "+str);
							sender = false;
						}
						if (subject)
{
							System.out.println("heading: "+str);
							subject = false;
						}
						if (draft)
{
							System.out.println("body1: "+str);
							draft = false;
						}
					}
				};
				
				oobj.parse(str, d);
			}
			else{
				System.out.println("File not found!");
			}
		}
		catch (Exception e){
			System.out.println("XML File hasn't any elements");
			e.printStackTrace();
		}
	}
}
