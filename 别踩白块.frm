VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00C0C0C0&
   Caption         =   "别踩白块"
   ClientHeight    =   6405
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4575
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6405
   ScaleWidth      =   4575
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton CommandOK 
      Caption         =   "确定！"
      Height          =   615
      Left            =   1440
      TabIndex        =   51
      Top             =   4200
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H0080FF80&
      Caption         =   "键盘控制"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1800
      TabIndex        =   4
      Top             =   2160
      Value           =   -1  'True
      Visible         =   0   'False
      Width           =   2055
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H0080FF80&
      Caption         =   "鼠标控制"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1800
      TabIndex        =   48
      Top             =   3120
      Visible         =   0   'False
      Width           =   2055
   End
   Begin VB.CommandButton CommandR 
      Caption         =   "重玩！"
      Height          =   615
      Left            =   1440
      TabIndex        =   11
      Top             =   4200
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.CommandButton CommandM 
      BackColor       =   &H00C0C0C0&
      Caption         =   "菜单！"
      Height          =   615
      Left            =   1440
      TabIndex        =   44
      Top             =   5040
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   150
      Left            =   4080
      Top             =   240
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   120
      Top             =   240
   End
   Begin VB.Label LabelCredit 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
      Caption         =   "DoNotStepOnWhite   NaiveGames   Copyright2014"
      Height          =   255
      Left            =   120
      TabIndex        =   60
      Top             =   6120
      Width           =   4335
   End
   Begin VB.Label LabelSS 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1680
      TabIndex        =   59
      Top             =   120
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label LabelDown 
      BackColor       =   &H00C0C0C0&
      Height          =   855
      Left            =   600
      TabIndex        =   53
      Top             =   6000
      Width           =   3375
   End
   Begin VB.Label LabelUp 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
      Height          =   735
      Left            =   600
      TabIndex        =   54
      Top             =   0
      Visible         =   0   'False
      Width           =   3375
   End
   Begin VB.Label Label54 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   3120
      TabIndex        =   58
      Top             =   -600
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label Label53 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   2280
      TabIndex        =   57
      Top             =   -600
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label Label52 
      BackColor       =   &H00000000&
      Height          =   1335
      Left            =   1440
      TabIndex        =   56
      Top             =   -600
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label Label51 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   600
      TabIndex        =   55
      Top             =   -600
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label LabelIn 
      Alignment       =   2  'Center
      BackColor       =   &H0080FF80&
      Caption         =   "设置"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1080
      TabIndex        =   52
      Top             =   960
      Visible         =   0   'False
      Width           =   2415
      WordWrap        =   -1  'True
   End
   Begin VB.Label LabelControl 
      Alignment       =   2  'Center
      BackColor       =   &H0080FF80&
      Caption         =   "控制"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   50
      Top             =   2640
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label LabelT 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "敬请期待"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   1
      Left            =   600
      TabIndex        =   47
      Top             =   4920
      Width           =   1695
   End
   Begin VB.Label LabelT 
      BackColor       =   &H00000000&
      Height          =   1800
      Index           =   0
      Left            =   600
      TabIndex        =   45
      Top             =   4200
      Width           =   1695
   End
   Begin VB.Label LabelI 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "敬请期待"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   2280
      TabIndex        =   49
      Top             =   4920
      Width           =   1695
   End
   Begin VB.Label LabelI 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00FFFFFF&
      Height          =   1800
      Index           =   0
      Left            =   2280
      TabIndex        =   46
      Top             =   4200
      Width           =   1695
   End
   Begin VB.Label LabelA 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "街机"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   1
      Left            =   2400
      TabIndex        =   40
      ToolTipText     =   "跟上黑块的节奏，看你能走几步！"
      Top             =   3240
      Width           =   1455
   End
   Begin VB.Label LabelR 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "接力"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Index           =   1
      Left            =   960
      TabIndex        =   39
      ToolTipText     =   "在规定时间内到达终点以获得更多的时间，看你能撑到第几轮？"
      Top             =   3240
      Width           =   975
   End
   Begin VB.Label LabelA 
      BackColor       =   &H00000000&
      Height          =   1760
      Index           =   0
      Left            =   2280
      TabIndex        =   38
      ToolTipText     =   "跟上黑块的节奏，看你能走几步！"
      Top             =   2480
      Width           =   1695
   End
   Begin VB.Label LabelR 
      BackColor       =   &H00FFFFFF&
      Height          =   1760
      Index           =   0
      Left            =   600
      TabIndex        =   37
      ToolTipText     =   "在规定时间内到达终点以获得更多的时间，看你能撑到第几轮！"
      Top             =   2480
      Width           =   1695
   End
   Begin VB.Label LabelC 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "经典"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Index           =   0
      Left            =   960
      TabIndex        =   30
      ToolTipText     =   "以最快的速度到达终点！"
      Top             =   1440
      Width           =   975
   End
   Begin VB.Label LabelZ 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      Caption         =   "禅"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   2640
      TabIndex        =   32
      ToolTipText     =   "在规定的三十秒内,看你能走几步！"
      Top             =   1440
      Width           =   975
   End
   Begin VB.Label LabelC 
      BackColor       =   &H00000000&
      Height          =   1760
      Index           =   1
      Left            =   600
      TabIndex        =   29
      ToolTipText     =   "以最快的速度到达终点！"
      Top             =   720
      Width           =   1695
   End
   Begin VB.Label LabelZ 
      BackColor       =   &H00FFFFFF&
      Height          =   1760
      Index           =   0
      Left            =   2280
      TabIndex        =   31
      ToolTipText     =   "在规定的三十秒内,看你能走几步！"
      Top             =   720
      Width           =   1695
   End
   Begin VB.Label LabelS 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
      Caption         =   "score"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   960
      TabIndex        =   28
      Top             =   3000
      Visible         =   0   'False
      Width           =   2655
   End
   Begin VB.Label LabelM 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
      Caption         =   "mode"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   24
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   960
      TabIndex        =   27
      Top             =   1080
      Visible         =   0   'False
      Width           =   2655
   End
   Begin VB.Label LabelPAUSE 
      BackColor       =   &H00C0C0C0&
      Height          =   5295
      Left            =   600
      TabIndex        =   26
      Top             =   720
      Visible         =   0   'False
      Width           =   3375
   End
   Begin VB.Label LabelP3 
      BackColor       =   &H0080FF80&
      Height          =   75
      Left            =   2280
      TabIndex        =   43
      Top             =   720
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label LabelP2 
      BackColor       =   &H0080FF80&
      Height          =   75
      Left            =   1440
      TabIndex        =   42
      Top             =   720
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label LabelP1 
      BackColor       =   &H0080FF80&
      Height          =   75
      Left            =   600
      TabIndex        =   41
      Top             =   720
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.Label LabelS2 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "开始"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   1560
      TabIndex        =   36
      Top             =   3720
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label LabelS3 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "开始"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   2400
      TabIndex        =   35
      Top             =   3720
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label LabelS4 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "开始"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   3240
      TabIndex        =   34
      Top             =   3720
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label LabelS1 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Caption         =   "开始"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   855
      Left            =   720
      TabIndex        =   33
      Top             =   3720
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Label Labelmiao 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
      Caption         =   "'''"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3120
      TabIndex        =   25
      Top             =   120
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Label Labelfen 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
      Caption         =   "''"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1920
      TabIndex        =   24
      Top             =   120
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.Label LabelT2 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2280
      TabIndex        =   23
      Top             =   120
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label LabelT1 
      Alignment       =   2  'Center
      BackColor       =   &H00C0C0C0&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1080
      TabIndex        =   22
      Top             =   120
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H0080FF80&
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   855
      Left            =   720
      TabIndex        =   21
      Top             =   4920
      Width           =   615
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H0080FF80&
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   855
      Left            =   1560
      TabIndex        =   20
      Top             =   4920
      Width           =   615
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H0080FF80&
      Caption         =   "4"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   855
      Left            =   3240
      TabIndex        =   19
      Top             =   4920
      Width           =   615
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H0080FF80&
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   855
      Left            =   2400
      TabIndex        =   18
      Top             =   4920
      Width           =   615
   End
   Begin VB.Label Label42 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   1440
      TabIndex        =   17
      Top             =   720
      Width           =   855
   End
   Begin VB.Label Label32 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   1440
      TabIndex        =   16
      Top             =   2040
      Width           =   855
   End
   Begin VB.Label Label31 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   600
      TabIndex        =   15
      Top             =   2040
      Width           =   855
   End
   Begin VB.Label Label44 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   3120
      TabIndex        =   14
      Top             =   720
      Width           =   855
   End
   Begin VB.Label Label33 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   2280
      TabIndex        =   13
      Top             =   2040
      Width           =   855
   End
   Begin VB.Label Label34 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   3120
      TabIndex        =   12
      Top             =   2040
      Width           =   855
   End
   Begin VB.Label Label41 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   600
      TabIndex        =   10
      Top             =   720
      Width           =   855
   End
   Begin VB.Label Label21 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   600
      TabIndex        =   9
      Top             =   3360
      Width           =   855
   End
   Begin VB.Label Label22 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   1440
      TabIndex        =   8
      Top             =   3360
      Width           =   855
   End
   Begin VB.Label Label23 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   2280
      TabIndex        =   7
      Top             =   3360
      Width           =   855
   End
   Begin VB.Label Label24 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   3120
      TabIndex        =   6
      Top             =   3360
      Width           =   855
   End
   Begin VB.Label Label11 
      BackColor       =   &H0080FF80&
      Height          =   1335
      Left            =   600
      TabIndex        =   5
      Top             =   4680
      Width           =   855
   End
   Begin VB.Label Label12 
      BackColor       =   &H0080FF80&
      Height          =   1335
      Left            =   1440
      TabIndex        =   3
      Top             =   4680
      Width           =   855
   End
   Begin VB.Label Label13 
      BackColor       =   &H0080FF80&
      Height          =   1335
      Left            =   2280
      TabIndex        =   2
      Top             =   4680
      Width           =   855
   End
   Begin VB.Label Label14 
      BackColor       =   &H0080FF80&
      Height          =   1335
      Left            =   3120
      TabIndex        =   1
      Top             =   4680
      Width           =   855
   End
   Begin VB.Label Label43 
      BackColor       =   &H00FFFFFF&
      Height          =   1335
      Left            =   2280
      TabIndex        =   0
      Top             =   720
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer
Dim b As Integer
Dim c As Integer
Dim d As Integer
Dim cr As Integer
Dim Limit As Integer
Dim Speed As Single
Dim T1 As Integer
Dim T2 As Integer
Dim Mouse As Integer
Dim Keys As Integer
Dim Start As Integer
Dim Classic As Integer
Dim Zen As Integer
Dim Relay As Integer
Dim Arcade As Integer
Dim Topspeed As Integer

