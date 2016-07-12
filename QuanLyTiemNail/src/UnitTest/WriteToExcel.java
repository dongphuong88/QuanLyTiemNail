package UnitTest;

import java.io.File;
import java.io.IOException;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;

import jxl.read.biff.BiffException;

import jxl.write.Label;
import jxl.write.Number;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

public class WriteToExcel
{
   public static void main(String[] args) 
      throws BiffException, IOException, WriteException
   {
	  Workbook w = Workbook.getWorkbook(new File("output.xls"));
      WritableWorkbook wworkbook = Workbook.createWorkbook(new File("output.xls"),w);
      WritableSheet wsheet = wworkbook.getSheet(0);
      Label label = new Label(0, 7, "****A label record test1");
      wsheet.addCell(label);
      Number number = new Number(3, 7, 3.1459);
      wsheet.addCell(number);
      w.close();
      wworkbook.write();
      wworkbook.close();

      Workbook workbook = Workbook.getWorkbook(new File("output.xls"));
      Sheet sheet = workbook.getSheet(0);
      Cell cell1 = sheet.getCell(0, 7);
      System.out.println(cell1.getContents());
      Cell cell2 = sheet.getCell(3, 7);
      System.out.println(cell2.getContents());
      workbook.close();
   }
}
