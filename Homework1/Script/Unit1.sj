function Main()
{
  try
  {
    // Enter your code here. 
  }
  catch(exception)
  {
    Log.Error("Exception", exception.description);
  }
}

function Create_and_edit()
{
  TestedApps.notepad.Run();
  Aliases.NOTEPAD.wndNotepad.Edit.Keys("Hello fellas!!^[ReleaseLast]^s");
  Aliases.NOTEPAD.wndNotepad.MainMenu.Click("File|Save As...");
  Aliases.NOTEPAD.dlgSaveAs.SaveFile("C:\\private.txt", "Text Documents (*.txt)");
  aqObject.CompareProperty(Aliases.NOTEPAD.wndNotepad.Edit.wText, 0, "Hello fellas!", false);
  Aliases.NOTEPAD.wndNotepad.Close();
  TestedApps.notepad.Run();
  Aliases.NOTEPAD.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.NOTEPAD.dlgOpen.OpenFile("C:\\private.txt", "Text Documents (*.txt)");
  Aliases.NOTEPAD.wndNotepad.Edit.Keys("[End][BS][BS][BS][BS][BS][BS][BS]Nigger)^s");
  Aliases.NOTEPAD.wndNotepad.Close();
  TestedApps.notepad.Run();
  Aliases.NOTEPAD.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.NOTEPAD.dlgOpen.OpenFile("C:\\private.txt", "Text Documents (*.txt)");
  aqObject.CompareProperty(Aliases.NOTEPAD.wndNotepad.Edit.wText, 0, "Hello Nigger)", false);
  Aliases.NOTEPAD.wndNotepad.Close();
  TestedApps.cmd.Run(1, true);
  Aliases.cmd.wndConsoleWindowClass.Keys("del c:\\private.txt[Enter]");
  Aliases.cmd.wndConsoleWindowClass.Keys("exit[Enter]");
}
  