Private Sub CommandM_Click()
LabelC(0).Visible = True
LabelC(1).Visible = True
LabelZ(0).Visible = True
LabelZ(1).Visible = True
LabelR(0).Visible = True
LabelR(1).Visible = True
LabelA(0).Visible = True
LabelA(1).Visible = True
LabelT(0).Visible = True
LabelT(1).Visible = True
LabelI(0).Visible = True
LabelI(1).Visible = True
Label11.BackColor = &H80FF80
Label12.BackColor = &H80FF80
Label13.BackColor = &H80FF80
Label14.BackColor = &H80FF80
Label11.Top = 4680
Label11.Left = 600
Label12.Top = 4680
Label12.Left = 1440
Label13.Top = 4680
Label13.Left = 2280
Label14.Top = 4680
Label14.Left = 3120
Label21.Top = 3360
Label21.Left = 600
Label22.Top = 3360
Label22.Left = 1440
Label23.Top = 3360
Label23.Left = 2280
Label24.Top = 3360
Label24.Left = 3120
Label31.Top = 2040
Label31.Left = 600
Label32.Top = 2040
Label32.Left = 1440
Label33.Top = 2040
Label33.Left = 2280
Label34.Top = 2040
Label34.Left = 3120
Label41.Top = 720
Label41.Left = 600
Label42.Top = 720
Label42.Left = 1440
Label43.Top = 720
Label43.Left = 2280
Label44.Top = 720
Label44.Left = 3120
LabelUp.Visible = False
LabelSS.Visible = False
Label51.Visible = False
Label52.Visible = False
Label53.Visible = False
Label54.Visible = False
d = 0
Classic = 0
Zen = 0
Relay = 0
Limit = 50
cr = 0
Start = 0
c = 0
T1 = 0
T2 = 0
Option1.Visible = False
Option2.Visible = False
CommandOK.Visible = False
LabelControl.Visible = False
LabelIn.Visible = False
LabelSS.Visible = False
Timer1.Enabled = False
LabelT1.Visible = False
LabelT2.Visible = False
Labelfen.Visible = False
Labelmiao.Visible = False
LabelPAUSE.Visible = False
LabelS.Visible = False
LabelM.Visible = False
CommandR.Visible = False
CommandM.Visible = False
c = 0
T2 = 0
LabelT1 = T1
LabelT2 = T2
End Sub

Private Sub CommandOK_Click()
If Option1.Value = True Then
  Mouse = 0
  Keys = 1
End If
If Option2.Value = True Then
  Mouse = 1
  Keys = 0
End If
Option1.Visible = False
Option2.Visible = False
CommandOK.Visible = False
CommandM.Visible = False
LabelControl.Visible = False
LabelIn.Visible = False
LabelPAUSE.Visible = False
LabelC(0).Visible = False
LabelC(1).Visible = False
LabelZ(0).Visible = False
LabelZ(1).Visible = False
LabelR(0).Visible = False
LabelR(1).Visible = False
LabelA(0).Visible = False
LabelA(1).Visible = False
LabelT(0).Visible = False
LabelT(1).Visible = False
LabelI(0).Visible = False
LabelI(1).Visible = False
LabelS1.Visible = False
LabelS2.Visible = False
LabelS3.Visible = False
LabelS4.Visible = False
If Classic = 1 Then
If Keys = 1 Then
  LabelT1.Visible = True
  LabelT2.Visible = True
  Labelfen.Visible = True
  Labelmiao.Visible = True
  Label1.Visible = True
  Label2.Visible = True
  Label3.Visible = True
  Label4.Visible = True
End If
If Mouse = 1 Then
  LabelT1.Visible = True
  LabelT2.Visible = True
  Labelfen.Visible = True
  Labelmiao.Visible = True
  Label1.Visible = False
  Label2.Visible = False
  Label3.Visible = False
  Label4.Visible = False
End If
End If

If Zen = 1 Then
If Keys = 1 Then
  LabelT1 = 30
  T1 = 30
  LabelT1.Visible = True
  LabelT2.Visible = True
  Labelfen.Visible = True
  Labelmiao.Visible = True
  Label1.Visible = True
  Label2.Visible = True
  Label3.Visible = True
  Label4.Visible = True
End If
If Mouse = 1 Then
  LabelT1 = 30
  T1 = 30
  LabelT1.Visible = True
  LabelT2.Visible = True
  Labelfen.Visible = True
  Labelmiao.Visible = True
  Label1.Visible = False
  Label2.Visible = False
  Label3.Visible = False
  Label4.Visible = False
End If
End If

If Relay = 1 Then
If Keys = 1 Then
  LabelT1 = 20
  T1 = 20
  LabelT1.Visible = True
  LabelT2.Visible = True
  Labelfen.Visible = True
  Labelmiao.Visible = True
  Label1.Visible = True
  Label2.Visible = True
  Label3.Visible = True
  Label4.Visible = True
End If
If Mouse = 1 Then
  LabelT1 = 20
  T1 = 20
  LabelT1.Visible = True
  LabelT2.Visible = True
  Labelfen.Visible = True
  Labelmiao.Visible = True
  Label1.Visible = False
  Label2.Visible = False
  Label3.Visible = False
  Label4.Visible = False
End If
End If

If Arcade = 1 Then
Label51.Top = -600
Label51.Left = 600
Label52.Top = -600
Label52.Left = 1440
Label53.Top = -600
Label53.Left = 2280
Label54.Top = -600
Label54.Left = 3120
Label51.Visible = True
Label52.Visible = True
Label53.Visible = True
Label54.Visible = True
LabelSS.Visible = True
c = 0
LabelSS = c
LabelT1.Visible = False
LabelT2.Visible = False
Labelfen.Visible = False
Labelmiao.Visible = False
Label1.Visible = False
Label2.Visible = False
Label3.Visible = False
Label4.Visible = False
LabelUp.Visible = True
End If
If Rnd <= 0.25 Then
  LabelS1.Visible = True
  Label21.BackColor = &H0&
  Label22.BackColor = &HFFFFFF
  Label23.BackColor = &HFFFFFF
  Label24.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    LabelS2.Visible = True
    Label21.BackColor = &HFFFFFF
    Label22.BackColor = &H0&
    Label23.BackColor = &HFFFFFF
    Label24.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      LabelS3.Visible = True
      Label21.BackColor = &HFFFFFF
      Label22.BackColor = &HFFFFFF
      Label23.BackColor = &H0&
      Label24.BackColor = &HFFFFFF
    Else
      LabelS4.Visible = True
      Label21.BackColor = &HFFFFFF
      Label22.BackColor = &HFFFFFF
      Label23.BackColor = &HFFFFFF
      Label24.BackColor = &H0&
    End If
  End If
End If
If Rnd <= 0.25 Then
  Label31.BackColor = &H0&
  Label32.BackColor = &HFFFFFF
  Label33.BackColor = &HFFFFFF
  Label34.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label31.BackColor = &HFFFFFF
    Label32.BackColor = &H0&
    Label33.BackColor = &HFFFFFF
    Label34.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label31.BackColor = &HFFFFFF
      Label32.BackColor = &HFFFFFF
      Label33.BackColor = &H0&
      Label34.BackColor = &HFFFFFF
    Else
      Label31.BackColor = &HFFFFFF
      Label32.BackColor = &HFFFFFF
      Label33.BackColor = &HFFFFFF
      Label34.BackColor = &H0&
    End If
  End If
End If
If Rnd <= 0.25 Then
  Label41.BackColor = &H0&
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label41.BackColor = &HFFFFFF
    Label42.BackColor = &H0&
    Label43.BackColor = &HFFFFFF
    Label44.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label41.BackColor = &HFFFFFF
      Label42.BackColor = &HFFFFFF
      Label43.BackColor = &H0&
      Label44.BackColor = &HFFFFFF
    Else
      Label41.BackColor = &HFFFFFF
      Label42.BackColor = &HFFFFFF
      Label43.BackColor = &HFFFFFF
      Label44.BackColor = &H0&
    End If
  End If
End If
If Rnd <= 0.25 Then
  Label51.BackColor = &H0&
  Label52.BackColor = &HFFFFFF
  Label53.BackColor = &HFFFFFF
  Label54.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label51.BackColor = &HFFFFFF
    Label52.BackColor = &H0&
    Label53.BackColor = &HFFFFFF
    Label54.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label51.BackColor = &HFFFFFF
      Label52.BackColor = &HFFFFFF
      Label53.BackColor = &H0&
      Label54.BackColor = &HFFFFFF
    Else
      Label51.BackColor = &HFFFFFF
      Label52.BackColor = &HFFFFFF
      Label53.BackColor = &HFFFFFF
      Label54.BackColor = &H0&
    End If
  End If
