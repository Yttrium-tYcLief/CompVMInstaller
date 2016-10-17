Imports System
Imports System.IO
Imports System.IO.Compression

Public Class Form2

    Public DevMode As Boolean = False
    Public Version As String = My.Application.Info.Version.ToString

    Dim TF2Path As String = ""
    Dim FileName As String = ""
    Dim FilePath As String = ""
    Dim ScoutChanged As Boolean = False
    Dim SniperChanged As Boolean = False
    Dim SoldierChanged As Boolean = False
    Dim DemomanChanged As Boolean = False
    Dim MedicChanged As Boolean = False
    Dim HeavyChanged As Boolean = False
    Dim PyroChanged As Boolean = False
    Dim SpyChanged As Boolean = False
    Dim EngineerChanged As Boolean = False

    Private Sub TF2FolderBtn_Click(sender As Object, e As EventArgs) Handles TF2FolderBtn.Click
        Dim OpenFolderDialog1 As New FolderBrowserDialog()
        If OpenFolderDialog1.ShowDialog() = DialogResult.OK Then
            If File.Exists(OpenFolderDialog1.SelectedPath + "\bin\vpk.exe") And File.Exists(OpenFolderDialog1.SelectedPath + "\bin\studiomdl.exe") Then
                MessageBox.Show("Valid TF2 installation found.", "Success")
                TF2Path = OpenFolderDialog1.SelectedPath
                RenderButton.Enabled = True
                If Not My.Computer.Registry.GetValue("HKEY_CURRENT_USER\Software\CompVMInstaller", "TF2Path", Nothing) Is Nothing Then
                    My.Computer.Registry.CurrentUser.CreateSubKey("Software\CompVMInstaller")
                End If
                My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\CompVMInstaller", "TF2Path", TF2Path)
                TF2FolderBtn.Enabled = True
            Else
                MessageBox.Show("Invalid TF2 path!", "Error")
                RenderButton.Enabled = False
            End If
        End If
    End Sub

    Private Sub Form_Load(sender As Object, e As EventArgs) Handles MyBase.Load
#If DEBUG Then
        DevMode = True
