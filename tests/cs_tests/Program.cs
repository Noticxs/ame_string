using System;
using System.Runtime.InteropServices;

[StructLayout(LayoutKind.Sequential)]
struct AmeString
{
    public IntPtr data;
    public int length;
    public int index;
}

static class Native
{
    [DllImport("../../out/libame_string",
        CallingConvention = CallingConvention.Cdecl)]
    public static extern int get_string_length(AmeString value);
}

class Program
{
static void Main()
{
    IntPtr data = Marshal.StringToCoTaskMemUTF8("Hellos");

    try
    {
        var value = new AmeString
        {
            data = data,
            length = 6,
            index = 0
        };

        int length = Native.get_string_length(value);
        Console.WriteLine(length);
    }
    finally
    {
        Marshal.FreeCoTaskMem(data);
    }
}
}