End If
End Sub

Private Sub CommandR_Click()
Label11.BackColor = &H80FF80
Label12.BackColor = &H80FF80
Label13.BackColor = &H80FF80
Label14.BackColor = &H80FF80
Label11.Top = 4680
Label11.Left = 600
Label12.Top = 4680
Label12.Left = 1440
Label13.Top = 4680
Label13.Left = 2280
Label14.Top = 4680
Label14.Left = 3120
Label21.Top = 3360
Label21.Left = 600
Label22.Top = 3360
Label22.Left = 1440
Label23.Top = 3360
Label23.Left = 2280
Label24.Top = 3360
Label24.Left = 3120
Label31.Top = 2040
Label31.Left = 600
Label32.Top = 2040
Label32.Left = 1440
Label33.Top = 2040
Label33.Left = 2280
Label34.Top = 2040
Label34.Left = 3120
Label41.Top = 720
Label41.Left = 600
Label42.Top = 720
Label42.Left = 1440
Label43.Top = 720
Label43.Left = 2280
Label44.Top = 720
Label44.Left = 3120
Label51.Top = -600
Label51.Left = 600
Label52.Top = -600
Label52.Left = 1440
Label53.Top = -600
Label53.Left = 2280
Label54.Top = -600
Label54.Left = 3120
If Classic = 2 Or Classic = 1 Then
  T1 = 0
  Classic = 1
End If
If Zen = 2 Or Zen = 1 Then
  T1 = 30
  Zen = 1
End If
If Relay = 2 Or Relay = 1 Then
  T1 = 20
  Relay = 1
  Limit = 50
  cr = 0
End If
If Arcade = 2 Or Arcade = 1 Then
  Arcade = 1
  LabelSS.Visible = True
  Label51.Visible = True
  Label52.Visible = True
  Label53.Visible = True
  Label54.Visible = True
End If
  d = 0
  Start = 0
  c = 0
  T2 = 0
  LabelSS = c
  Timer1.Enabled = False
  LabelT1.Visible = True
  LabelT2.Visible = True
  Labelfen.Visible = True
  Labelmiao.Visible = True
  LabelPAUSE.Visible = False
  LabelM.Visible = False
  LabelS.Visible = False
  CommandR.Visible = False
  CommandM.Visible = False
If Keys = 1 Then
  Label1.Visible = True
  Label2.Visible = True
  Label3.Visible = True
  Label4.Visible = True
End If
If Mouse = 1 Then
  Label1.Visible = False
  Label2.Visible = False
  Label3.Visible = False
  Label4.Visible = False
End If
  c = 0
  T2 = 0
  Label11.BackColor = &H80FF80
  Label12.BackColor = &H80FF80
  Label13.BackColor = &H80FF80
  Label14.BackColor = &H80FF80
  LabelT1 = T1
  LabelT2 = T2
  
Randomize
If Rnd <= 0.25 Then
  LabelS1.Visible = True
  Label21.BackColor = &H0&
  Label22.BackColor = &HFFFFFF
  Label23.BackColor = &HFFFFFF
  Label24.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    LabelS2.Visible = True
    Label21.BackColor = &HFFFFFF
    Label22.BackColor = &H0&
    Label23.BackColor = &HFFFFFF
    Label24.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      LabelS3.Visible = True
      Label21.BackColor = &HFFFFFF
      Label22.BackColor = &HFFFFFF
      Label23.BackColor = &H0&
      Label24.BackColor = &HFFFFFF
    Else
      LabelS4.Visible = True
      Label21.BackColor = &HFFFFFF
      Label22.BackColor = &HFFFFFF
      Label23.BackColor = &HFFFFFF
      Label24.BackColor = &H0&
    End If
  End If
End If
If Rnd <= 0.25 Then
  Label31.BackColor = &H0&
  Label32.BackColor = &HFFFFFF
  Label33.BackColor = &HFFFFFF
  Label34.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label31.BackColor = &HFFFFFF
    Label32.BackColor = &H0&
    Label33.BackColor = &HFFFFFF
    Label34.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label31.BackColor = &HFFFFFF
      Label32.BackColor = &HFFFFFF
      Label33.BackColor = &H0&
      Label34.BackColor = &HFFFFFF
    Else
      Label31.BackColor = &HFFFFFF
      Label32.BackColor = &HFFFFFF
      Label33.BackColor = &HFFFFFF
      Label34.BackColor = &H0&
    End If
  End If
End If
If Rnd <= 0.25 Then
  Label41.BackColor = &H0&
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label41.BackColor = &HFFFFFF
    Label42.BackColor = &H0&
    Label43.BackColor = &HFFFFFF
    Label44.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label41.BackColor = &HFFFFFF
      Label42.BackColor = &HFFFFFF
      Label43.BackColor = &H0&
      Label44.BackColor = &HFFFFFF
    Else
      Label41.BackColor = &HFFFFFF
      Label42.BackColor = &HFFFFFF
      Label43.BackColor = &HFFFFFF
      Label44.BackColor = &H0&
    End If
  End If
End If
If Rnd <= 0.25 Then
  Label51.BackColor = &H0&
  Label52.BackColor = &HFFFFFF
  Label53.BackColor = &HFFFFFF
  Label54.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label51.BackColor = &HFFFFFF
    Label52.BackColor = &H0&
    Label53.BackColor = &HFFFFFF
    Label54.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label51.BackColor = &HFFFFFF
      Label52.BackColor = &HFFFFFF
      Label53.BackColor = &H0&
      Label54.BackColor = &HFFFFFF
    Else
      Label51.BackColor = &HFFFFFF
      Label52.BackColor = &HFFFFFF
      Label53.BackColor = &HFFFFFF
      Label54.BackColor = &H0&
    End If
  End If
End If
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
If Keys = 1 Then
If Classic = 1 Or Zen = 1 Or Relay = 1 Then
Randomize
If ((Label21.BackColor = &H0& And KeyCode = vbKey1) Or (Label22.BackColor = &H0& And KeyCode = vbKey2) Or (Label23.BackColor = &H0& And KeyCode = vbKey3) Or (Label24.BackColor = &H0& And KeyCode = vbKey4)) And Start = 0 Then
  Start = 1
  LabelS1.Visible = False
  LabelS2.Visible = False
  LabelS3.Visible = False
  LabelS4.Visible = False
  Label1.Visible = False
  Label2.Visible = False
  Label3.Visible = False
  Label4.Visible = False
End If
If KeyCode = vbKey1 And Start = 1 Then
Timer1.Enabled = True
  If Label21.BackColor = &H0& Then
  c = c + 1
  If Relay = 1 Then
    cr = cr + 1
  End If
  Label21.BackColor = &H808080
  Label11.BackColor = Label21.BackColor
  Label12.BackColor = Label22.BackColor
  Label13.BackColor = Label23.BackColor
  Label14.BackColor = Label24.BackColor
  Label21.BackColor = Label31.BackColor
  Label22.BackColor = Label32.BackColor
  Label23.BackColor = Label33.BackColor
  Label24.BackColor = Label34.BackColor
  Label31.BackColor = Label41.BackColor
  Label32.BackColor = Label42.BackColor
  Label33.BackColor = Label43.BackColor
  Label34.BackColor = Label44.BackColor
  If Rnd <= 0.25 Then
  Label41.BackColor = &H0&
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
  Label41.BackColor = &HFFFFFF
  Label42.BackColor = &H0&
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
  Label41.BackColor = &HFFFFFF
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &H0&
  Label44.BackColor = &HFFFFFF
  Else
  Label41.BackColor = &HFFFFFF
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &H0&
    End If
  End If
End If
Else
  Start = 0
  Timer1.Enabled = False
  Timer2.Enabled = True
  a = 1
  d = 2
End If
End If

If KeyCode = vbKey2 And Start = 1 Then
Timer1.Enabled = True
If Label22.BackColor = &H0& Then
c = c + 1
  If Relay = 1 Then
    cr = cr + 1
  End If
Label22.BackColor = &H808080
  Label11.BackColor = Label21.BackColor
  Label12.BackColor = Label22.BackColor
  Label13.BackColor = Label23.BackColor
  Label14.BackColor = Label24.BackColor
  Label21.BackColor = Label31.BackColor
  Label22.BackColor = Label32.BackColor
  Label23.BackColor = Label33.BackColor
  Label24.BackColor = Label34.BackColor
  Label31.BackColor = Label41.BackColor
  Label32.BackColor = Label42.BackColor
  Label33.BackColor = Label43.BackColor
  Label34.BackColor = Label44.BackColor
  If Rnd <= 0.25 Then
  Label41.BackColor = &H0&
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
  Label41.BackColor = &HFFFFFF
  Label42.BackColor = &H0&
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
  Label41.BackColor = &HFFFFFF
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &H0&
  Label44.BackColor = &HFFFFFF
  Else
  Label41.BackColor = &HFFFFFF
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &H0&
    End If
  End If
End If
Else
  Start = 0
  Timer1.Enabled = False
  Timer2.Enabled = True
  a = 2
  d = 2
End If
End If

If KeyCode = vbKey3 And Start = 1 Then
Timer1.Enabled = True
If Label23.BackColor = &H0& Then
c = c + 1
  If Relay = 1 Then
    cr = cr + 1
  End If