#End If

        If DevMode = False Then
            TabControl1.TabPages.RemoveAt(2)
            Me.Text = My.Application.Info.Title
        Else
            Me.Text = My.Application.Info.Title + " - DEV MODE"
        End If
        TabControl1.TabPages.RemoveAt(0)

        If My.Computer.Registry.GetValue("HKEY_CURRENT_USER\Software\CompVMInstaller", "TF2Path", Nothing) Is Nothing Then
            TF2FolderBtn.Enabled = True
        Else
            Dim readValue = My.Computer.Registry.GetValue("HKEY_CURRENT_USER\Software\CompVMInstaller", "TF2Path", Nothing)
            If File.Exists(readValue + "\bin\vpk.exe") And File.Exists(readValue + "\bin\studiomdl.exe") Then
                TF2Path = readValue
                RenderButton.Enabled = True
            Else
                TF2FolderBtn.Enabled = True
            End If
        End If


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

    Private Sub RefreshButton_Click(sender As Object, e As EventArgs) Handles RefreshButton.Click

        OutputBox.Text = InputBox.Text

        Dim nodesnumber As Integer = Array.IndexOf(OutputBox.Lines, "nodes")
        Dim skeletonnumber As Integer = Array.IndexOf(OutputBox.Lines, "skeleton")

        Dim bones As Integer = skeletonnumber - (nodesnumber + 3)
        Dim frames As Integer = 0

        For Each line As String In OutputBox.Lines
            If line.Contains("time") Then frames += 1
        Next

        OutputBox.Text = OutputBox.Text.Substring(0, OutputBox.Text.IndexOf("skeleton"))

        OutputBox.AppendText(vbNewLine + "skeleton")
        OutputBox.AppendText(vbNewLine + "  time 0")
        For x = 0 To bones
            OutputBox.AppendText(vbNewLine + "    " + x.ToString + " -100 -100 -100 0 0 0")
        Next
        For x = 1 To frames - 1
            OutputBox.AppendText(vbNewLine + "  time " + x.ToString)
        Next

        OutputBox.AppendText(vbNewLine + "End")

    End Sub

    Sub PrepFolders()
        Dim FBytes() As Byte = My.Resources.animations
        Dim TmpPath As String = ""
        Try
            If Directory.Exists(TF2Path + "\tf\tmpcmpvm") Then
                My.Computer.FileSystem.DeleteDirectory(TF2Path + "\tf\tmpcmpvm", FileIO.DeleteDirectoryOption.DeleteAllContents)
            End If
            Directory.CreateDirectory(TF2Path + "\tf\tmpcmpvm")
            TmpPath = Path.GetTempPath
        Catch ex As Exception
        End Try
        If File.Exists(TmpPath + "\animations.zip") Then File.Delete(TmpPath + "\animations.zip")
        My.Computer.FileSystem.WriteAllBytes(TmpPath + "\animations.zip", FBytes, True)
        ZipFile.ExtractToDirectory(TmpPath + "\animations.zip", TF2Path + "\tf\tmpcmpvm")

        'Dim output As Object = shObj.NameSpace(TF2Path + "\tf\tmpcmpvm")
        'Dim input As Object = shObj.NameSpace(TmpPath + "\animations.zip")
        'output.CopyHere((input.Items), 4)
    End Sub

    Sub CheckForChanges()

        'Check for Scout changes
        If ScoutHideScatterguns.Checked = False _
            And ScoutHideDoubleBarrels.Checked = False _
            And ScoutHideShortstop.Checked = False _
            And ScoutHideShortstopPush.Checked = False _
            And ScoutHidePrimaryInspect.Checked = False _
            And ScoutHidePistols.Checked = False _
            And ScoutHideThrowables.Checked = False _
            And ScoutHideDrinks.Checked = False _
            And ScoutHideSecondaryInspect.Checked = False _
            And ScoutHideMelee.Checked = False Then
            ScoutChanged = False
        Else
            ScoutChanged = True
        End If

        'Check for Sniper changes
        If SniperHideRifles.Checked = False _
            And SniperHideHuntsman.Checked = False _
            And SniperHidePrimaryInspect.Checked = False _
            And SniperHideSMGs.Checked = False _
            And SniperHideThrowables.Checked = False _
            And SniperHideSecondaryInspect.Checked = False _
            And SniperHideMelee.Checked = False Then
            SniperChanged = False
        Else
            SniperChanged = True
        End If

        'Check for Soldier changes
        If SoldierHideRockets.Checked = False _
            And SoldierHideOriginal.Checked = False _
            And SoldierHideMangler.Checked = False _
            And ScoutHidePrimaryInspect.Checked = False _
            And SoldierHideShotguns.Checked = False _
            And SoldierHideBanners.Checked = False _
            And SoldierHideBison.Checked = False _
            And SoldierHideSecondaryInspect.Checked = False _
            And SoldierHideMelee.Checked = False Then
            SoldierChanged = False
        Else
            SoldierChanged = True
        End If

        'Check for Demo changes
        If DemomanHideGrenades.Checked = False _
            And DemomanHidePrimaryInspect.Checked = False _
            And DemomanHideStickybombs.Checked = False _
            And DemomanHideSecondaryInspect.Checked = False _
            And DemomanHideMelee.Checked = False Then
            DemomanChanged = False
        Else
            DemomanChanged = True
        End If

        'Check for Medic changes
        If MedicHidePrimaries.Checked = False _
            And MedicHidePrimaryInspect.Checked = False _
            And MedicHideMediguns.Checked = False _
            And MedicHideSecondaryInspect.Checked = False _
            And MedicHideMelee.Checked = False Then
            MedicChanged = False
        Else
            MedicChanged = True
        End If

        'Check for Heavy changes
        If HeavyHideMiniguns.Checked = False _
            And HeavyHidePrimaryInspect.Checked = False _
            And HeavyHideShotguns.Checked = False _
            And HeavyHideConsumables.Checked = False _
            And HeavyHideSecondaryInspect.Checked = False _
            And HeavyHideMelee.Checked = False Then
            HeavyChanged = False
        Else
            HeavyChanged = True
        End If

        'Check for Pyro changes
        If PyroHideFlamethrowers.Checked = False _
            And PyroHidePrimaryInspect.Checked = False _
            And PyroHideShotguns.Checked = False _
            And PyroHideFlareGuns.Checked = False _
            And PyroHideSecondaryInspect.Checked = False _
            And PyroHideMelee.Checked = False Then
            PyroChanged = False
        Else
            PyroChanged = True
        End If

        'Check for Spy changes
        If SpyHideRevolvers.Checked = False _
            And SpyHidePrimaryInspect.Checked = False _
            And SpyHideSappers.Checked = False _
            And SpyHideMelee.Checked = False _
            And SpyHideMeleeInspect.Checked = False _
            And SpyHideInvisWatch.Checked = False _
            And SpyHideDeadRinger.Checked = False _
            And SpyHideDisguiseKit.Checked = False Then
            SpyChanged = False
        Else
            SpyChanged = True
        End If

        'Check for Engineer changes
        If EngineerHideShotguns.Checked = False _
            And EngineerHidePomson.Checked = False _
            And EngineerHidePrimaryInspect.Checked = False _
            And EngineerHidePistols.Checked = False _
            And EngineerHideGunslinger.Checked = False _
            And EngineerHideShortCircuit.Checked = False _
            And EngineerHideSecondaryInspect.Checked = False _
            And EngineerHideWrenches.Checked = False _
            And EngineerHideGunslinger.Checked = False _
            And EngineerHideMeleeInspect.Checked = False _
            And EngineerHidePDA.Checked = False _
            And EngineerHideToolbox.Checked = False Then
            EngineerChanged = False
        Else
            EngineerChanged = True
        End If

    End Sub

    Sub CompileModel(TfClass As String)
        Dialog1.InfoBox.AppendText("Compiling model for class:  " + TfClass + "... ")
        Dim Mdlstudio As New Process
        Mdlstudio.StartInfo = New ProcessStartInfo(TF2Path + "\bin\studiomdl.exe")
        Mdlstudio.StartInfo.Arguments = "-game """ + TF2Path + "\tf"" -nop4 -verbose """ + TF2Path + "\tf\tmpcmpvm\c_" + TfClass.ToLower + "_animations.qc"""
        Mdlstudio.StartInfo.CreateNoWindow = True
        Mdlstudio.StartInfo.UseShellExecute = False
        Mdlstudio.Start()
        Mdlstudio.WaitForExit()

        Dialog1.InfoBox.AppendText("Done." + vbNewLine)
    End Sub

    Sub EditFile(Filename As String, TfClass As String)

        InputBox.Clear()

        Dialog1.InfoBox.AppendText("Editing animation file """ + Filename + """ for class: " + TfClass + "... ")

        Dim EditPath As String = TF2Path + "\tf\tmpcmpvm\c_" + TfClass.ToLower + "_animations_anims\" + Filename + ".smd"

        Using sr As New StreamReader(EditPath)
            While Not sr.EndOfStream
                InputBox.Text = sr.ReadToEnd
            End While
        End Using

        Dim nodesnumber As Integer = Array.IndexOf(InputBox.Lines, "nodes")

        Dim skeletonnumber As Integer = Array.IndexOf(InputBox.Lines, "skeleton")

        Dim bones As Integer = skeletonnumber - (nodesnumber + 3)
        Dim frames As Integer = 0

        For Each line As String In InputBox.Lines
            If line.Contains("time") Then frames += 1
        Next

        InputBox.Text = InputBox.Text.Substring(0, InputBox.Text.IndexOf("skeleton"))

        InputBox.AppendText(vbNewLine + "skeleton")
        InputBox.AppendText(vbNewLine + "  time 0")
        For x = 0 To bones
            InputBox.AppendText(vbNewLine + "    " + x.ToString + " -100 -100 -100 0 0 0")
        Next
        For x = 1 To frames - 1
            InputBox.AppendText(vbNewLine + "  time " + x.ToString)
        Next

        InputBox.AppendText(vbNewLine + "End" + vbNewLine)

        Dim file As System.IO.StreamWriter = My.Computer.FileSystem.OpenTextFileWriter(EditPath, False)
        file.Write(InputBox.Text)
        file.Close()

        InputBox.Clear()

        Dialog1.InfoBox.AppendText("Done." + vbNewLine)

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

    Private Sub RenderButton_Click(sender As Object, e As EventArgs) Handles RenderButton.Click

        Dialog1.Show()
        Dialog1.InfoBox.Clear()
        Dialog1.InfoBox.AppendText("Extracting files... ")
        PrepFolders()
        Dialog1.InfoBox.AppendText("Done." + vbNewLine)
        CheckForChanges()
        RenderFiles()
        RenderModels()
        CopyModels()
        PackageMod()
        If DevMode Then
            Dialog1.InfoBox.AppendText("Dev mode enabled, skipping preloader." + vbNewLine)
        Else
            PreloaderInstall()
        End If
        CleanUp()

        Dialog1.InfoBox.AppendText(vbNewLine + "Mod installed.")
        Dialog1.OK_Button.Enabled = True

    End Sub

    Private Sub RenderFiles()
        If ScoutChanged Then
            If ScoutHideScatterguns.Checked Then
                EditFile("sg_draw", "Scout")
                EditFile("sg_idle", "Scout")
                EditFile("sg_fire", "Scout")
                EditFile("sg_reload_start", "Scout")
                EditFile("sg_reload_loop", "Scout")
                EditFile("sg_reload_end", "Scout")
            End If
            If ScoutHideDoubleBarrels.Checked Then
                EditFile("db_draw", "Scout")
                EditFile("db_idle", "Scout")
                EditFile("db_fire", "Scout")
                EditFile("db_reload", "Scout")
            End If
            If ScoutHideShortstop.Checked Then
                EditFile("ss_draw", "Scout")
                EditFile("ss_idle", "Scout")
                EditFile("ss_fire", "Scout")
                EditFile("ss_reload", "Scout")
            End If
            If ScoutHideShortstopPush.Checked Then
                EditFile("ss_alt_fire", "Scout")
            End If
            If ScoutHidePrimaryInspect.Checked Then
                EditFile("primary_inspect_start", "Scout")
                EditFile("primary_inspect_idle", "Scout")
                EditFile("primary_inspect_end", "Scout")
            End If
            If ScoutHidePistols.Checked Then
                EditFile("p_draw", "Scout")
                EditFile("p_idle", "Scout")
                EditFile("p_fire", "Scout")
                EditFile("p_reload", "Scout")
            End If
            If ScoutHideThrowables.Checked Then
                EditFile("throw_draw", "Scout")
                EditFile("throw_idle", "Scout")
                EditFile("throw_fire", "Scout")
            End If
            If ScoutHideDrinks.Checked Then
                EditFile("ed_draw", "Scout")
                EditFile("ed_idle", "Scout")
                EditFile("ed_throw", "Scout")
            End If
            If ScoutHideSecondaryInspect.Checked Then
                EditFile("secondary_inspect_start", "Scout")
                EditFile("secondary_inspect_idle", "Scout")
                EditFile("secondary_inspect_end", "Scout")
            End If
            If ScoutHideMelee.Checked Then
                EditFile("b_idle", "Scout")
                EditFile("b_draw", "Scout")
                EditFile("b_swing_a", "Scout")
                EditFile("b_swing_b", "Scout")
                EditFile("b_swing_c", "Scout")
                EditFile("b_throw", "Scout")
                EditFile("wb_draw", "Scout")
                EditFile("wb_idle", "Scout")
                EditFile("wb_swing_a", "Scout")
                EditFile("wb_swing_b", "Scout")
                EditFile("wb_swing_c", "Scout")
                EditFile("wb_fire", "Scout")
                EditFile("wb_grab", "Scout")
                EditFile("melee_allclass_idle", "Scout")
                EditFile("melee_allclass_draw", "Scout")
                EditFile("melee_allclass_swing", "Scout")
            End If
        End If
        If SniperChanged Then
            If SniperHideRifles.Checked Then
                EditFile("draw", "Sniper")
                EditFile("fire", "Sniper")
                EditFile("idle", "Sniper")
                EditFile("rifolver_draw", "Sniper")
                EditFile("rifolver_fire", "Sniper")
                EditFile("rifolver_fire_reload", "Sniper")
                EditFile("rifolver_idle", "Sniper")
            End If
            If SniperHideHuntsman.Checked Then
                EditFile("bw_idle", "Sniper")
                EditFile("bw_draw", "Sniper")
                EditFile("bw_charge", "Sniper")
                EditFile("bw_idle2", "Sniper")
                EditFile("bw_fire", "Sniper")
                EditFile("bw_noammo", "Sniper")
                EditFile("bw_idle3", "Sniper")
                EditFile("bw_shake", "Sniper")
                EditFile("bw_dryfire", "Sniper")
            End If
            If SniperHidePrimaryInspect.Checked Then
                EditFile("primary_inspect_start", "Sniper")
                EditFile("primary_inspect_idle", "Sniper")
                EditFile("primary_inspect_end", "Sniper")
            End If
            If SniperHideSMGs.Checked Then
                EditFile("smg_draw", "Sniper")
                EditFile("smg_idle", "Sniper")
                EditFile("smg_fire", "Sniper")
                EditFile("smg_reload", "Sniper")
            End If
            If SniperHideThrowables.Checked Then
                EditFile("pj_draw", "Sniper")
                EditFile("pj_idle", "Sniper")
                EditFile("pj_fire", "Sniper")
            End If
            If SniperHideSecondaryInspect.Checked Then
                EditFile("secondary_inspect_start", "Sniper")
                EditFile("secondary_inspect_idle", "Sniper")
                EditFile("secondary_inspect_end", "Sniper")
            End If
            If SniperHideMelee.Checked Then
                EditFile("m_idle", "Sniper")
                EditFile("m_draw", "Sniper")
                EditFile("m_swing_a", "Sniper")
                EditFile("m_swing_b", "Sniper")
                EditFile("m_swing_c", "Sniper")
                EditFile("melee_allclass_idle", "Sniper")
                EditFile("melee_allclass_draw", "Sniper")
                EditFile("melee_allclass_swing_a", "Sniper")
                EditFile("melee_allclass_swing_b", "Sniper")
                EditFile("melee_allclass_swing_c", "Sniper")
            End If
        End If
        If SoldierChanged Then
            If SoldierHideRockets.Checked Then
                EditFile("dh_idle", "Soldier")
                EditFile("dh_fire", "Soldier")
                EditFile("dh_draw", "Soldier")
                EditFile("dh_reload_start", "Soldier")
                EditFile("dh_reload_loop", "Soldier")
                EditFile("dh_reload_finish", "Soldier")
                EditFile("dh_reload_start_alt", "Soldier")
                EditFile("dh_reload_loop_alt", "Soldier")
                EditFile("dh_reload_finish_alt", "Soldier")
                EditFile("mangler_fire_super", "Soldier")
                EditFile("mangler_reload_start", "Soldier")
                EditFile("mangler_reload_loop", "Soldier")
                EditFile("mangler_reload_finish", "Soldier")
            End If
            If SoldierHideOriginal.Checked Then
                EditFile("bet_idle", "Soldier")
                EditFile("bet_fire", "Soldier")
                EditFile("bet_draw", "Soldier")
                EditFile("bet_reload_start", "Soldier")
                EditFile("bet_reload_loop", "Soldier")
                EditFile("bet_reload_finish", "Soldier")
            End If
            If SoldierHidePrimaryInspect.Checked Then
                EditFile("primary_inspect_start", "Soldier")
                EditFile("primary_inspect_idle", "Soldier")
                EditFile("primary_inspect_end", "Soldier")
                EditFile("primary_alt1_inspect_start", "Soldier")
                EditFile("primary_alt1_inspect_idle", "Soldier")
                EditFile("primary_alt1_inspect_end", "Soldier")
            End If
            If SoldierHideShotguns.Checked Then
                EditFile("draw", "Soldier")
                EditFile("idle", "Soldier")
                EditFile("fire", "Soldier")
                EditFile("reload_start", "Soldier")
                EditFile("reload_loop", "Soldier")
                EditFile("reload_end", "Soldier")
            End If
            If SoldierHideBanners.Checked Then
                EditFile("bb_draw", "Soldier")
                EditFile("bb_idle", "Soldier")
                EditFile("bb_fire_red", "Soldier")
                EditFile("bb_fire_blue", "Soldier")
                EditFile("wh_draw", "Soldier")
                EditFile("wh_idle", "Soldier")
                EditFile("wh_fire_red", "Soldier")
                EditFile("wh_fire_blue", "Soldier")
            End If
            If SoldierHideBison.Checked Then
                EditFile("bison_draw", "Soldier")
                EditFile("bison_idle", "Soldier")
                EditFile("bison_fire", "Soldier")
                EditFile("bison_reload_start", "Soldier")
                EditFile("bison_reload_loop", "Soldier")
                EditFile("bison_reload_end", "Soldier")
            End If
            If SoldierHideSecondaryInspect.Checked Then
                EditFile("secondary_inspect_start", "Soldier")
                EditFile("secondary_inspect_idle", "Soldier")
                EditFile("secondary_inspect_end", "Soldier")
            End If
            If SoldierHideMelee.Checked Then
                EditFile("s_draw", "Soldier")
                EditFile("s_idle", "Soldier")
                EditFile("s_swing_a", "Soldier")
                EditFile("s_swing_b", "Soldier")
                EditFile("s_swing_c", "Soldier")
                EditFile("melee_allclass_draw", "Soldier")
                EditFile("melee_allclass_idle", "Soldier")
                EditFile("melee_allclass_swing", "Soldier")
            End If
        End If
        If DemomanChanged Then
            If DemomanHideGrenades.Checked Then
                EditFile("g_draw", "Demo")
                EditFile("g_idle", "Demo")
                EditFile("g_fire", "Demo")
                EditFile("g_auto_fire", "Demo")
                EditFile("g_reload_start", "Demo")
                EditFile("g_reload_loop", "Demo")
                EditFile("g_reload_end", "Demo")
                EditFile("loch_reload_start", "Demo")
                EditFile("loch_reload_loop", "Demo")
                EditFile("loch_reload_end", "Demo")
            End If
            If DemomanHidePrimaryInspect.Checked Then
                EditFile("primary_inspect_start", "Demo")
                EditFile("primary_inspect_idle", "Demo")
                EditFile("primary_inspect_end", "Demo")
            End If
            If DemomanHideStickybombs.Checked Then
                EditFile("sb_idle", "Demo")
                EditFile("sb_fire", "Demo")
                EditFile("sb_draw", "Demo")
                EditFile("sb_autofire", "Demo")
                EditFile("sb_reload_start", "Demo")
                EditFile("sb_reload_loop", "Demo")
                EditFile("sb_reload_end", "Demo")
            End If
            If DemomanHideSecondaryInspect.Checked Then
                EditFile("secondary_inspect_start", "Demo")
                EditFile("secondary_inspect_idle", "Demo")
                EditFile("secondary_inspect_end", "Demo")
            End If
            If DemomanHideMelee.Checked Then
                EditFile("b_draw", "Demo")
                EditFile("b_idle", "Demo")
                EditFile("b_swing_a", "Demo")
                EditFile("b_swing_b", "Demo")
                EditFile("b_swing_c", "Demo")
                EditFile("melee_allclass_draw", "Demo")
                EditFile("melee_allclass_idle", "Demo")
                EditFile("melee_allclass_swing_a", "Demo")
                EditFile("melee_allclass_swing_b", "Demo")
                EditFile("melee_allclass_swing_c", "Demo")
                EditFile("cm_draw", "Demo")
                EditFile("cm_swing_a", "Demo")
                EditFile("cm_swing_b", "Demo")
                EditFile("cm_swing_c", "Demo")
            End If
        End If
        If MedicChanged Then
            If MedicHidePrimaries.Checked Then
                EditFile("sg_draw", "Medic")
                EditFile("sg_idle", "Medic")
                EditFile("sg_fire", "Medic")
                EditFile("sg_reload", "Medic")
            End If
            If MedicHidePrimaryInspect.Checked Then
                EditFile("primary_inspect_start", "Medic")
                EditFile("primary_inspect_idle", "Medic")
                EditFile("primary_inspect_end", "Medic")
            End If
            If MedicHideMediguns.Checked Then
                EditFile("draw", "Medic")
                EditFile("idle", "Medic")
                EditFile("fire_on", "Medic")
                EditFile("fire_loop", "Medic")
                EditFile("fire_off", "Medic")
            End If
            If MedicHideSecondaryInspect.Checked Then
                EditFile("secondary_inspect_start", "Medic")
                EditFile("secondary_inspect_idle", "Medic")
                EditFile("secondary_inspect_end", "Medic")
            End If
            If MedicHideMelee.Checked Then
                EditFile("bs_draw", "Medic")
                EditFile("bs_idle", "Medic")
                EditFile("bs_swing_a", "Medic")
                EditFile("bs_swing_b", "Medic")
                EditFile("bs_swing_c", "Medic")
                EditFile("melee_allclass_draw", "Medic")
                EditFile("melee_allclass_idle", "Medic")
                EditFile("melee_allclass_swing", "Medic")
            End If
        End If
        If HeavyChanged Then
            If HeavyHideMiniguns.Checked Then
                EditFile("m_idle", "Heavy")
                EditFile("m_fire", "Heavy")
                EditFile("m_draw", "Heavy")
                EditFile("m_spool_up", "Heavy")
                EditFile("m_spool_down", "Heavy")
                EditFile("m_spool_idle", "Heavy")
            End If
            If HeavyHidePrimaryInspect.Checked Then
                EditFile("primary_inspect_start", "Heavy")
                EditFile("primary_inspect_idle", "Heavy")
                EditFile("primary_inspect_end", "Heavy")
            End If
            If HeavyHideShotguns.Checked Then
                EditFile("draw", "Heavy")
                EditFile("idle", "Heavy")
                EditFile("fire", "Heavy")
                EditFile("reload_start", "Heavy")
                EditFile("reload_loop", "Heavy")
                EditFile("reload_end", "Heavy")
            End If
            If HeavyHideConsumables.Checked Then
                EditFile("sw_draw", "Heavy")
                EditFile("sw_idle", "Heavy")
            End If
            If HeavyHideSecondaryInspect.Checked Then
                EditFile("secondary_inspect_start", "Heavy")
                EditFile("secondary_inspect_idle", "Heavy")
                EditFile("secondary_inspect_end", "Heavy")
            End If
            If HeavyHideMelee.Checked Then
                EditFile("f_swing_left", "Heavy")
                EditFile("f_swing_right", "Heavy")
                EditFile("f_swing_crit", "Heavy")
                EditFile("f_idle", "Heavy")
                EditFile("f_draw", "Heavy")
                EditFile("bg_swing_left", "Heavy")
                EditFile("bg_swing_right", "Heavy")
                EditFile("bg_swing_crit", "Heavy")
                EditFile("bg_idle", "Heavy")
                EditFile("bg_draw", "Heavy")
                EditFile("melee_allclass_draw", "Heavy")
                EditFile("melee_allclass_idle", "Heavy")
                EditFile("melee_allclass_swing", "Heavy")
            End If
        End If
        If PyroChanged Then
            If PyroHideFlamethrowers.Checked Then
                EditFile("ft_idle", "Pyro")
                EditFile("ft_fire", "Pyro")
                EditFile("ft_draw", "Pyro")
                EditFile("ft_alt_fire", "Pyro")
            End If
            If PyroHidePrimaryInspect.Checked Then
                EditFile("primary_inspect_start", "Pyro")
                EditFile("primary_inspect_idle", "Pyro")
                EditFile("primary_inspect_end", "Pyro")
            End If
            If PyroHideShotguns.Checked Then
                EditFile("draw", "Pyro")
                EditFile("idle", "Pyro")
                EditFile("fire", "Pyro")
                EditFile("reload_start", "Pyro")
                EditFile("reload_loop", "Pyro")
                EditFile("reload_end", "Pyro")
            End If
            If PyroHideFlareGuns.Checked Then
                EditFile("fg_draw", "Pyro")
                EditFile("fg_idle", "Pyro")
                EditFile("fg_fire", "Pyro")
                EditFile("mm_draw", "Pyro")
                EditFile("mm_idle", "Pyro")
                EditFile("mm_fire", "Pyro")
            End If
            If PyroHideSecondaryInspect.Checked Then
                EditFile("secondary_inspect_start", "Pyro")
                EditFile("secondary_inspect_idle", "Pyro")
                EditFile("secondary_inspect_end", "Pyro")
            End If
            If PyroHideMelee.Checked Then
                EditFile("fa_idle", "Pyro")
                EditFile("fa_draw", "Pyro")
                EditFile("fa_swing_a", "Pyro")
                EditFile("fa_swing_b", "Pyro")
                EditFile("fa_swing_c", "Pyro")
                EditFile("melee_allclass_draw", "Pyro")
                EditFile("melee_allclass_idle", "Pyro")
                EditFile("melee_allclass_swing", "Pyro")
            End If
        End If
        If SpyChanged Then
            If SpyHideRevolvers.Checked Then
                EditFile("draw", "Spy")
                EditFile("idle", "Spy")
                EditFile("fire", "Spy")
                EditFile("reload", "Spy")
                EditFile("reload2", "Spy")
            End If
            If SpyHidePrimaryInspect.Checked Then
                EditFile("secondary_inspect_start", "Spy")
                EditFile("secondary_inspect_idle", "Spy")
                EditFile("secondary_inspect_end", "Spy")
            End If
            If SpyHideSappers.Checked Then
                EditFile("c_sapper_draw", "Spy")
                EditFile("c_sapper_drawDeployed", "Spy")
                EditFile("c_sapper_idle", "Spy")
                EditFile("c_sd_sapper_draw", "Spy")
                EditFile("c_sd_sapper_idle", "Spy")
            End If
            If SpyHideMelee.Checked Then
                EditFile("eternal_draw", "Spy")
                EditFile("eternal_idle", "Spy")
                EditFile("eternal_stab_a", "Spy")
                EditFile("eternal_stab_b", "Spy")
                EditFile("eternal_stab_c", "Spy")
                EditFile("eternal_backstab", "Spy")
                EditFile("eternal_backstab_up", "Spy")
                EditFile("eternal_backstab_down", "Spy")
                EditFile("eternal_backstab_idle", "Spy")
                EditFile("eternal_stun", "Spy")
                EditFile("melee_allclass_draw", "Spy")
                EditFile("melee_allclass_idle", "Spy")
                EditFile("melee_allclass_swing", "Spy")
                EditFile("acr_draw", "Spy")
                EditFile("acr_idle", "Spy")
                EditFile("acr_stab_a", "Spy")
                EditFile("acr_stab_b", "Spy")
                EditFile("acr_stab_c", "Spy")
                EditFile("acr_backstab", "Spy")
                EditFile("acr_backstab_up", "Spy")
                EditFile("acr_backstab_down", "Spy")
                EditFile("acr_backstab_idle", "Spy")
                EditFile("acr_stun", "Spy")
                EditFile("knife_draw", "Spy")
                EditFile("knife_idle", "Spy")
                EditFile("knife_stab_a", "Spy")
                EditFile("knife_stab_b", "Spy")
                EditFile("knife_stab_c", "Spy")
                EditFile("knife_backstab", "Spy")
                EditFile("knife_backstab_up", "Spy")
                EditFile("knife_backstab_down", "Spy")
                EditFile("knife_backstab_idle", "Spy")
                EditFile("knife_stun", "Spy")
            End If
            If SpyHideMeleeInspect.Checked Then
                EditFile("melee_inspect_start", "Spy")
                EditFile("melee_inspect_idle", "Spy")
                EditFile("melee_inspect_end", "Spy")
            End If
            If SpyHideInvisWatch.Checked Then
            End If
            If SpyHideDeadRinger.Checked Then
            End If
            If SpyHideDisguiseKit.Checked Then
                EditFile("offhand_draw", "Spy")
                EditFile("offhand_idle", "Spy")
                EditFile("offhand_holster", "Spy")
            End If
        End If
        If EngineerChanged Then
            If EngineerHideShotguns.Checked Then
                EditFile("fj_draw", "Engineer")
                EditFile("fj_idle", "Engineer")
                EditFile("fj_fire", "Engineer")
                EditFile("fj_fire_alt", "Engineer")
                EditFile("fj_reload_start", "Engineer")
                EditFile("fj_reload_loop", "Engineer")
                EditFile("fj_reload_end", "Engineer")
            End If
            If EngineerHidePomson.Checked Then
                EditFile("pomson_draw", "Engineer")
                EditFile("pomson_idle", "Engineer")
                EditFile("pomson_fire", "Engineer")
                EditFile("pomson_reload_start", "Engineer")
                EditFile("pomson_reload_loop", "Engineer")
                EditFile("pomson_reload_end", "Engineer")
            End If
            If EngineerHidePrimaryInspect.Checked Then
                EditFile("primary_inspect_start", "Engineer")
                EditFile("primary_inspect_idle", "Engineer")
                EditFile("primary_inspect_end", "Engineer")
            End If
            If EngineerHidePistols.Checked Then
                EditFile("pstl_draw", "Engineer")
                EditFile("pstl_idle", "Engineer")
                EditFile("pstl_fire", "Engineer")
                EditFile("pstl_reload", "Engineer")
            End If
            If EngineerHideWrangler.Checked Then
                EditFile("wgl_draw", "Engineer")
                EditFile("wgl_idle", "Engineer")
                EditFile("wgl_reload_start", "Engineer")
                EditFile("wgl_reload_loop", "Engineer")
                EditFile("wgl_reload_end", "Engineer")
                EditFile("wgl_idle_rare", "Engineer")
            End If
            If EngineerHideShortCircuit.Checked Then
            End If
            If EngineerHideSecondaryInspect.Checked Then
                EditFile("secondary_inspect_start", "Engineer")
                EditFile("secondary_inspect_idle", "Engineer")
                EditFile("secondary_inspect_end", "Engineer")
            End If
            If EngineerHideWrenches.Checked Then
                EditFile("pdq_idle_tap", "Engineer")
                EditFile("pdq_draw", "Engineer")
                EditFile("pdq_swing_a", "Engineer")
                EditFile("pdq_swing_b", "Engineer")
                EditFile("pdq_swing_c", "Engineer")
                EditFile("spk_idle_tap", "Engineer")
                EditFile("spk_draw", "Engineer")
                EditFile("spk_swing_a", "Engineer")
                EditFile("spk_swing_b", "Engineer")
                EditFile("spk_swing_c", "Engineer")
                EditFile("melee_allclass_idle", "Engineer")
                EditFile("melee_allclass_draw", "Engineer")
                EditFile("melee_allclass_swing", "Engineer")
            End If
            If EngineerHideGunslinger.Checked Then
                EditFile("gun_idle", "Engineer")
                EditFile("gun_draw", "Engineer")
                EditFile("gun_swing_a", "Engineer")
                EditFile("gun_swing_B", "Engineer")
                EditFile("gun_idle_rare", "Engineer")
            End If
            If EngineerHideMeleeInspect.Checked Then
                EditFile("melee_inspect_start", "Engineer")
                EditFile("melee_inspect_idle", "Engineer")
                EditFile("melee_inspect_end", "Engineer")
            End If
            If EngineerHidePDA.Checked Then
                EditFile("pda_idle", "Engineer")
                EditFile("pda_draw", "Engineer")
                EditFile("bld_idle", "Engineer")
                EditFile("bld_draw", "Engineer")
            End If
            If EngineerHideToolbox.Checked Then
                EditFile("box_idle", "Engineer")
                EditFile("box_draw", "Engineer")
            End If
        End If
    End Sub

    Private Sub RenderModels()
        If ScoutChanged Then CompileModel("Scout")
        If SniperChanged Then CompileModel("Sniper")
        If SoldierChanged Then CompileModel("Soldier")
        If DemomanChanged Then CompileModel("Demo")
        If MedicChanged Then CompileModel("Medic")
        If HeavyChanged Then CompileModel("Heavy")
        If PyroChanged Then CompileModel("Pyro")
        If SpyChanged Then CompileModel("Spy")
        If EngineerChanged Then CompileModel("Engineer")
    End Sub

    Private Sub CopyModels()
        Dialog1.InfoBox.AppendText("Looking for previous install... ")
        Try
            If Directory.Exists(TF2Path + "\tf\custom\compviewmodels") Then
                Dialog1.InfoBox.AppendText("Found. Deleting... ")
                My.Computer.FileSystem.DeleteDirectory(TF2Path + "\tf\custom\compviewmodels", FileIO.DeleteDirectoryOption.DeleteAllContents)
            Else
                Dialog1.InfoBox.AppendText("None found. ")
            End If
        Catch ex As Exception
            Dialog1.InfoBox.AppendText("ERROR! Install may not work. Continuing... ")
        Finally
            Dialog1.InfoBox.AppendText("Done." + vbNewLine)
        End Try
        Directory.CreateDirectory(TF2Path + "\tf\custom\compviewmodels")
        Directory.CreateDirectory(TF2Path + "\tf\custom\compviewmodels\models")
        Directory.CreateDirectory(TF2Path + "\tf\custom\compviewmodels\models\weapons")
        Directory.CreateDirectory(TF2Path + "\tf\custom\compviewmodels\models\weapons\c_models\")
        If ScoutChanged Then MoveModel("Scout")
        If SniperChanged Then MoveModel("Sniper")
        If SoldierChanged Then MoveModel("Soldier")
        If DemomanChanged Then MoveModel("Demo")
        If MedicChanged Then MoveModel("Medic")
        If HeavyChanged Then MoveModel("Heavy")
        If PyroChanged Then MoveModel("Pyro")
        If SpyChanged Then MoveModel("Spy")
        If EngineerChanged Then MoveModel("Engineer")
    End Sub

    Private Sub PackageMod()
        Dialog1.InfoBox.AppendText("Packaging mod... ")
        Dim Mdlstudio As New Process
        Mdlstudio.StartInfo = New ProcessStartInfo(TF2Path + "\bin\vpk.exe")
        Mdlstudio.StartInfo.Arguments = """" + TF2Path + "\tf\custom\compviewmodels"""
        Mdlstudio.StartInfo.CreateNoWindow = True
        Mdlstudio.StartInfo.UseShellExecute = False
        Mdlstudio.Start()
        Mdlstudio.WaitForExit()

        Dialog1.InfoBox.AppendText("Done." + vbNewLine)
    End Sub

    Private Sub CleanUp()
        Dialog1.InfoBox.AppendText("Cleaning up... ")
        Try
            If File.Exists(Path.GetTempPath + "\animations.zip") Then File.Delete(Path.GetTempPath + "\animations.zip")
            My.Computer.FileSystem.DeleteDirectory(TF2Path + "\tf\tmpcmpvm", FileIO.DeleteDirectoryOption.DeleteAllContents)
            My.Computer.FileSystem.DeleteDirectory(TF2Path + "\tf\custom\compviewmodels", FileIO.DeleteDirectoryOption.DeleteAllContents)
        Catch ex As Exception
            Dialog1.InfoBox.AppendText("ERROR! Continuing... ")
        Finally
            Dialog1.InfoBox.AppendText("Done." + vbNewLine)
        End Try
    End Sub

    Private Sub MoveModel(TfClass As String)
        Try
            If File.Exists(TF2Path + "\tf\models\weapons\c_models\c_" + TfClass.ToLower + "_animations.mdl") Then
                Dialog1.InfoBox.AppendText("Installing compiled model for class: " + TfClass + "... ")
                File.Move(TF2Path + "\tf\models\weapons\c_models\c_" + TfClass.ToLower + "_animations.mdl", TF2Path + "\tf\custom\compviewmodels\models\weapons\c_models\c_" + TfClass.ToLower + "_animations.mdl")
                Dialog1.InfoBox.AppendText("Done." + vbNewLine)
            Else
                Dialog1.InfoBox.AppendText("ERROR: Model for class " + TfClass + " did not compile correctly! Contact developer." + vbNewLine)
            End If
        Catch ex As Exception
            Dialog1.InfoBox.AppendText("ERROR: File found, but failed to install for " + TfClass + "! Contact developer." + vbNewLine)
        End Try
    End Sub

    Private Sub UninstallButton_Click(sender As Object, e As EventArgs) Handles UninstallButton.Click
        Dialog1.Show()
        Dialog1.InfoBox.Clear()
        Dialog1.InfoBox.AppendText("Looking for previous install... ")
        Try
            If File.Exists(TF2Path + "\tf\custom\compviewmodels.vpk") Then
                Dialog1.InfoBox.AppendText("Found. Deleting... ")
                My.Computer.FileSystem.DeleteFile(TF2Path + "\tf\custom\compviewmodels.vpk")
                Dialog1.InfoBox.AppendText("Done." + vbNewLine)
                PreloaderUninstall()
                Dialog1.InfoBox.AppendText(vbNewLine + "Mod uninstalled.")
                Dialog1.OK_Button.Enabled = True
            Else
                Dialog1.InfoBox.AppendText("None found. No need for uninstall." + vbNewLine)
                PreloaderUninstall()
                Dialog1.OK_Button.Enabled = True
            End If
        Catch ex As Exception
            Dialog1.InfoBox.AppendText("ERROR!")
            Dialog1.OK_Button.Enabled = True
        End Try
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles AboutButton.Click
        AboutBox1.ShowDialog()
    End Sub


    'Begin longass guide

    Private Sub ScoutHideScatterguns_CheckedChanged(sender As Object, e As EventArgs) Handles ScoutHideScatterguns.CheckedChanged, ScoutHideScatterguns.MouseEnter
        If ScoutHideScatterguns.Checked Then
            GuidePictureBox.Image = My.Resources.scout_blank
        Else
            GuidePictureBox.Image = My.Resources.scout_scattergun
        End If
    End Sub
    Private Sub ScoutHideDoubleBarrels_CheckedChanged(sender As Object, e As EventArgs) Handles ScoutHideDoubleBarrels.CheckedChanged, ScoutHideDoubleBarrels.MouseEnter
        If ScoutHideDoubleBarrels.Checked Then
            GuidePictureBox.Image = My.Resources.scout_blank
        Else
            GuidePictureBox.Image = My.Resources.scout_fan
        End If
    End Sub
    Private Sub ScoutHideShortstop_CheckedChanged(sender As Object, e As EventArgs) Handles ScoutHideShortstop.CheckedChanged, ScoutHideShortstop.MouseEnter
        If ScoutHideShortstop.Checked Then
            GuidePictureBox.Image = My.Resources.scout_blank
        Else
            GuidePictureBox.Image = My.Resources.scout_shortstop
        End If
    End Sub
    Private Sub ScoutHideShortstopPush_CheckedChanged(sender As Object, e As EventArgs) Handles ScoutHideShortstopPush.CheckedChanged, ScoutHideShortstopPush.MouseEnter
        If ScoutHideShortstopPush.Checked Then
            GuidePictureBox.Image = My.Resources.scout_blank
        Else
            GuidePictureBox.Image = My.Resources.scout_push
        End If
    End Sub
    Private Sub ScoutHidePrimaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles ScoutHidePrimaryInspect.CheckedChanged, ScoutHidePrimaryInspect.MouseEnter
        If ScoutHidePrimaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.scout_blank
        Else
            GuidePictureBox.Image = My.Resources.scout_scattergun_inspect
        End If
    End Sub
    Private Sub ScoutHidePistols_CheckedChanged(sender As Object, e As EventArgs) Handles ScoutHidePistols.CheckedChanged, ScoutHidePistols.MouseEnter
        If ScoutHidePistols.Checked Then
            GuidePictureBox.Image = My.Resources.scout_blank
        Else
            GuidePictureBox.Image = My.Resources.scout_pistol
        End If
    End Sub
    Private Sub ScoutHideThrowables_CheckedChanged(sender As Object, e As EventArgs) Handles ScoutHideThrowables.CheckedChanged, ScoutHideThrowables.MouseEnter
        If ScoutHideThrowables.Checked Then
            GuidePictureBox.Image = My.Resources.scout_blank
        Else
            GuidePictureBox.Image = My.Resources.scout_milk
        End If

    End Sub
    Private Sub ScoutHideDrinks_CheckedChanged(sender As Object, e As EventArgs) Handles ScoutHideDrinks.CheckedChanged, ScoutHideDrinks.MouseEnter
        If ScoutHideDrinks.Checked Then
            GuidePictureBox.Image = My.Resources.scout_blank
        Else
            GuidePictureBox.Image = My.Resources.scout_drink
        End If

    End Sub
    Private Sub ScoutHideSecondaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles ScoutHideSecondaryInspect.CheckedChanged, ScoutHideSecondaryInspect.MouseEnter
        If ScoutHideSecondaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.scout_blank
        Else
            GuidePictureBox.Image = My.Resources.scout_pistol_inspect
        End If

    End Sub
    Private Sub ScoutHideMelee_CheckedChanged(sender As Object, e As EventArgs) Handles ScoutHideMelee.CheckedChanged, ScoutHideMelee.MouseEnter
        If ScoutHideMelee.Checked Then
            GuidePictureBox.Image = My.Resources.scout_blank
        Else
            GuidePictureBox.Image = My.Resources.scout_melee
        End If

    End Sub
    Private Sub SniperHideRifles_CheckedChanged(sender As Object, e As EventArgs) Handles SniperHideRifles.CheckedChanged, SniperHideRifles.MouseEnter
        If SniperHideRifles.Checked Then
            GuidePictureBox.Image = My.Resources.sniper_blank
        Else
            GuidePictureBox.Image = My.Resources.sniper_sniperrifle
        End If

    End Sub
    Private Sub SniperHideHuntsman_CheckedChanged(sender As Object, e As EventArgs) Handles SniperHideHuntsman.CheckedChanged, SniperHideHuntsman.MouseEnter
        If SniperHideHuntsman.Checked Then
            GuidePictureBox.Image = My.Resources.sniper_blank
        Else
            GuidePictureBox.Image = My.Resources.sniper_huntsman
        End If

    End Sub
    Private Sub SniperHidePrimaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles SniperHidePrimaryInspect.CheckedChanged, SniperHidePrimaryInspect.MouseEnter
        If SniperHidePrimaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.sniper_blank
        Else
            GuidePictureBox.Image = My.Resources.sniper_sniperrifle_inspect
        End If

    End Sub
    Private Sub SniperHideSMGs_CheckedChanged(sender As Object, e As EventArgs) Handles SniperHideSMGs.CheckedChanged, SniperHideSMGs.MouseEnter
        If SniperHideSMGs.Checked Then
            GuidePictureBox.Image = My.Resources.sniper_blank
        Else
            GuidePictureBox.Image = My.Resources.sniper_smg
        End If

    End Sub
    Private Sub SniperHideThrowables_CheckedChanged(sender As Object, e As EventArgs) Handles SniperHideThrowables.CheckedChanged, SniperHideThrowables.MouseEnter
        If SniperHideThrowables.Checked Then
            GuidePictureBox.Image = My.Resources.sniper_blank
        Else
            GuidePictureBox.Image = My.Resources.sniper_jarate
        End If

    End Sub
    Private Sub SniperHideSecondaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles SniperHideSecondaryInspect.CheckedChanged, SniperHideSecondaryInspect.MouseEnter
        If SniperHideSecondaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.sniper_blank
        Else
            GuidePictureBox.Image = My.Resources.sniper_smg_inspect
        End If

    End Sub
    Private Sub SniperHideMelee_CheckedChanged(sender As Object, e As EventArgs) Handles SniperHideMelee.CheckedChanged, SniperHideMelee.MouseEnter
        If SniperHideMelee.Checked Then
            GuidePictureBox.Image = My.Resources.sniper_blank
        Else
            GuidePictureBox.Image = My.Resources.sniper_melee
        End If

    End Sub
    Private Sub SoldierHideRockets_CheckedChanged(sender As Object, e As EventArgs) Handles SoldierHideRockets.CheckedChanged, SoldierHideRockets.MouseEnter
        If SoldierHideRockets.Checked Then
            GuidePictureBox.Image = My.Resources.soldier_blank
        Else
            GuidePictureBox.Image = My.Resources.soldier_rocketlauncher
        End If

    End Sub
    Private Sub SoldierHideOriginal_CheckedChanged(sender As Object, e As EventArgs) Handles SoldierHideOriginal.CheckedChanged, SoldierHideOriginal.MouseEnter
        If SoldierHideOriginal.Checked Then
            GuidePictureBox.Image = My.Resources.soldier_blank
        Else
            GuidePictureBox.Image = My.Resources.soldier_original
        End If

    End Sub
    Private Sub SoldierHidePrimaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles SoldierHidePrimaryInspect.CheckedChanged, SoldierHidePrimaryInspect.MouseEnter
        If SoldierHidePrimaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.soldier_blank
        Else
            GuidePictureBox.Image = My.Resources.soldier_rocketlauncher_inspect
        End If

    End Sub
    Private Sub SoldierHideShotguns_CheckedChanged(sender As Object, e As EventArgs) Handles SoldierHideShotguns.CheckedChanged, SoldierHideShotguns.MouseEnter
        If SoldierHideShotguns.Checked Then
            GuidePictureBox.Image = My.Resources.soldier_blank
        Else
            GuidePictureBox.Image = My.Resources.soldier_shotgun
        End If

    End Sub
    Private Sub SoldierHideBanners_CheckedChanged(sender As Object, e As EventArgs) Handles SoldierHideBanners.CheckedChanged, SoldierHideBanners.MouseEnter
        If SoldierHideBanners.Checked Then
            GuidePictureBox.Image = My.Resources.soldier_blank
        Else
            GuidePictureBox.Image = My.Resources.soldier_banner
        End If

    End Sub
    Private Sub SoldierHideBison_CheckedChanged(sender As Object, e As EventArgs) Handles SoldierHideBison.CheckedChanged, SoldierHideBison.MouseEnter
        If SoldierHideBison.Checked Then
            GuidePictureBox.Image = My.Resources.soldier_blank
        Else
            GuidePictureBox.Image = My.Resources.soldier_bison
        End If

    End Sub
    Private Sub SoldierHideSecondaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles SoldierHideSecondaryInspect.CheckedChanged, SoldierHideSecondaryInspect.MouseEnter
        If SoldierHideSecondaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.soldier_blank
        Else
            GuidePictureBox.Image = My.Resources.soldier_shotgun_inspect
        End If

    End Sub
    Private Sub SoldierHideMelee_CheckedChanged(sender As Object, e As EventArgs) Handles SoldierHideMelee.CheckedChanged, SoldierHideMelee.MouseEnter
        If SoldierHideMelee.Checked Then
            GuidePictureBox.Image = My.Resources.soldier_blank
        Else
            GuidePictureBox.Image = My.Resources.soldier_melee
        End If

    End Sub
    Private Sub DemomanHideGrenades_CheckedChanged(sender As Object, e As EventArgs) Handles DemomanHideGrenades.CheckedChanged, DemomanHideGrenades.MouseEnter
        If DemomanHideGrenades.Checked Then
            GuidePictureBox.Image = My.Resources.demo_blank
        Else
            GuidePictureBox.Image = My.Resources.demo_grenadelauncher
        End If

    End Sub
    Private Sub DemomanHidePrimaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles DemomanHidePrimaryInspect.CheckedChanged, DemomanHidePrimaryInspect.MouseEnter
        If DemomanHidePrimaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.demo_blank
        Else
            GuidePictureBox.Image = My.Resources.demo_grenadelauncher_inspect
        End If

    End Sub
    Private Sub DemomanHideStickybombs_CheckedChanged(sender As Object, e As EventArgs) Handles DemomanHideStickybombs.CheckedChanged, DemomanHideStickybombs.MouseEnter
        If DemomanHideStickybombs.Checked Then
            GuidePictureBox.Image = My.Resources.demo_blank
        Else
            GuidePictureBox.Image = My.Resources.demo_stickybomb
        End If

    End Sub
    Private Sub DemomanHideSecondaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles DemomanHideSecondaryInspect.CheckedChanged, DemomanHideSecondaryInspect.MouseEnter
        If DemomanHideSecondaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.demo_blank
        Else
            GuidePictureBox.Image = My.Resources.demo_stickybomb_inspect
        End If

    End Sub
    Private Sub DemomanHideMelee_CheckedChanged(sender As Object, e As EventArgs) Handles DemomanHideMelee.CheckedChanged, DemomanHideMelee.MouseEnter
        If DemomanHideMelee.Checked Then
            GuidePictureBox.Image = My.Resources.demo_blank
        Else
            GuidePictureBox.Image = My.Resources.demo_melee
        End If

    End Sub
    Private Sub MedicHidePrimaries_CheckedChanged(sender As Object, e As EventArgs) Handles MedicHidePrimaries.CheckedChanged, MedicHidePrimaries.MouseEnter
        If MedicHidePrimaries.Checked Then
            GuidePictureBox.Image = My.Resources.medic_blank
        Else
            GuidePictureBox.Image = My.Resources.medic_syringegun
        End If

    End Sub
    Private Sub MedicHideMediguns_CheckedChanged(sender As Object, e As EventArgs) Handles MedicHideMediguns.CheckedChanged, MedicHideMediguns.MouseEnter
        If MedicHideMediguns.Checked Then
            GuidePictureBox.Image = My.Resources.medic_blank
        Else
            GuidePictureBox.Image = My.Resources.medic_medigun
        End If

    End Sub
    Private Sub MedicHideSecondaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles MedicHideSecondaryInspect.CheckedChanged, MedicHideSecondaryInspect.MouseEnter
        If MedicHideSecondaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.medic_blank
        Else
            GuidePictureBox.Image = My.Resources.medic_medigun_inspect
        End If

    End Sub
    Private Sub MedicHideMelee_CheckedChanged(sender As Object, e As EventArgs) Handles MedicHideMelee.CheckedChanged, MedicHideMelee.MouseEnter
        If MedicHideMelee.Checked Then
            GuidePictureBox.Image = My.Resources.medic_blank
        Else
            GuidePictureBox.Image = My.Resources.medic_melee
        End If

    End Sub
    Private Sub HeavyHideMiniguns_CheckedChanged(sender As Object, e As EventArgs) Handles HeavyHideMiniguns.CheckedChanged, HeavyHideMiniguns.MouseEnter
        If HeavyHideMiniguns.Checked Then
            GuidePictureBox.Image = My.Resources.heavy_blank
        Else
            GuidePictureBox.Image = My.Resources.heavy_minigun
        End If

    End Sub
    Private Sub HeavyHidePrimaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles HeavyHidePrimaryInspect.CheckedChanged, HeavyHidePrimaryInspect.MouseEnter
        If HeavyHidePrimaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.heavy_blank
        Else
            GuidePictureBox.Image = My.Resources.heavy_minigun_inspect
        End If

    End Sub
    Private Sub HeavyHideShotguns_CheckedChanged(sender As Object, e As EventArgs) Handles HeavyHideShotguns.CheckedChanged, HeavyHideShotguns.MouseEnter
        If HeavyHideShotguns.Checked Then
            GuidePictureBox.Image = My.Resources.heavy_blank
        Else
            GuidePictureBox.Image = My.Resources.heavy_shotgun
        End If

    End Sub
    Private Sub HeavyHideConsumables_CheckedChanged(sender As Object, e As EventArgs) Handles HeavyHideConsumables.CheckedChanged, HeavyHideConsumables.MouseEnter
        If HeavyHideConsumables.Checked Then
            GuidePictureBox.Image = My.Resources.heavy_blank
        Else
            GuidePictureBox.Image = My.Resources.heavy_sandvich
        End If

    End Sub
    Private Sub HeavyHideSecondaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles HeavyHideSecondaryInspect.CheckedChanged, HeavyHideSecondaryInspect.MouseEnter
        If HeavyHideSecondaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.heavy_blank
        Else
            GuidePictureBox.Image = My.Resources.heavy_shotgun_inspect
        End If

    End Sub
    Private Sub HeavyHideMelee_CheckedChanged(sender As Object, e As EventArgs) Handles HeavyHideMelee.CheckedChanged, HeavyHideMelee.MouseEnter
        If HeavyHideMelee.Checked Then
            GuidePictureBox.Image = My.Resources.heavy_blank
        Else
            GuidePictureBox.Image = My.Resources.heavy_fists
        End If

    End Sub
    Private Sub PyroHideFlamethrowers_CheckedChanged(sender As Object, e As EventArgs) Handles PyroHideFlamethrowers.CheckedChanged, PyroHideFlamethrowers.MouseEnter
        If PyroHideFlamethrowers.Checked Then
            GuidePictureBox.Image = My.Resources.pyro_blank
        Else
            GuidePictureBox.Image = My.Resources.pyro_flamethrower
        End If

    End Sub
    Private Sub PyroHidePrimaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles PyroHidePrimaryInspect.CheckedChanged, PyroHidePrimaryInspect.MouseEnter
        If PyroHidePrimaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.pyro_blank
        Else
            GuidePictureBox.Image = My.Resources.pyro_flamethrower_inspect
        End If

    End Sub
    Private Sub PyroHideShotguns_CheckedChanged(sender As Object, e As EventArgs) Handles PyroHideShotguns.CheckedChanged, PyroHideShotguns.MouseEnter
        If PyroHideShotguns.Checked Then
            GuidePictureBox.Image = My.Resources.pyro_blank
        Else
            GuidePictureBox.Image = My.Resources.pyro_shotgun
        End If

    End Sub
    Private Sub PyroHideFlareGuns_CheckedChanged(sender As Object, e As EventArgs) Handles PyroHideFlareGuns.CheckedChanged, PyroHideFlareGuns.MouseEnter
        If PyroHideFlareGuns.Checked Then
            GuidePictureBox.Image = My.Resources.pyro_blank
        Else
            GuidePictureBox.Image = My.Resources.pyro_flaregun
        End If

    End Sub
    Private Sub PyroHideSecondaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles PyroHideSecondaryInspect.CheckedChanged, PyroHideSecondaryInspect.MouseEnter
        If PyroHideSecondaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.pyro_blank
        Else
            GuidePictureBox.Image = My.Resources.pyro_shotgun_inspect
        End If

    End Sub
    Private Sub PyroHideMelee_CheckedChanged(sender As Object, e As EventArgs) Handles PyroHideMelee.CheckedChanged, PyroHideMelee.MouseEnter
        If PyroHideMelee.Checked Then
            GuidePictureBox.Image = My.Resources.pyro_blank
        Else
            GuidePictureBox.Image = My.Resources.pyro_melee
        End If

    End Sub
    Private Sub SpyHideRevolvers_CheckedChanged(sender As Object, e As EventArgs) Handles SpyHideRevolvers.CheckedChanged, SpyHideRevolvers.MouseEnter
        If SpyHideRevolvers.Checked Then
            GuidePictureBox.Image = My.Resources.spy_blank
        Else
            GuidePictureBox.Image = My.Resources.spy_revolver
        End If

    End Sub
    Private Sub SpyHidePrimaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles SpyHidePrimaryInspect.CheckedChanged, SpyHidePrimaryInspect.MouseEnter
        If SpyHidePrimaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.spy_blank
        Else
            GuidePictureBox.Image = My.Resources.spy_revolver_inspect
        End If

    End Sub
    Private Sub SpyHideSappers_CheckedChanged(sender As Object, e As EventArgs) Handles SpyHideSappers.CheckedChanged, SpyHideSappers.MouseEnter
        If SpyHideSappers.Checked Then
            GuidePictureBox.Image = My.Resources.spy_blank
        Else
            GuidePictureBox.Image = My.Resources.spy_sapper
        End If

    End Sub
    Private Sub SpyHideMelee_CheckedChanged(sender As Object, e As EventArgs) Handles SpyHideMelee.CheckedChanged, SpyHideMelee.MouseEnter
        If SpyHideMelee.Checked Then
            GuidePictureBox.Image = My.Resources.spy_blank
        Else
            GuidePictureBox.Image = My.Resources.spy_knife
        End If

    End Sub
    Private Sub SpyHideMeleeInspect_CheckedChanged(sender As Object, e As EventArgs) Handles SpyHideMeleeInspect.CheckedChanged, SpyHideMeleeInspect.MouseEnter
        If SpyHideMeleeInspect.Checked Then
            GuidePictureBox.Image = My.Resources.spy_blank
        Else
            GuidePictureBox.Image = My.Resources.spy_knife_inspect
        End If

    End Sub
    Private Sub EngineerHideShotguns_CheckedChanged(sender As Object, e As EventArgs) Handles EngineerHideShotguns.CheckedChanged, EngineerHideShotguns.MouseEnter
        If EngineerHideShotguns.Checked Then
            GuidePictureBox.Image = My.Resources.engineer_blank
        Else
            GuidePictureBox.Image = My.Resources.engineer_shotgun
        End If

    End Sub
    Private Sub EngineerHidePomson_CheckedChanged(sender As Object, e As EventArgs) Handles EngineerHidePomson.CheckedChanged, EngineerHidePomson.MouseEnter
        If EngineerHidePomson.Checked Then
            GuidePictureBox.Image = My.Resources.engineer_blank
        Else
            GuidePictureBox.Image = My.Resources.engineer_pomson
        End If

    End Sub
    Private Sub EngineerHidePrimaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles EngineerHidePrimaryInspect.CheckedChanged, EngineerHidePrimaryInspect.MouseEnter
        If EngineerHidePrimaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.engineer_blank
        Else
            GuidePictureBox.Image = My.Resources.engineer_shotgun_inspect
        End If

    End Sub
    Private Sub EngineerHidePistols_CheckedChanged(sender As Object, e As EventArgs) Handles EngineerHidePistols.CheckedChanged, EngineerHidePistols.MouseEnter
        If EngineerHidePistols.Checked Then
            GuidePictureBox.Image = My.Resources.engineer_blank
        Else
            GuidePictureBox.Image = My.Resources.engineer_pistol
        End If

    End Sub
    Private Sub EngineerHideWrangler_CheckedChanged(sender As Object, e As EventArgs) Handles EngineerHideWrangler.CheckedChanged, EngineerHideWrangler.MouseEnter
        If EngineerHideWrangler.Checked Then
            GuidePictureBox.Image = My.Resources.engineer_blank
        Else
            GuidePictureBox.Image = My.Resources.engineer_wrangler
        End If

    End Sub
    Private Sub EngineerHideSecondaryInspect_CheckedChanged(sender As Object, e As EventArgs) Handles EngineerHideSecondaryInspect.CheckedChanged, EngineerHideSecondaryInspect.MouseEnter
        If EngineerHideSecondaryInspect.Checked Then
            GuidePictureBox.Image = My.Resources.engineer_blank
        Else
            GuidePictureBox.Image = My.Resources.engineer_pistol_inspect
        End If

    End Sub
    Private Sub EngineerHideWrenches_CheckedChanged(sender As Object, e As EventArgs) Handles EngineerHideWrenches.CheckedChanged, EngineerHideWrenches.MouseEnter
        If EngineerHideWrenches.Checked Then
            GuidePictureBox.Image = My.Resources.engineer_blank
        Else
            GuidePictureBox.Image = My.Resources.engineer_wrench
        End If

    End Sub
    Private Sub EngineerHideGunslinger_CheckedChanged(sender As Object, e As EventArgs) Handles EngineerHideGunslinger.CheckedChanged, EngineerHideGunslinger.MouseEnter
        If EngineerHideGunslinger.Checked Then
            GuidePictureBox.Image = My.Resources.engineer_blank
        Else
            GuidePictureBox.Image = My.Resources.engineer_gunslinger
        End If

    End Sub
    Private Sub EngineerHideMeleeInspect_CheckedChanged(sender As Object, e As EventArgs) Handles EngineerHideMeleeInspect.CheckedChanged, EngineerHideMeleeInspect.MouseEnter
        If EngineerHideMeleeInspect.Checked Then
            GuidePictureBox.Image = My.Resources.engineer_blank
        Else
            GuidePictureBox.Image = My.Resources.engineer_wrench_inspect
        End If

    End Sub
    Private Sub EngineerHidePDA_CheckedChanged(sender As Object, e As EventArgs) Handles EngineerHidePDA.CheckedChanged, EngineerHidePDA.MouseEnter
        If EngineerHidePDA.Checked Then
            GuidePictureBox.Image = My.Resources.engineer_blank
        Else
            GuidePictureBox.Image = My.Resources.engineer_pda_build
        End If

    End Sub
    Private Sub EngineerHideToolbox_CheckedChanged(sender As Object, e As EventArgs) Handles EngineerHideToolbox.CheckedChanged, EngineerHideToolbox.MouseEnter
        If EngineerHideToolbox.Checked Then
            GuidePictureBox.Image = My.Resources.engineer_blank
        Else
            GuidePictureBox.Image = My.Resources.engineer_toolbox
        End If

    End Sub

    'End longass guide

    Sub PreloaderInstall()
        Dialog1.InfoBox.AppendText("Installing preloader... ")
        Dim FBytes() As Byte = My.Resources.preload_room
        Try
            If System.IO.File.Exists(TF2Path + "\tf\maps\preload_room.bsp") = False Then
                My.Computer.FileSystem.WriteAllBytes(TF2Path + "\tf\maps\preload_room.bsp", FBytes, True)
            End If
        Catch ex As Exception
            Dialog1.InfoBox.AppendText("ERROR!")
            Dialog1.OK_Button.Enabled = True
            Exit Sub
        End Try
        Dialog1.InfoBox.AppendText("Done." + vbNewLine)

        InputBox.Clear()
        Dialog1.InfoBox.AppendText("Editing autoexec... ")

        Dim AutoexecPath As String = TF2Path + "\tf\cfg\autoexec.cfg"
        Try
            If System.IO.File.Exists(AutoexecPath) = False Then
                System.IO.File.Create(AutoexecPath).Dispose()
            End If
        Catch ex As Exception
            Dialog1.InfoBox.AppendText("ERROR!")
            Dialog1.OK_Button.Enabled = True
            Exit Sub
        End Try
        Using sr As New StreamReader(AutoexecPath)
            While Not sr.EndOfStream
                InputBox.Text = sr.ReadToEnd
            End While
        End Using

        For Each line As String In InputBox.Lines
            If line.Contains("map_background preload_room; wait 10; disconnect") Then
                Dialog1.InfoBox.AppendText("No edits necessary." + vbNewLine)
                Exit Sub
            End If
        Next
        InputBox.AppendText(vbNewLine + "map_background preload_room; wait 10; disconnect")

        Dim file As System.IO.StreamWriter = My.Computer.FileSystem.OpenTextFileWriter(AutoexecPath, False)
        file.Write(InputBox.Text)
        file.Close()
        InputBox.Clear()
        Dialog1.InfoBox.AppendText("Done." + vbNewLine)
    End Sub

    Sub PreloaderUninstall()
        Try
            If System.IO.File.Exists(TF2Path + "\tf\maps\preload_room.bsp") Then
                Dialog1.InfoBox.AppendText("Preload map found. Deleting... ")
                System.IO.File.Delete(TF2Path + "\tf\maps\preload_room.bsp")
                Dialog1.InfoBox.AppendText("Done." + vbNewLine)
            End If
        Catch ex As Exception
            Dialog1.InfoBox.AppendText("ERROR!")
            Dialog1.OK_Button.Enabled = True
            Exit Sub
        End Try

        InputBox.Clear()
        Dialog1.InfoBox.AppendText("Cleaning up autoexec... ")

        Dim AutoexecPath As String = TF2Path + "\tf\cfg\autoexec.cfg"
        Try
            If System.IO.File.Exists(AutoexecPath) = False Then
                System.IO.File.Create(AutoexecPath).Dispose()
            End If
        Catch ex As Exception
            Dialog1.InfoBox.AppendText("ERROR!")
            Dialog1.OK_Button.Enabled = True
            Exit Sub
        End Try
        Using sr As New StreamReader(AutoexecPath)
            While Not sr.EndOfStream
                InputBox.Text = sr.ReadToEnd
            End While
        End Using

        Dim file As System.IO.StreamWriter = My.Computer.FileSystem.OpenTextFileWriter(AutoexecPath, False)
        file.Write(InputBox.Text.Replace("map_background preload_room; wait 10; disconnect", ""))
        file.Close()
        InputBox.Clear()
        Dialog1.InfoBox.AppendText("Done." + vbNewLine)
    End Sub

    'Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
    '    Timer1.Stop()
    '    GuidePictureBox.Image = My.Resources.compviewmodelbannersmall
    'End Sub

    'Private Sub Form_MouseLeave(sender As Object, e As EventArgs) Handles MyBase.MouseLeave
    '    Timer1.Start()
    'End Sub

    'Private Sub Form_MouseEnter(sender As Object, e As EventArgs) Handles MyBase.MouseEnter
    '    Timer1.Stop()
    'End Sub
End Class
