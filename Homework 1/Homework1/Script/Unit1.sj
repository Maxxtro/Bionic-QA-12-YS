function Main()
{
  Log.AppendFolder("Creating new file")
  TestedApps.notepad.Run();
  Aliases.notepad.wndNotepad.Edit.Keys("Hello Friends!!");
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Save As...");
  Aliases.notepad.dlgSaveAs.ComboBoxEx32.ComboBox.Edit.Keys("![ReleaseLast]");
  Aliases.notepad.dlgSaveAs.SaveFile("C:\\tomatoe", "Text Documents (*.txt)");
  aqObject.CompareProperty(Aliases.notepad.wndNotepad.Edit.wText, 0, "Hello Friends!", false);
  Aliases.notepad.wndNotepad.Close();
  Log.PopLogFolder()   
  Delay(300);
  Log.AppendFolder("Editing file")   
  TestedApps.notepad.Run();
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.notepad.dlgOpen.OpenFile("C:\\tomatoe", "Text Documents (*.txt)");
  Aliases.notepad.wndNotepad.Edit.Keys("[End][BS][BS][BS][BS][BS][BS][BS][BS]Nigger![ReleaseLast]!!^s");
  Aliases.notepad.wndNotepad.Close();
  Delay(300);
  TestedApps.notepad.Run();
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.notepad.dlgOpen.OpenFile("C:\\tomatoe", "Text Documents (*.txt)");
  aqObject.CompareProperty(Aliases.notepad.wndNotepad.Edit.wText, 0, "Hello Nigger!", false);
  Aliases.notepad.wndNotepad.Close();
  Log.PopLogFolder()
  Delay(300);
  Log.AppendFolder("Delete File")     
  TestedApps.cmd.Run();
  Aliases.cmd.wndConsoleWindowClass.Keys("del c:\\tomatoe.txt[Enter]exit[Enter]");
  Log.PopLogFolder()
}