Label23.BackColor = &H808080
  Label11.BackColor = Label21.BackColor
  Label12.BackColor = Label22.BackColor
  Label13.BackColor = Label23.BackColor
  Label14.BackColor = Label24.BackColor
  Label21.BackColor = Label31.BackColor
  Label22.BackColor = Label32.BackColor
  Label23.BackColor = Label33.BackColor
  Label24.BackColor = Label34.BackColor
  Label31.BackColor = Label41.BackColor
  Label32.BackColor = Label42.BackColor
  Label33.BackColor = Label43.BackColor
  Label34.BackColor = Label44.BackColor
  If Rnd <= 0.25 Then
  Label41.BackColor = &H0&
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
  Label41.BackColor = &HFFFFFF
  Label42.BackColor = &H0&
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
  Label41.BackColor = &HFFFFFF
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &H0&
  Label44.BackColor = &HFFFFFF
  Else
  Label41.BackColor = &HFFFFFF
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &H0&
    End If
  End If
End If
Else
  Start = 0
  Timer1.Enabled = False
  Timer2.Enabled = True
  a = 3
  d = 2
End If
End If

If KeyCode = vbKey4 And Start = 1 Then
Timer1.Enabled = True
If Label24.BackColor = &H0& Then
c = c + 1
  If Relay = 1 Then
    cr = cr + 1
  End If
Label24.BackColor = &H808080
  Label11.BackColor = Label21.BackColor
  Label12.BackColor = Label22.BackColor
  Label13.BackColor = Label23.BackColor
  Label14.BackColor = Label24.BackColor
  Label21.BackColor = Label31.BackColor
  Label22.BackColor = Label32.BackColor
  Label23.BackColor = Label33.BackColor
  Label24.BackColor = Label34.BackColor
  Label31.BackColor = Label41.BackColor
  Label32.BackColor = Label42.BackColor
  Label33.BackColor = Label43.BackColor
  Label34.BackColor = Label44.BackColor
  If Rnd <= 0.25 Then
  Label41.BackColor = &H0&
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
  Label41.BackColor = &HFFFFFF
  Label42.BackColor = &H0&
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
  Label41.BackColor = &HFFFFFF
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &H0&
  Label44.BackColor = &HFFFFFF
  Else
  Label41.BackColor = &HFFFFFF
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &H0&
    End If
  End If
End If
Else
  Start = 0
  Timer1.Enabled = False
  Timer2.Enabled = True
  a = 4
  d = 2
End If
End If
End If
End If
End Sub

Private Sub Form_Load()
Keys = 1
Randomize
If Rnd <= 0.25 Then
  Label21.BackColor = &H0&
  LabelS1.Visible = True
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label22.BackColor = &H0&
    LabelS2.Visible = True
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label23.BackColor = &H0&
      LabelS3.Visible = True
    Else
      Label24.BackColor = &H0&
      LabelS4.Visible = True
    End If
  End If
End If
If Rnd <= 0.25 Then
  Label31.BackColor = &H0&
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label32.BackColor = &H0&
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label33.BackColor = &H0&
    Else
      Label34.BackColor = &H0&
    End If
  End If
End If
If Rnd <= 0.25 Then
  Label41.BackColor = &H0&
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label42.BackColor = &H0&
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label43.BackColor = &H0&
    Else
      Label44.BackColor = &H0&
    End If
  End If
End If
If Rnd <= 0.25 Then
  Label51.BackColor = &H0&
  Label52.BackColor = &HFFFFFF
  Label53.BackColor = &HFFFFFF
  Label54.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label51.BackColor = &HFFFFFF
    Label52.BackColor = &H0&
    Label53.BackColor = &HFFFFFF
    Label54.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label51.BackColor = &HFFFFFF
      Label52.BackColor = &HFFFFFF
      Label53.BackColor = &H0&
      Label54.BackColor = &HFFFFFF
    Else
      Label51.BackColor = &HFFFFFF
      Label52.BackColor = &HFFFFFF
      Label53.BackColor = &HFFFFFF
      Label54.BackColor = &H0&
    End If
  End If
End If
Limit = 50
End Sub

Private Sub Label11_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label11.BackColor = &HFFFFFF Then
    a = 1
    d = 1
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label11.BackColor = &H0& Then
    Label11.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label12_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label12.BackColor = &HFFFFFF Then
    a = 2
    d = 1
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label12.BackColor = &H0& Then
    Label12.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label13_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label13.BackColor = &HFFFFFF Then
    a = 3
    d = 1
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label13.BackColor = &H0& Then
    Label13.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label14_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label14.BackColor = &HFFFFFF Then
    a = 4
    d = 1
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label14.BackColor = &H0& Then
    Label14.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label21_Click()
Randomize
If Mouse = 1 Then
If Classic = 1 Or Zen = 1 Or Relay = 1 Then
  If Label21.BackColor = &H0& And Start = 0 Then
    Start = 1
    LabelS1.Visible = False
    LabelS2.Visible = False
    LabelS3.Visible = False
    LabelS4.Visible = False
    Label1.Visible = False
    Label2.Visible = False
    Label3.Visible = False
    Label4.Visible = False
  End If
  If Start = 1 Then
    Timer1.Enabled = True
    If Label21.BackColor = &H0& Then
      c = c + 1
      If Relay = 1 Then
        cr = cr + 1
      End If
      Label21.BackColor = &H808080
      Label11.BackColor = Label21.BackColor
      Label12.BackColor = Label22.BackColor
      Label13.BackColor = Label23.BackColor
      Label14.BackColor = Label24.BackColor
      Label21.BackColor = Label31.BackColor
      Label22.BackColor = Label32.BackColor
      Label23.BackColor = Label33.BackColor
      Label24.BackColor = Label34.BackColor
      Label31.BackColor = Label41.BackColor
      Label32.BackColor = Label42.BackColor
      Label33.BackColor = Label43.BackColor
      Label34.BackColor = Label44.BackColor
      If Rnd <= 0.25 Then
        Label41.BackColor = &H0&
        Label42.BackColor = &HFFFFFF
        Label43.BackColor = &HFFFFFF
        Label44.BackColor = &HFFFFFF
      Else
        If Rnd > 0.25 And Rnd <= 0.5 Then
          Label41.BackColor = &HFFFFFF
          Label42.BackColor = &H0&
          Label43.BackColor = &HFFFFFF
          Label44.BackColor = &HFFFFFF
        Else
          If Rnd > 0.5 And Rnd <= 0.75 Then
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &H0&
            Label44.BackColor = &HFFFFFF
          Else
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &HFFFFFF
            Label44.BackColor = &H0&
          End If
        End If
      End If
    Else
      Start = 0
      Timer2.Enabled = True
      a = 1
      d = 2
    End If
  End If
End If

If Arcade = 1 Or Topspeed = 1 Then
  Randomize
If Label21.BackColor = &H0& And Start = 0 Then
  Start = 1
  c = c + 1
  LabelSS = c
  Label21.BackColor = &H808080
  Timer1.Enabled = True
  LabelS1.Visible = False
  LabelS2.Visible = False
  LabelS3.Visible = False
  LabelS4.Visible = False
  Label1.Visible = False
  Label2.Visible = False
  Label3.Visible = False
  Label4.Visible = False
End If
If Start = 1 Then
  If Label21.BackColor = &HFFFFFF Then
    a = 1
    d = 2
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label21.BackColor = &H0& Then
    Label21.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End If
End If
End Sub

Private Sub Label22_Click()
Randomize
If Mouse = 1 Then
If Classic = 1 Or Zen = 1 Or Relay = 1 Then
  If Label22.BackColor = &H0& And Start = 0 Then
    Start = 1
    LabelS1.Visible = False
    LabelS2.Visible = False
    LabelS3.Visible = False
    LabelS4.Visible = False
    Label1.Visible = False
    Label2.Visible = False
    Label3.Visible = False
    Label4.Visible = False
  End If
  If Start = 1 Then
    Timer1.Enabled = True
    If Label22.BackColor = &H0& Then
      c = c + 1
      If Relay = 1 Then
        cr = cr + 1
      End If
      Label22.BackColor = &H808080
      Label11.BackColor = Label21.BackColor
      Label12.BackColor = Label22.BackColor
      Label13.BackColor = Label23.BackColor
      Label14.BackColor = Label24.BackColor
      Label21.BackColor = Label31.BackColor
      Label22.BackColor = Label32.BackColor
      Label23.BackColor = Label33.BackColor
      Label24.BackColor = Label34.BackColor
      Label31.BackColor = Label41.BackColor
      Label32.BackColor = Label42.BackColor
      Label33.BackColor = Label43.BackColor
      Label34.BackColor = Label44.BackColor
      If Rnd <= 0.25 Then
        Label41.BackColor = &H0&
        Label42.BackColor = &HFFFFFF
        Label43.BackColor = &HFFFFFF
        Label44.BackColor = &HFFFFFF
      Else
        If Rnd > 0.25 And Rnd <= 0.5 Then
          Label41.BackColor = &HFFFFFF
          Label42.BackColor = &H0&
          Label43.BackColor = &HFFFFFF
          Label44.BackColor = &HFFFFFF
        Else
          If Rnd > 0.5 And Rnd <= 0.75 Then
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &H0&
            Label44.BackColor = &HFFFFFF
          Else
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &HFFFFFF
            Label44.BackColor = &H0&
          End If
        End If
      End If
    Else
      Start = 0
      Timer2.Enabled = True
      a = 2
      d = 2
    End If
  End If
End If
If Arcade = 1 Or Topspeed = 1 Then
  Randomize
If Label22.BackColor = &H0& And Start = 0 Then
  Start = 1
  c = c + 1
  LabelSS = c
  Label22.BackColor = &H808080
  Timer1.Enabled = True
  LabelS1.Visible = False
  LabelS2.Visible = False
  LabelS3.Visible = False
  LabelS4.Visible = False
  Label1.Visible = False
  Label2.Visible = False
  Label3.Visible = False
  Label4.Visible = False
End If
If Start = 1 Then
  If Label22.BackColor = &HFFFFFF Then
    a = 2
    d = 2
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label22.BackColor = &H0& Then
    Label22.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End If
