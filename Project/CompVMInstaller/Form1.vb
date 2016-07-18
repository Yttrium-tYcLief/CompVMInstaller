Imports System.IO
Imports System

Public Class Form1

    Dim FileName As String = ""
    Dim FilePath As String = ""

    Private Sub Form_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub SaveButton_Click(sender As Object, e As EventArgs) Handles SaveButton.Click
        Dim saveFileDialog1 As New SaveFileDialog()
        saveFileDialog1.FileName = FileName
        saveFileDialog1.InitialDirectory = FilePath
        saveFileDialog1.RestoreDirectory = True
        If saveFileDialog1.ShowDialog() = DialogResult.OK Then
            Dim file As System.IO.StreamWriter
            file = My.Computer.FileSystem.OpenTextFileWriter(saveFileDialog1.FileName, False)
            file.Write(OutputBox.Text)
            file.Close()
        End If
    End Sub

    Private Sub OpenButton_Click(sender As Object, e As EventArgs) Handles OpenButton.Click

    End Sub

    Private Sub RefreshButton_Click(sender As Object, e As EventArgs) Handles RefreshButton.Click

        OutputBox.Text = InputBox.Text

        Dim bones As Integer = 0
        Dim frames As Integer = 0

        Dim nodesnumber As Integer = Array.IndexOf(OutputBox.Lines, "nodes")
        Dim skeletonnumber As Integer = Array.IndexOf(OutputBox.Lines, "skeleton")

        bones = skeletonnumber - (nodesnumber + 3)

        For Each line As String In OutputBox.Lines
            If line.Contains("time") Then frames += 1
        Next

        OutputBox.Select(OutputBox.Text.IndexOf("skeleton") - 1, OutputBox.Text.Length)
        OutputBox.SelectedText = String.Empty

        OutputBox.AppendText(vbNewLine + "skeleton")
        OutputBox.AppendText(vbNewLine + "  time 0")
        For x = 0 To bones
            OutputBox.AppendText(vbNewLine + "    " + x.ToString + " -100 -100 -100 0 0 0")
        Next
        For x = 1 To frames - 1
            OutputBox.AppendText(vbNewLine + "  time " + x.ToString)
        Next

        OutputBox.AppendText(vbNewLine + "end")
    End Sub

    Private Sub LoadButton_Click(sender As Object, e As EventArgs) Handles LoadButton.Click

        Using sr As New StreamReader(InputPath.Text)
            While Not sr.EndOfStream
                InputBox.Text = sr.ReadToEnd
            End While
            FileName = Path.GetFileName(InputPath.Text)
            FilePath = Path.GetDirectoryName(InputPath.Text)
        End Using

    End Sub
End Class
