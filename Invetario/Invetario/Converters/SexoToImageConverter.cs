using System;
using System.Globalization;
using System.Windows.Data;
using System.Windows.Media.Imaging;

namespace Invetario.Converters
{
    public class SexoToImageConverter : IValueConverter
    {
        public object? Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string sexo = value as string ?? "Hombre";
            string path = sexo == "Mujer"
                ? "pack://application:,,,/Foto empleado/empleado femenino.png"
                : "pack://application:,,,/Foto empleado/Empeado masculino.png";

            return new BitmapImage(new Uri(path, UriKind.Absolute));
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