End If
End Sub

Private Sub Label23_Click()
Randomize
If Mouse = 1 Then
If Classic = 1 Or Zen = 1 Or Relay = 1 Then
  If Label23.BackColor = &H0& And Start = 0 Then
    Start = 1
    LabelS1.Visible = False
    LabelS2.Visible = False
    LabelS3.Visible = False
    LabelS4.Visible = False
    Label1.Visible = False
    Label2.Visible = False
    Label3.Visible = False
    Label4.Visible = False
  End If
  If Start = 1 Then
    Timer1.Enabled = True
    If Label23.BackColor = &H0& Then
      c = c + 1
      If Relay = 1 Then
        cr = cr + 1
      End If
      Label23.BackColor = &H808080
      Label11.BackColor = Label21.BackColor
      Label12.BackColor = Label22.BackColor
      Label13.BackColor = Label23.BackColor
      Label14.BackColor = Label24.BackColor
      Label21.BackColor = Label31.BackColor
      Label22.BackColor = Label32.BackColor
      Label23.BackColor = Label33.BackColor
      Label24.BackColor = Label34.BackColor
      Label31.BackColor = Label41.BackColor
      Label32.BackColor = Label42.BackColor
      Label33.BackColor = Label43.BackColor
      Label34.BackColor = Label44.BackColor
      If Rnd <= 0.25 Then
        Label41.BackColor = &H0&
        Label42.BackColor = &HFFFFFF
        Label43.BackColor = &HFFFFFF
        Label44.BackColor = &HFFFFFF
      Else
        If Rnd > 0.25 And Rnd <= 0.5 Then
          Label41.BackColor = &HFFFFFF
          Label42.BackColor = &H0&
          Label43.BackColor = &HFFFFFF
          Label44.BackColor = &HFFFFFF
        Else
          If Rnd > 0.5 And Rnd <= 0.75 Then
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &H0&
            Label44.BackColor = &HFFFFFF
          Else
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &HFFFFFF
            Label44.BackColor = &H0&
          End If
        End If
      End If
    Else
      Start = 0
      Timer2.Enabled = True
      a = 3
      d = 2
    End If
  End If
End If
If Arcade = 1 Or Topspeed = 1 Then
  Randomize
If Label23.BackColor = &H0& And Start = 0 Then
  Start = 1
  c = c + 1
  LabelSS = c
  Label23.BackColor = &H808080
  Timer1.Enabled = True
  LabelS1.Visible = False
  LabelS2.Visible = False
  LabelS3.Visible = False
  LabelS4.Visible = False
  Label1.Visible = False
  Label2.Visible = False
  Label3.Visible = False
  Label4.Visible = False
End If
If Start = 1 Then
  If Label23.BackColor = &HFFFFFF Then
    a = 3
    d = 2
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label23.BackColor = &H0& Then
    Label23.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End If
End If
End Sub

Private Sub Label24_Click()
Randomize
If Mouse = 1 Then
If Classic = 1 Or Zen = 1 Or Relay = 1 Then
  If Label24.BackColor = &H0& And Start = 0 Then
    Start = 1
    LabelS1.Visible = False
    LabelS2.Visible = False
    LabelS3.Visible = False
    LabelS4.Visible = False
    Label1.Visible = False
    Label2.Visible = False
    Label3.Visible = False
    Label4.Visible = False
  End If
  If Start = 1 Then
    Timer1.Enabled = True
    If Label24.BackColor = &H0& Then
      c = c + 1
      If Relay = 1 Then
        cr = cr + 1
      End If
      Label24.BackColor = &H808080
      Label11.BackColor = Label21.BackColor
      Label12.BackColor = Label22.BackColor
      Label13.BackColor = Label23.BackColor
      Label14.BackColor = Label24.BackColor
      Label21.BackColor = Label31.BackColor
      Label22.BackColor = Label32.BackColor
      Label23.BackColor = Label33.BackColor
      Label24.BackColor = Label34.BackColor
      Label31.BackColor = Label41.BackColor
      Label32.BackColor = Label42.BackColor
      Label33.BackColor = Label43.BackColor
      Label34.BackColor = Label44.BackColor
      If Rnd <= 0.25 Then
        Label41.BackColor = &H0&
        Label42.BackColor = &HFFFFFF
        Label43.BackColor = &HFFFFFF
        Label44.BackColor = &HFFFFFF
      Else
        If Rnd > 0.25 And Rnd <= 0.5 Then
          Label41.BackColor = &HFFFFFF
          Label42.BackColor = &H0&
          Label43.BackColor = &HFFFFFF
          Label44.BackColor = &HFFFFFF
        Else
          If Rnd > 0.5 And Rnd <= 0.75 Then
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &H0&
            Label44.BackColor = &HFFFFFF
          Else
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &HFFFFFF
            Label44.BackColor = &H0&
          End If
        End If
      End If
    Else
      Start = 0
      Timer2.Enabled = True
      a = 4
      d = 2
    End If
  End If
End If
If Arcade = 1 Or Topspeed = 1 Then
  Randomize
If Label24.BackColor = &H0& And Start = 0 Then
  Start = 1
  c = c + 1
  LabelSS = c
  Label24.BackColor = &H808080
  Timer1.Enabled = True
  LabelS1.Visible = False
  LabelS2.Visible = False
  LabelS3.Visible = False
  LabelS4.Visible = False
  Label1.Visible = False
  Label2.Visible = False
  Label3.Visible = False
  Label4.Visible = False
End If
If Start = 1 Then
  If Label24.BackColor = &HFFFFFF Then
    a = 4
    d = 2
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label24.BackColor = &H0& Then
    Label24.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End If
End If
End Sub

Private Sub Label31_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label31.BackColor = &HFFFFFF Then
    a = 1
    d = 3
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label31.BackColor = &H0& Then
    Label31.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label32_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label32.BackColor = &HFFFFFF Then
    a = 2
    d = 3
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label32.BackColor = &H0& Then
    Label32.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label33_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label33.BackColor = &HFFFFFF Then
    a = 3
    d = 3
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label33.BackColor = &H0& Then
    Label33.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label34_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label34.BackColor = &HFFFFFF Then
    a = 4
    d = 3
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label34.BackColor = &H0& Then
    Label34.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label41_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label41.BackColor = &HFFFFFF Then
    a = 1
    d = 4
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label41.BackColor = &H0& Then
    Label41.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label42_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label42.BackColor = &HFFFFFF Then
    a = 2
    d = 4
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label42.BackColor = &H0& Then
    Label42.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label43_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label43.BackColor = &HFFFFFF Then
    a = 3
    d = 4
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label43.BackColor = &H0& Then
    Label43.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label44_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label44.BackColor = &HFFFFFF Then
    a = 4
    d = 4
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label44.BackColor = &H0& Then
    Label44.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label51_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label51.BackColor = &HFFFFFF Then
    a = 1
    d = 5
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label51.BackColor = &H0& Then
    Label51.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label52_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label52.BackColor = &HFFFFFF Then
    a = 2
    d = 5
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label52.BackColor = &H0& Then
    Label52.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label53_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label53.BackColor = &HFFFFFF Then
    a = 3
    d = 5
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label53.BackColor = &H0& Then
    Label53.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub Label54_Click()
If Start = 1 And (Arcade = 1 Or Topspeed = 1) Then
  If Label54.BackColor = &HFFFFFF Then
    a = 4
    d = 5
    Timer1.Enabled = False
    Timer2.Enabled = True
  End If
  If Label54.BackColor = &H0& Then
    Label54.BackColor = &H808080
    c = c + 1
    LabelSS = c
  End If
End If
End Sub

Private Sub LabelA_Click(Index As Integer)
Classic = 0
Zen = 0
Relay = 0
Arcade = 1
Topspeed = 0
LabelC(0).Visible = False
LabelC(1).Visible = False
LabelZ(0).Visible = False
LabelZ(1).Visible = False
LabelR(0).Visible = False
LabelR(1).Visible = False
LabelA(0).Visible = False
LabelA(1).Visible = False
LabelT(0).Visible = False
LabelT(1).Visible = False
LabelI(0).Visible = False
LabelI(1).Visible = False
Option2.Visible = True
Option1.Visible = True
Option1.Enabled = False
CommandOK.Visible = True
CommandM.Visible = True
LabelControl.Visible = True
LabelIn.Visible = True
LabelIn = "街机模式"
LabelPAUSE.BackColor = &H80FF80
LabelPAUSE.Visible = True
End Sub

Private Sub LabelC_Click(Index As Integer)
Classic = 1
Zen = 0
Relay = 0
Arcade = 0
Topspeed = 0
LabelC(0).Visible = False
LabelC(1).Visible = False
LabelZ(0).Visible = False
LabelZ(1).Visible = False
LabelR(0).Visible = False
LabelR(1).Visible = False
LabelA(0).Visible = False
LabelA(1).Visible = False
LabelT(0).Visible = False
LabelT(1).Visible = False
LabelI(0).Visible = False
LabelI(1).Visible = False
Option1.Visible = True
Option2.Visible = True
Option1.Enabled = True
CommandOK.Visible = True
CommandM.Visible = True
LabelControl.Visible = True
LabelIn.Visible = True
LabelIn = "经典模式"
LabelPAUSE.BackColor = &H80FF80
LabelPAUSE.Visible = True
End Sub

