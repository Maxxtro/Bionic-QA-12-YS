  function aa()
{
  TestedApps.notepad.Run();
  Aliases.notepad.wndNotepad.Edit.Keys("Hello World!");
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Save As...");
  Aliases.notepad.dlgSaveAs.SaveFile("C:\\private.txt", "Text Documents (*.txt)");
  Aliases.notepad.wndNotepad.Close();
 // Delay(1000);
  TestedApps.notepad.Run();
  Aliases.notepad.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.notepad.dlgOpen.OpenFile("c:\\private.txt", "Text Documents (*.txt)");
  aqObject.CompareProperty(Aliases.notepad.wndNotepad.Edit.wText, 0, "Hello World", false);
  Aliases.notepad.wndNotepad.Close();
  TestedApps.cmd.Run(1, true);
  Aliases.cmd.wndConsoleWindowClass.Keys("del c:\\private.txt[Enter]");
  Aliases.cmd.wndConsoleWindowClass.Keys("exit[Enter]");
  }