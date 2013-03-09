.class public Lcom/android/CSDFunctionG/lightsensor;
.super Landroid/app/Activity;
.source "lightsensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final Msg_TEXT:I = 0x2

.field private static final X_MSG_TEXT:I = 0x1


# instance fields
.field private Button_sublayout:Landroid/widget/LinearLayout;

.field private final LFP:I

.field private LS_InstructMsg:Landroid/widget/TextView;

.field private LS_NextStepMsg:Landroid/widget/TextView;

.field private LSlocationBox:Landroid/widget/Button;

.field private final LWC:I

.field Starttest_flag:I

.field TAG:Ljava/lang/String;

.field private TXTcaption:Landroid/widget/TextView;

.field Test_Thread_Flag:Z

.field private all_layout:Landroid/widget/LinearLayout;

.field g_bDataIn:Z

.field public g_lisghtvalue:F

.field g_showInfo:Z

.field g_showdiag:Z

.field private mHandler:Landroid/os/Handler;

.field mSensorManager:Landroid/hardware/SensorManager;

.field m_lsensorObj:Lcom/android/CSDFunctionG/lightsensor;

.field private params2:Landroid/widget/LinearLayout$LayoutParams;

.field private params3:Landroid/widget/LinearLayout$LayoutParams;

.field private params4:Landroid/widget/LinearLayout$LayoutParams;

.field private textlayout:Landroid/widget/LinearLayout;

.field private textlayout2:Landroid/widget/LinearLayout;

.field private tvLSMsg:Landroid/widget/TextView;