Private Sub LabelR_Click(Index As Integer)
Classic = 0
Zen = 0
Relay = 1
Arcade = 0
Topspeed = 0
LabelC(0).Visible = False
LabelC(1).Visible = False
LabelZ(0).Visible = False
LabelZ(1).Visible = False
LabelR(0).Visible = False
LabelR(1).Visible = False
LabelA(0).Visible = False
LabelA(1).Visible = False
LabelT(0).Visible = False
LabelT(1).Visible = False
LabelI(0).Visible = False
LabelI(1).Visible = False
Option1.Visible = True
Option2.Visible = True
Option1.Enabled = True
CommandOK.Visible = True
CommandM.Visible = True
LabelControl.Visible = True
LabelIn.Visible = True
LabelIn = "接力模式"
LabelPAUSE.BackColor = &H80FF80
LabelPAUSE.Visible = True
End Sub

Private Sub LabelS1_Click()
Randomize
If Mouse = 1 Then
If Classic = 1 Or Zen = 1 Or Relay = 1 Then
  If Label21.BackColor = &H0& And Start = 0 Then
    Start = 1
    LabelS1.Visible = False
    LabelS2.Visible = False
    LabelS3.Visible = False
    LabelS4.Visible = False
    Label1.Visible = False
    Label2.Visible = False
    Label3.Visible = False
    Label4.Visible = False
  End If
  If Start = 1 Then
    Timer1.Enabled = True
    If Label21.BackColor = &H0& Then
      c = c + 1
      If Relay = 1 Then
        cr = cr + 1
      End If
      Label21.BackColor = &H808080
      Label11.BackColor = Label21.BackColor
      Label12.BackColor = Label22.BackColor
      Label13.BackColor = Label23.BackColor
      Label14.BackColor = Label24.BackColor
      Label21.BackColor = Label31.BackColor
      Label22.BackColor = Label32.BackColor
      Label23.BackColor = Label33.BackColor
      Label24.BackColor = Label34.BackColor
      Label31.BackColor = Label41.BackColor
      Label32.BackColor = Label42.BackColor
      Label33.BackColor = Label43.BackColor
      Label34.BackColor = Label44.BackColor
      If Rnd <= 0.25 Then
        Label41.BackColor = &H0&
        Label42.BackColor = &HFFFFFF
        Label43.BackColor = &HFFFFFF
        Label44.BackColor = &HFFFFFF
      Else
        If Rnd > 0.25 And Rnd <= 0.5 Then
          Label41.BackColor = &HFFFFFF
          Label42.BackColor = &H0&
          Label43.BackColor = &HFFFFFF
          Label44.BackColor = &HFFFFFF
        Else
          If Rnd > 0.5 And Rnd <= 0.75 Then
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &H0&
            Label44.BackColor = &HFFFFFF
          Else
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &HFFFFFF
            Label44.BackColor = &H0&
          End If
        End If
      End If
    Else
      Start = 0
      Timer2.Enabled = True
      a = 1
    End If
  End If
End If
If Arcade = 1 Or Topspeed = 1 Then
  Randomize
If Label21.BackColor = &H0& And Start = 0 Then
  Start = 1
  c = c + 1
  LabelSS = c
  Label21.BackColor = &H808080
  Timer1.Enabled = True
  LabelS1.Visible = False
  LabelS2.Visible = False
  LabelS3.Visible = False
  LabelS4.Visible = False
  Label1.Visible = False
  Label2.Visible = False
  Label3.Visible = False
  Label4.Visible = False
End If
End If
End If
End Sub

Private Sub LabelS2_Click()
Randomize
If Mouse = 1 Then
If Classic = 1 Or Zen = 1 Or Relay = 1 Then
  If Label22.BackColor = &H0& And Start = 0 Then
    Start = 1
    LabelS1.Visible = False
    LabelS2.Visible = False
    LabelS3.Visible = False
    LabelS4.Visible = False
    Label1.Visible = False
    Label2.Visible = False
    Label3.Visible = False
    Label4.Visible = False
  End If
  If Start = 1 Then
    Timer1.Enabled = True
    If Label22.BackColor = &H0& Then
      c = c + 1
      If Relay = 1 Then
        cr = cr + 1
      End If
      Label22.BackColor = &H808080
      Label11.BackColor = Label21.BackColor
      Label12.BackColor = Label22.BackColor
      Label13.BackColor = Label23.BackColor
      Label14.BackColor = Label24.BackColor
      Label21.BackColor = Label31.BackColor
      Label22.BackColor = Label32.BackColor
      Label23.BackColor = Label33.BackColor
      Label24.BackColor = Label34.BackColor
      Label31.BackColor = Label41.BackColor
      Label32.BackColor = Label42.BackColor
      Label33.BackColor = Label43.BackColor
      Label34.BackColor = Label44.BackColor
      If Rnd <= 0.25 Then
        Label41.BackColor = &H0&
        Label42.BackColor = &HFFFFFF
        Label43.BackColor = &HFFFFFF
        Label44.BackColor = &HFFFFFF
      Else
        If Rnd > 0.25 And Rnd <= 0.5 Then
          Label41.BackColor = &HFFFFFF
          Label42.BackColor = &H0&
          Label43.BackColor = &HFFFFFF
          Label44.BackColor = &HFFFFFF
        Else
          If Rnd > 0.5 And Rnd <= 0.75 Then
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &H0&
            Label44.BackColor = &HFFFFFF
          Else
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &HFFFFFF
            Label44.BackColor = &H0&
          End If
        End If
      End If
    Else
      Start = 0
      Timer2.Enabled = True
      a = 2
    End If
  End If
End If
If Arcade = 1 Or Topspeed = 1 Then
  Randomize
If Label22.BackColor = &H0& And Start = 0 Then
  Start = 1
  c = c + 1
  LabelSS = c
  Label22.BackColor = &H808080
  Timer1.Enabled = True
  LabelS1.Visible = False
  LabelS2.Visible = False
  LabelS3.Visible = False
  LabelS4.Visible = False
  Label1.Visible = False
  Label2.Visible = False
  Label3.Visible = False
  Label4.Visible = False
End If
End If
End If
End Sub

Private Sub LabelS3_Click()
Randomize
If Mouse = 1 Then
If Classic = 1 Or Zen = 1 Or Relay = 1 Then
  If Label23.BackColor = &H0& And Start = 0 Then
    Start = 1
    LabelS1.Visible = False
    LabelS2.Visible = False
    LabelS3.Visible = False
    LabelS4.Visible = False
    Label1.Visible = False
    Label2.Visible = False
    Label3.Visible = False
    Label4.Visible = False
  End If
  If Start = 1 Then
    Timer1.Enabled = True
    If Label23.BackColor = &H0& Then
      c = c + 1
      If Relay = 1 Then
        cr = cr + 1
      End If
      Label23.BackColor = &H808080
      Label11.BackColor = Label21.BackColor
      Label12.BackColor = Label22.BackColor
      Label13.BackColor = Label23.BackColor
      Label14.BackColor = Label24.BackColor
      Label21.BackColor = Label31.BackColor
      Label22.BackColor = Label32.BackColor
      Label23.BackColor = Label33.BackColor
      Label24.BackColor = Label34.BackColor
      Label31.BackColor = Label41.BackColor
      Label32.BackColor = Label42.BackColor
      Label33.BackColor = Label43.BackColor
      Label34.BackColor = Label44.BackColor
      If Rnd <= 0.25 Then
        Label41.BackColor = &H0&
        Label42.BackColor = &HFFFFFF
        Label43.BackColor = &HFFFFFF
        Label44.BackColor = &HFFFFFF
      Else
        If Rnd > 0.25 And Rnd <= 0.5 Then
          Label41.BackColor = &HFFFFFF
          Label42.BackColor = &H0&
          Label43.BackColor = &HFFFFFF
          Label44.BackColor = &HFFFFFF
        Else
          If Rnd > 0.5 And Rnd <= 0.75 Then
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &H0&
            Label44.BackColor = &HFFFFFF
          Else
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &HFFFFFF
            Label44.BackColor = &H0&
          End If
        End If
      End If
    Else
      Start = 0
      Timer2.Enabled = True
      a = 3
    End If
  End If
End If
If Arcade = 1 Or Topspeed = 1 Then
  Randomize
If Label23.BackColor = &H0& And Start = 0 Then
  Start = 1
  c = c + 1
  LabelSS = c
  Label23.BackColor = &H808080
  Timer1.Enabled = True
  LabelS1.Visible = False
  LabelS2.Visible = False
  LabelS3.Visible = False
  LabelS4.Visible = False
  Label1.Visible = False
  Label2.Visible = False
  Label3.Visible = False
  Label4.Visible = False
End If
End If
End If
End Sub

Private Sub LabelS4_Click()
Randomize
If Mouse = 1 Then
If Classic = 1 Or Zen = 1 Or Relay = 1 Then
  If Label24.BackColor = &H0& And Start = 0 Then
    Start = 1
    LabelS1.Visible = False
    LabelS2.Visible = False
    LabelS3.Visible = False
    LabelS4.Visible = False
    Label1.Visible = False
    Label2.Visible = False
    Label3.Visible = False
    Label4.Visible = False
  End If
  If Start = 1 Then
    Timer1.Enabled = True
    If Label24.BackColor = &H0& Then
      c = c + 1
      If Relay = 1 Then
        cr = cr + 1
      End If
      Label24.BackColor = &H808080
      Label11.BackColor = Label21.BackColor
      Label12.BackColor = Label22.BackColor
      Label13.BackColor = Label23.BackColor
      Label14.BackColor = Label24.BackColor
      Label21.BackColor = Label31.BackColor
      Label22.BackColor = Label32.BackColor
      Label23.BackColor = Label33.BackColor
      Label24.BackColor = Label34.BackColor
      Label31.BackColor = Label41.BackColor
      Label32.BackColor = Label42.BackColor
      Label33.BackColor = Label43.BackColor
      Label34.BackColor = Label44.BackColor
      If Rnd <= 0.25 Then
        Label41.BackColor = &H0&
        Label42.BackColor = &HFFFFFF
        Label43.BackColor = &HFFFFFF
        Label44.BackColor = &HFFFFFF
      Else
        If Rnd > 0.25 And Rnd <= 0.5 Then
          Label41.BackColor = &HFFFFFF
          Label42.BackColor = &H0&
          Label43.BackColor = &HFFFFFF
          Label44.BackColor = &HFFFFFF
        Else
          If Rnd > 0.5 And Rnd <= 0.75 Then
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &H0&
            Label44.BackColor = &HFFFFFF
          Else
            Label41.BackColor = &HFFFFFF
            Label42.BackColor = &HFFFFFF
            Label43.BackColor = &HFFFFFF
            Label44.BackColor = &H0&
          End If
        End If
      End If
    Else
      Start = 0
      Timer2.Enabled = True
      a = 4
    End If
  End If
