using System;
using System.Drawing;
using System.Windows.Forms;

namespace cpicker
{
    class Program
    {
        static void Main(string[] args)
        {
            Color inputColor = new Color();

            try
            {
                inputColor = ColorTranslator.FromHtml(args[0]);
            }
            catch
            {
                // http://i.imgur.com/T8c7dYY.jpg
            }

            System.Windows.Forms.ColorDialog colorDialog1 = new System.Windows.Forms.ColorDialog();

            colorDialog1.CustomColors = new int[] { ColorTranslator.ToOle(inputColor) };
            colorDialog1.Color = inputColor;
            colorDialog1.FullOpen = true;

            if (colorDialog1.ShowDialog() == DialogResult.OK)
            {
                Console.Write("#" + string.Format("0x{0:X8}", colorDialog1.Color.ToArgb()).Substring(4, 6));
            }
        }
    }
}