.field private tvX_value:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const-string v0, "lightsensor_Test"

    iput-object v0, p0, Lcom/android/CSDFunctionG/lightsensor;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/CSDFunctionG/lightsensor;->LWC:I

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/CSDFunctionG/lightsensor;->LFP:I

    .line 42
    iput-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->all_layout:Landroid/widget/LinearLayout;

    .line 43
    iput-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->textlayout:Landroid/widget/LinearLayout;

    .line 44
    iput-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->textlayout2:Landroid/widget/LinearLayout;

    .line 45
    iput-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->Button_sublayout:Landroid/widget/LinearLayout;

    .line 49
    iput-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->tvX_value:Landroid/widget/TextView;

    .line 50
    iput-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->tvLSMsg:Landroid/widget/TextView;

    .line 51
    iput-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->LS_InstructMsg:Landroid/widget/TextView;

    .line 52
    iput-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->LS_NextStepMsg:Landroid/widget/TextView;

    .line 53
    iput-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->TXTcaption:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->LSlocationBox:Landroid/widget/Button;

    .line 56
    iput-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->m_lsensorObj:Lcom/android/CSDFunctionG/lightsensor;

    .line 59
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/lightsensor;->g_bDataIn:Z

    iput-boolean v2, p0, Lcom/android/CSDFunctionG/lightsensor;->Test_Thread_Flag:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/lightsensor;->g_showdiag:Z

    iput-boolean v2, p0, Lcom/android/CSDFunctionG/lightsensor;->g_showInfo:Z

    .line 61
    iput v2, p0, Lcom/android/CSDFunctionG/lightsensor;->Starttest_flag:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/CSDFunctionG/lightsensor;->g_lisghtvalue:F

    .line 246
    new-instance v0, Lcom/android/CSDFunctionG/lightsensor$3;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/lightsensor$3;-><init>(Lcom/android/CSDFunctionG/lightsensor;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/lightsensor;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object p0, p0, Lcom/android/CSDFunctionG/lightsensor;->m_lsensorObj:Lcom/android/CSDFunctionG/lightsensor;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/CSDFunctionG/lightsensor;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor;->LS_InstructMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/CSDFunctionG/lightsensor;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor;->LS_NextStepMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/CSDFunctionG/lightsensor;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/CSDFunctionG/lightsensor;->showText(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/CSDFunctionG/lightsensor;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor;->tvLSMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method private showText(Ljava/lang/String;I)V
    .locals 1
    .parameter "text"
    .parameter "Msg_channel"

    .prologue
    .line 239
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor;->tvX_value:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor;->tvLSMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public PassorFail()V
    .locals 6

    .prologue
    .line 204
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f060008

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 207
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 209
    const v4, 0x7f060009

    new-instance v5, Lcom/android/CSDFunctionG/lightsensor$1;

    invoke-direct {v5, p0}, Lcom/android/CSDFunctionG/lightsensor$1;-><init>(Lcom/android/CSDFunctionG/lightsensor;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    const v4, 0x7f06000a

    new-instance v5, Lcom/android/CSDFunctionG/lightsensor$2;

    invoke-direct {v5, p0}, Lcom/android/CSDFunctionG/lightsensor$2;-><init>(Lcom/android/CSDFunctionG/lightsensor;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 227
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 228
    .local v3, w:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 230
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0xa

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 231
    const/16 v4, 0xb4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 234
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 236
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v4, -0x1

    const/16 v6, 0x400

    const/16 v5, 0x11

    .line 119
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/lightsensor;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 120
    .local v1, win:Landroid/view/Window;
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 122
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/lightsensor;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 124
    invoke-virtual {v1, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 125
    invoke-virtual {p0, v8}, Lcom/android/CSDFunctionG/lightsensor;->requestWindowFeature(I)Z

    .line 127
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->params2:Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x5

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->params3:Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->params4:Landroid/widget/LinearLayout$LayoutParams;

    .line 131
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->all_layout:Landroid/widget/LinearLayout;

    .line 132
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->all_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 134
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->Button_sublayout:Landroid/widget/LinearLayout;

    .line 135
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->LSlocationBox:Landroid/widget/Button;

    .line 136
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->LSlocationBox:Landroid/widget/Button;

    const v3, 0x7f020026

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 138
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->Button_sublayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/lightsensor;->LSlocationBox:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/CSDFunctionG/lightsensor;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/lightsensor;->Button_sublayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/lightsensor;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->textlayout:Landroid/widget/LinearLayout;

    .line 142
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->textlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->LS_InstructMsg:Landroid/widget/TextView;

    .line 145
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->LS_InstructMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 146
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->textlayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/lightsensor;->LS_InstructMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/lightsensor;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->tvX_value:Landroid/widget/TextView;

    .line 148
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->tvX_value:Landroid/widget/TextView;

    const/high16 v3, 0x4170

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->tvX_value:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 150
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->textlayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/lightsensor;->tvX_value:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/lightsensor;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/lightsensor;->textlayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/lightsensor;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->textlayout:Landroid/widget/LinearLayout;

    .line 155
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->tvLSMsg:Landroid/widget/TextView;

    .line 156
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->tvLSMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 157
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->tvLSMsg:Landroid/widget/TextView;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 159
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->textlayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/lightsensor;->tvLSMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/lightsensor;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/lightsensor;->textlayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/lightsensor;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->textlayout2:Landroid/widget/LinearLayout;

    .line 163
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->textlayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 165
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->LS_NextStepMsg:Landroid/widget/TextView;

    .line 166
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->LS_NextStepMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 168
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/lightsensor;->LS_NextStepMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/lightsensor;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/lightsensor;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/lightsensor;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->all_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/lightsensor;->setContentView(Landroid/view/View;)V

    .line 172
    invoke-virtual {v1, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 174
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/lightsensor;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f030008

    invoke-virtual {v2, v8, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 176
    const v2, 0x7f080023

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/lightsensor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->TXTcaption:Landroid/widget/TextView;

    .line 177
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->TXTcaption:Landroid/widget/TextView;

    const v3, 0x7f060061

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->LS_NextStepMsg:Landroid/widget/TextView;

    const v3, 0x7f060062

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 181
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 294
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 296
    const-string v0, "Light-sensor test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/lightsensor;->finish()V

    .line 299
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 76
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 78
    .local v1, type:I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->TAG:Ljava/lang/String;

    const-string v3, "onSensorChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 82
    .local v0, lightLevel:F
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lux value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-boolean v2, p0, Lcom/android/CSDFunctionG/lightsensor;->g_showdiag:Z

    if-nez v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->mHandler:Landroid/os/Handler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lux value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 88
    :cond_0
    iput-boolean v6, p0, Lcom/android/CSDFunctionG/lightsensor;->g_bDataIn:Z

    .line 89
    iget v2, p0, Lcom/android/CSDFunctionG/lightsensor;->g_lisghtvalue:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 91
    iput v0, p0, Lcom/android/CSDFunctionG/lightsensor;->g_lisghtvalue:F

    .line 114
    .end local v0           #lightLevel:F
    :cond_1
    :goto_0
    return-void

    .line 95
    .restart local v0       #lightLevel:F
    :cond_2
    iget v2, p0, Lcom/android/CSDFunctionG/lightsensor;->g_lisghtvalue:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 98
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 99
    :cond_3
    iget-boolean v2, p0, Lcom/android/CSDFunctionG/lightsensor;->g_showInfo:Z

    if-nez v2, :cond_4

    .line 101
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_4

    .line 102
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->mHandler:Landroid/os/Handler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     PASS    \n Lux value(before): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/CSDFunctionG/lightsensor;->g_lisghtvalue:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n Lux value(After):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 105
    :cond_4
    iget-boolean v2, p0, Lcom/android/CSDFunctionG/lightsensor;->g_showdiag:Z

    if-nez v2, :cond_1

    .line 107
    iput-boolean v6, p0, Lcom/android/CSDFunctionG/lightsensor;->g_showdiag:Z

    .line 108
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 186
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/CSDFunctionG/lightsensor;->Starttest_flag:I

    .line 187
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/CSDFunctionG/lightsensor;->g_lisghtvalue:F

    .line 188
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/android/CSDFunctionG/lightsensor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 190
    iget-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 191
    .local v0, lightsensor:Landroid/hardware/Sensor;
    iget-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nvendor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ntype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nmaxRange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nresolution: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getResolution()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\npower: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getPower()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nSTATUS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v1, p0, Lcom/android/CSDFunctionG/lightsensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 201
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 278
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 281
    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->mHandler:Landroid/os/Handler;

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/CSDFunctionG/lightsensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 285
    iput-object v2, p0, Lcom/android/CSDFunctionG/lightsensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 288
    :cond_2
    const-string v0, "Light-Sensor test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/lightsensor;->finish()V

    .line 290
    return-void
.end method