End If
If Arcade = 1 Or Topspeed = 1 Then
  Randomize
If Label24.BackColor = &H0& And Start = 0 Then
  Start = 1
  c = c + 1
  LabelSS = c
  Label24.BackColor = &H808080
  Timer1.Enabled = True
  LabelS1.Visible = False
  LabelS2.Visible = False
  LabelS3.Visible = False
  LabelS4.Visible = False
  Label1.Visible = False
  Label2.Visible = False
  Label3.Visible = False
  Label4.Visible = False
End If
End If
End If
End Sub

Private Sub LabelZ_Click(Index As Integer)
Classic = 0
Zen = 1
Relay = 0
Arcade = 0
Topspeed = 0
LabelC(0).Visible = False
LabelC(1).Visible = False
LabelZ(0).Visible = False
LabelZ(1).Visible = False
LabelR(0).Visible = False
LabelR(1).Visible = False
LabelA(0).Visible = False
LabelA(1).Visible = False
LabelT(0).Visible = False
LabelT(1).Visible = False
LabelI(0).Visible = False
LabelI(1).Visible = False
Option1.Visible = True
Option2.Visible = True
Option1.Enabled = True
CommandOK.Visible = True
CommandM.Visible = True
LabelControl.Visible = True
LabelIn.Visible = True
LabelIn = "禅模式"
LabelPAUSE.BackColor = &H80FF80
LabelPAUSE.Visible = True
End Sub

Private Sub Timer1_Timer()
If Classic = 1 Then
T2 = T2 + 1
If T2 = 60 Then
  T1 = T1 + 1
  T2 = 0
End If
If T1 = 20 Then
  LabelT1.Visible = False
  LabelT2.Visible = False
  Labelfen.Visible = False
  Labelmiao.Visible = False
  LabelPAUSE.Visible = True
  LabelM.Visible = True
  LabelS.Visible = True
  CommandR.Visible = True
  CommandM.Visible = True
  LabelM = "经典模式"
  LabelS = "再接再厉！"
  LabelPAUSE.BackColor = &HFF&
  LabelM.BackColor = &HFF&
  LabelS.BackColor = &HFF&
  b = 0
  Timer2.Enabled = False
  LabelP1.Visible = False
  LabelP2.Visible = False
  LabelP3.Visible = False
End If
LabelT1 = T1
LabelT2 = T2
If c = 13 Then
  LabelP1.Visible = True
End If
If c = 25 Then
  LabelP2.Visible = True
End If
If c = 38 Then
  LabelP3.Visible = True
End If
If c >= 48 Then
  Label41.BackColor = &H80FF80
  Label42.BackColor = &H80FF80
  Label43.BackColor = &H80FF80
  Label44.BackColor = &H80FF80
End If
If c = 50 Then
  Start = 0
  Timer1.Enabled = False
  LabelT1.Visible = False
  LabelT2.Visible = False
  Labelfen.Visible = False
  Labelmiao.Visible = False
  LabelPAUSE.Visible = True
  LabelM.Visible = True
  CommandR.Visible = True
  CommandM.Visible = True
  LabelS.Visible = True
  LabelM = "经典模式"
  LabelS = T1 & "''" & T2 & "'''"
  LabelPAUSE.BackColor = &H80FF80
  LabelM.BackColor = &H80FF80
  LabelS.BackColor = &H80FF80
  LabelP1.Visible = False
  LabelP2.Visible = False
  LabelP3.Visible = False
End If
End If

If Zen = 1 Then
If T2 = 0 Then
  T1 = T1 - 1
  T2 = 59
End If
T2 = T2 - 1
LabelT1 = T1
LabelT2 = T2
If T1 = 0 Then
  Start = 0
  Timer1.Enabled = False
  LabelT1.Visible = False
  LabelT2.Visible = False
  Labelfen.Visible = False
  Labelmiao.Visible = False
  LabelPAUSE.Visible = True
  LabelM.Visible = True
  LabelS.Visible = True
  CommandR.Visible = True
  CommandM.Visible = True
  LabelM = "禅模式"
  LabelS = c
  LabelPAUSE.BackColor = &H80FF80
  LabelM.BackColor = &H80FF80
  LabelS.BackColor = &H80FF80
End If
End If

If Relay = 1 Then
If cr = Limit Then
  cr = 0
  Limit = Limit + 10
  T1 = T1 + 15
  LabelP1.Visible = False
  LabelP2.Visible = False
  LabelP3.Visible = False
End If
If T2 = 0 Then
  T1 = T1 - 1
  T2 = 59
End If
T2 = T2 - 1
LabelT1 = T1
LabelT2 = T2
If cr >= Limit / 4 Then
  LabelP1.Visible = True
End If
If cr >= Limit / 2 Then
  LabelP2.Visible = True
End If
If cr >= Limit * 3 / 4 Then
  LabelP3.Visible = True
End If
If T1 = 0 Then
  Start = 0
  Timer1.Enabled = False
  LabelT1.Visible = False
  LabelT2.Visible = False
  Labelfen.Visible = False
  Labelmiao.Visible = False
  LabelPAUSE.Visible = True
  LabelM.Visible = True
  LabelS.Visible = True
  CommandR.Visible = True
  CommandM.Visible = True
  LabelM = "接力模式"
  LabelS = c
  LabelPAUSE.BackColor = &H80FF80
  LabelM.BackColor = &H80FF80
  LabelS.BackColor = &H80FF80
  LabelP1.Visible = False
  LabelP2.Visible = False
  LabelP3.Visible = False
End If
End If

If Arcade = 1 Then
Speed = Speed + 0.02
If c <= 15 Then
  Speed = 40
End If
If Speed > 75 Then
  Speed = 75
End If
Label11.Top = Label11.Top + Speed
Label12.Top = Label12.Top + Speed
Label13.Top = Label13.Top + Speed
Label14.Top = Label14.Top + Speed
Label21.Top = Label21.Top + Speed
Label22.Top = Label22.Top + Speed
Label23.Top = Label23.Top + Speed
Label24.Top = Label24.Top + Speed
Label31.Top = Label31.Top + Speed
Label32.Top = Label32.Top + Speed
Label33.Top = Label33.Top + Speed
Label34.Top = Label34.Top + Speed
Label41.Top = Label41.Top + Speed
Label42.Top = Label42.Top + Speed
Label43.Top = Label43.Top + Speed
Label44.Top = Label44.Top + Speed
Label51.Top = Label51.Top + Speed
Label52.Top = Label52.Top + Speed
Label53.Top = Label53.Top + Speed
Label54.Top = Label54.Top + Speed
If (Label11.Top >= 6000 And Label11.BackColor = vbbalck) Or (Label12.Top >= 6000 And Label12.BackColor = vbbalck) Or (Label13.Top >= 6000 And Label13.BackColor = vbbalck) Or (Label14.Top >= 6000 And Label14.BackColor = vbbalck) Or (Label21.Top >= 6000 And Label21.BackColor = vbbalck) Or (Label22.Top >= 6000 And Label22.BackColor = vbbalck) Or (Label23.Top >= 6000 And Label23.BackColor = vbbalck) Or (Label24.Top >= 6000 And Label24.BackColor = vbbalck) Or (Label31.Top >= 6000 And Label31.BackColor = vbbalck) Or (Label32.Top >= 6000 And Label32.BackColor = vbbalck) Or (Label33.Top >= 6000 And Label33.BackColor = vbbalck) Or (Label34.Top >= 6000 And Label34.BackColor = vbbalck) Or (Label41.Top >= 6000 And Label41.BackColor = vbbalck) Or (Label42.Top >= 6000 And Label42.BackColor = vbbalck) Or (Label43.Top >= 6000 And Label43.BackColor = vbbalck) Or (Label44.Top >= 6000 And Label44.BackColor = vbbalck) Or (Label51.Top >= 6000 And Label51.BackColor = vbbalck) Then
  Timer1.Enabled = False
  Timer2.Enabled = True
End If
If (Label52.Top >= 6000 And Label52.BackColor = vbbalck) Or (Label53.Top >= 6000 And Label53.BackColor = vbbalck) Or (Label54.Top >= 6000 And Label54.BackColor = vbbalck) Then
  Timer1.Enabled = False
  Timer2.Enabled = True
End If
If Label11.Top >= 6000 Then
  Label11.Top = -600
  Label12.Top = -600
  Label13.Top = -600
  Label14.Top = -600
If Rnd <= 0.25 Then
  Label11.BackColor = &H0&
  Label12.BackColor = &HFFFFFF
  Label13.BackColor = &HFFFFFF
  Label14.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label11.BackColor = &HFFFFFF
    Label12.BackColor = &H0&
    Label13.BackColor = &HFFFFFF
    Label14.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label11.BackColor = &HFFFFFF
      Label12.BackColor = &HFFFFFF
      Label13.BackColor = &H0&
      Label14.BackColor = &HFFFFFF
    Else
      Label11.BackColor = &HFFFFFF
      Label12.BackColor = &HFFFFFF
      Label13.BackColor = &HFFFFFF
      Label14.BackColor = &H0&
    End If
  End If
