using System;

public class GetTheme
{
    public int GetAppsUseLightTheme()
    {
        int getmode = 1;
        string rKeyName = @"Software\Microsoft\Windows\CurrentVersion\Themes\Personalize";
        string rGetValueName = "AppsUseLightTheme";
        try
        {
            Microsoft.Win32.RegistryKey rKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(rKeyName);
            getmode = (int)rKey.GetValue(rGetValueName);
            rKey.Close();
        }
        catch{}
        return getmode;
    }
}

class MainClass
{
    static void Main()
    {
        var instance = new GetTheme();
        var colorMode = instance.GetAppsUseLightTheme();
        string[] colorName = new string[2];
        colorName[0] = "dark";
        colorName[1] = "light";
        Console.WriteLine(colorName[colorMode]);
        while (true) 
        {
            if (instance.GetAppsUseLightTheme() != colorMode)
            {
                colorMode = instance.GetAppsUseLightTheme();
                Console.WriteLine(colorName[colorMode]);
            }
            System.Threading.Thread.Sleep(16);
        }
    }
}