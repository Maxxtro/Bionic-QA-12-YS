function aa()
{
  TestedApps.notepad.Run();
  Aliases.NOTEPAD.wndNotepad.Edit.Keys("Hello fellas!!^[ReleaseLast]^s");
  Aliases.NOTEPAD.dlgSaveAs.SaveFile("C:\\Documents and Settings\\Tester\\Desktop\\Private.txt", "Text Documents (*.txt)");
  aqObject.CompareProperty(Aliases.NOTEPAD.wndNotepad.Edit.wText, 0, "Hello fellas!", false);
  Aliases.NOTEPAD.wndNotepad.Close();
  TestedApps.notepad.Run();
  Aliases.NOTEPAD.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.NOTEPAD.dlgOpen.OpenFile("C:\\Documents and Settings\\Tester\\Desktop\\Private.txt", "Text Documents (*.txt)");
  Aliases.NOTEPAD.wndNotepad.Edit.Keys("[End][BS][BS][BS][BS][BS][BS][BS]Nigger)^s");
  Aliases.NOTEPAD.wndNotepad.Close();
  TestedApps.notepad.Run();
  Aliases.NOTEPAD.wndNotepad.MainMenu.Click("File|Open...");
  Aliases.NOTEPAD.dlgOpen.OpenFile("C:\\Documents and Settings\\Tester\\Desktop\\Private.txt", "Text Documents (*.txt)");
  aqObject.CompareProperty(Aliases.NOTEPAD.wndNotepad.Edit.wText, 0, "Hello Nigger)", false);
  Aliases.NOTEPAD.wndNotepad.Close();
  TestedApps.cmd.Run(1, true);
  Aliases.cmd.wndConsoleWindowClass.Keys("del C:\\Documents and Settings\\Tester\\Desktop\\Private.txt[Enter]");
  Aliases.cmd.wndConsoleWindowClass.Keys("exit[Enter]");
}