End If
End If

If Label21.Top >= 6000 Then
  Label21.Top = -600
  Label22.Top = -600
  Label23.Top = -600
  Label24.Top = -600
If Rnd <= 0.25 Then
  Label21.BackColor = &H0&
  Label22.BackColor = &HFFFFFF
  Label23.BackColor = &HFFFFFF
  Label24.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label21.BackColor = &HFFFFFF
    Label22.BackColor = &H0&
    Label23.BackColor = &HFFFFFF
    Label24.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label21.BackColor = &HFFFFFF
      Label22.BackColor = &HFFFFFF
      Label23.BackColor = &H0&
      Label24.BackColor = &HFFFFFF
    Else
      Label21.BackColor = &HFFFFFF
      Label22.BackColor = &HFFFFFF
      Label23.BackColor = &HFFFFFF
      Label24.BackColor = &H0&
    End If
  End If
End If
End If

If Label31.Top >= 6000 Then
  Label31.Top = -600
  Label32.Top = -600
  Label33.Top = -600
  Label34.Top = -600
If Rnd <= 0.25 Then
  Label31.BackColor = &H0&
  Label32.BackColor = &HFFFFFF
  Label33.BackColor = &HFFFFFF
  Label34.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label31.BackColor = &HFFFFFF
    Label32.BackColor = &H0&
    Label33.BackColor = &HFFFFFF
    Label34.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label31.BackColor = &HFFFFFF
      Label32.BackColor = &HFFFFFF
      Label33.BackColor = &H0&
      Label34.BackColor = &HFFFFFF
    Else
      Label31.BackColor = &HFFFFFF
      Label32.BackColor = &HFFFFFF
      Label33.BackColor = &HFFFFFF
      Label34.BackColor = &H0&
    End If
  End If
End If
End If

If Label41.Top >= 6000 Then
  Label41.Top = -600
  Label42.Top = -600
  Label43.Top = -600
  Label44.Top = -600
If Rnd <= 0.25 Then
  Label41.BackColor = &H0&
  Label42.BackColor = &HFFFFFF
  Label43.BackColor = &HFFFFFF
  Label44.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label41.BackColor = &HFFFFFF
    Label42.BackColor = &H0&
    Label43.BackColor = &HFFFFFF
    Label44.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label41.BackColor = &HFFFFFF
      Label42.BackColor = &HFFFFFF
      Label43.BackColor = &H0&
      Label44.BackColor = &HFFFFFF
    Else
      Label41.BackColor = &HFFFFFF
      Label42.BackColor = &HFFFFFF
      Label43.BackColor = &HFFFFFF
      Label44.BackColor = &H0&
    End If
  End If
End If
End If

If Label51.Top >= 6000 Then
  Label51.Top = -600
  Label52.Top = -600
  Label53.Top = -600
  Label54.Top = -600
If Rnd <= 0.25 Then
  Label51.BackColor = &H0&
  Label52.BackColor = &HFFFFFF
  Label53.BackColor = &HFFFFFF
  Label54.BackColor = &HFFFFFF
Else
  If Rnd > 0.25 And Rnd <= 0.5 Then
    Label51.BackColor = &HFFFFFF
    Label52.BackColor = &H0&
    Label53.BackColor = &HFFFFFF
    Label54.BackColor = &HFFFFFF
  Else
    If Rnd > 0.5 And Rnd <= 0.75 Then
      Label51.BackColor = &HFFFFFF
      Label52.BackColor = &HFFFFFF
      Label53.BackColor = &H0&
      Label54.BackColor = &HFFFFFF
    Else
      Label51.BackColor = &HFFFFFF
      Label52.BackColor = &HFFFFFF
      Label53.BackColor = &HFFFFFF
      Label54.BackColor = &H0&
    End If
  End If
End If
End If
End If
End Sub

Private Sub Timer2_Timer()
If Classic = 1 Then
  LabelM = "经典模式"
  Classic = 2
  Zen = 0
  Relay = 0
  Arcade = 0
End If
If Zen = 1 Then
  LabelM = "禅模式"
  Classic = 0
  Zen = 2
  Relay = 0
  Arcade = 0
End If
If Relay = 1 Then
  LabelM = "接力模式"
  Classic = 0
  Zen = 0
  Relay = 2
  Arcade = 0
End If
If Arcade = 1 Then
  LabelM = "街机模式"
  Classic = 0
  Zen = 0
  Relay = 0
  Arcade = 2
End If
Timer1.Enabled = False
b = b + 1

If d = 1 Then
If b = 1 Or b = 3 Then
  If a = 1 Then
    Label11.BackColor = &HFF&
  Else
    If a = 2 Then
      Label12.BackColor = &HFF&
    Else
      If a = 3 Then
        Label13.BackColor = &HFF&
      Else
        If a = 4 Then
          Label14.BackColor = &HFF&
        End If
      End If
    End If
  End If
End If
If b = 2 Then
  If a = 1 Then
    Label11.BackColor = &HFFFFFF
  Else
    If a = 2 Then
      Label12.BackColor = &HFFFFFF
    Else
      If a = 3 Then
        Label13.BackColor = &HFFFFFF
      Else
        If a = 4 Then
          Label14.BackColor = &HFFFFFF
        End If
      End If
    End If
  End If
End If
End If

If d = 2 Then
If b = 1 Or b = 3 Then
  If a = 1 Then
    Label21.BackColor = &HFF&
  Else
    If a = 2 Then
      Label22.BackColor = &HFF&
    Else
      If a = 3 Then
        Label23.BackColor = &HFF&
      Else
        If a = 4 Then
          Label24.BackColor = &HFF&
        End If
      End If
    End If
  End If
End If
If b = 2 Then
  If a = 1 Then
    Label21.BackColor = &HFFFFFF
  Else
    If a = 2 Then
      Label22.BackColor = &HFFFFFF
    Else
      If a = 3 Then
        Label23.BackColor = &HFFFFFF
      Else
        If a = 4 Then
          Label24.BackColor = &HFFFFFF
        End If
      End If
    End If
  End If
End If
End If

If d = 3 Then
If b = 1 Or b = 3 Then
  If a = 1 Then
    Label31.BackColor = &HFF&
  Else
    If a = 2 Then
      Label32.BackColor = &HFF&
    Else
      If a = 3 Then
        Label33.BackColor = &HFF&
      Else
        If a = 4 Then
          Label34.BackColor = &HFF&
        End If
      End If
    End If
  End If
End If
If b = 2 Then
  If a = 1 Then
    Label31.BackColor = &HFFFFFF
  Else
    If a = 2 Then
      Label32.BackColor = &HFFFFFF
    Else
      If a = 3 Then
        Label33.BackColor = &HFFFFFF
      Else
        If a = 4 Then
          Label34.BackColor = &HFFFFFF
        End If
      End If
    End If
  End If
End If
End If

If d = 4 Then
If b = 1 Or b = 3 Then
  If a = 1 Then
    Label41.BackColor = &HFF&
  Else
    If a = 2 Then
      Label42.BackColor = &HFF&
    Else
      If a = 3 Then
        Label43.BackColor = &HFF&
      Else
        If a = 4 Then
          Label44.BackColor = &HFF&
        End If
      End If
    End If
  End If
End If
If b = 2 Then
  If a = 1 Then
    Label41.BackColor = &HFFFFFF
  Else
    If a = 2 Then
      Label42.BackColor = &HFFFFFF
    Else
      If a = 3 Then
        Label43.BackColor = &HFFFFFF
      Else
        If a = 4 Then
          Label44.BackColor = &HFFFFFF
        End If
      End If
    End If
  End If
End If
End If

If d = 5 Then
If b = 1 Or b = 3 Then
  If a = 1 Then
    Label51.BackColor = &HFF&
  Else
    If a = 2 Then
      Label52.BackColor = &HFF&
    Else
      If a = 3 Then
        Label53.BackColor = &HFF&
      Else
        If a = 4 Then
          Label54.BackColor = &HFF&
        End If
      End If
    End If
  End If
End If
If b = 2 Then
  If a = 1 Then
    Label51.BackColor = &HFFFFFF
  Else
    If a = 2 Then
      Label52.BackColor = &HFFFFFF
    Else
      If a = 3 Then
        Label53.BackColor = &HFFFFFF
      Else
        If a = 4 Then
          Label54.BackColor = &HFFFFFF
        End If
      End If
    End If
  End If
End If
End If

If b = 5 Then
  a = 0
  LabelSS.Visible = False
  Label51.Visible = False
  Label52.Visible = False
  Label53.Visible = False
  Label54.Visible = False
  LabelT1.Visible = False
  LabelT2.Visible = False
  Labelfen.Visible = False
  Labelmiao.Visible = False
  LabelPAUSE.Visible = True
  LabelM.Visible = True
  LabelS.Visible = True
  CommandR.Visible = True
  CommandM.Visible = True
  LabelS = "再接再厉！"
  LabelPAUSE.BackColor = &HFF&
  LabelM.BackColor = &HFF&
  LabelS.BackColor = &HFF&
  b = 0
  Timer2.Enabled = False
  LabelP1.Visible = False
  LabelP2.Visible = False
  LabelP3.Visible = False
If Relay = 2 Or Relay = 1 Then
  LabelS = c
  LabelPAUSE.BackColor = &H80FF80
  LabelM.BackColor = &H80FF80
  LabelS.BackColor = &H80FF80
End If
If Arcade = 2 Or Arcade = 1 Then
  LabelS = c
  LabelPAUSE.BackColor = &H80FF80
  LabelM.BackColor = &H80FF80
  LabelS.BackColor = &H80FF80
End If
End If
End Sub
