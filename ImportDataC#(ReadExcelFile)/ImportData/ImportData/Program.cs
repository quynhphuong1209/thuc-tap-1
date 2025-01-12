using System;
using System.Data.SqlClient;  //khai báo
using ClosedXML.Excel;

namespace ImportData    
{
    class Program
    {
        static void Main(string[] args)
        {
            string connectionString = "Server=localhost;Database=Thuctap1;User Id=sa;Password=DuyNam26!;";    // Chuỗi kết nối đến server

            ReadExcelFile(@"/Users/bunny/Documents/Du lieu thuc hanh.xlsx");                                  // Sử dụng ReadExcelFile truyền vào đươgf dẫn file excel

            using (SqlConnection connection = new SqlConnection(connectionString))                            // Tạo kết nối mới đến server sử dụng connectionString
            {
                try
                {
                    connection.Open();                                                                        // Mở kết nối
                    Console.WriteLine("Kết nối thành công!");

                    string query = "SELECT TOP 1 * FROM Vung";                                                // Query

                    using (SqlCommand command = new SqlCommand(query, connection))                            // Tạo SQLCommand để thực hiện Query
                    {
                        using (SqlDataReader reader = command.ExecuteReader())                                // Sử dụng SqlDataReader để đọc dữ liệu trả về từ query
                        {
                            while (reader.Read())
                            {
                                Console.WriteLine(reader.GetString(0));                                       // Đọc dữ liệu
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Lỗi: " + ex.Message);                                                  // Ngoại lệ
                }
                finally
                {
                    connection.Close();                                                                       // Đóng kết nối
                    Console.WriteLine("Kết nối đã đóng.");
                }
            }
        }

        static void ReadExcelFile(string filePath)                                                            // Khai báo ReadExcelFile
        {
            try
            {
                using (var workbook = new XLWorkbook(filePath))                                               // Tạo Workbook
                {
                    var worksheet = workbook.Worksheet(1);                                                    // Truy cập vào sheet 1 của Workbook
                    var value = worksheet.Cell("A1").Value;                                                   // Truy cập vào cột A1
                    Console.WriteLine($"Giá trị của ô A1: {value}");                                          // Trả về giá trị ô A1
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Có lỗi khi đọc file Excel: {ex.Message}");
            }
        }
    }
}