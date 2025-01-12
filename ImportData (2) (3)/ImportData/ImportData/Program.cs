using System;
using System.Data.SqlClient;

namespace ImportData
{
    class Program
    {
        static void Main(string[] args)
        {
            // Chuỗi kết nối tới SQL Server
            string connectionString = "Server=your_server_name;Database=your_database_name;User Id=your_username;Password=your_password;";

            // Tạo kết nối SQL
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    // Mở kết nối
                    connection.Open();
                    Console.WriteLine("Kết nối thành công!");

                    // Tạo câu lệnh SQL
                    string query = "SELECT TOP 1 * FROM your_table_name";

                    // Tạo SqlCommand
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Thực hiện truy vấn và đọc dữ liệu
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                // Giả sử cột đầu tiên là kiểu chuỗi
                                Console.WriteLine(reader.GetString(0));
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Xử lý ngoại lệ
                    Console.WriteLine("Lỗi: " + ex.Message);
                }
                finally
                {
                    // Đảm bảo đóng kết nối
                    connection.Close();
                    Console.WriteLine("Kết nối đã đóng.");
                }
            }
        }
    }
}
