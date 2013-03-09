.class public Lcom/android/CSDFunctionG/Proximitytest;
.super Landroid/app/Activity;
.source "Proximitytest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;
    }
.end annotation


# static fields
.field private static final Msg_TEXT:I = 0x2

.field private static final PROXIMITY_FAR_VALUE:I = 0x1

.field private static final PROXIMITY_NEAR_VALUE:I = 0x0

.field private static final PSENSOR_STATE_CHK_DISABLE:Z = true

.field private static final PSENSOR_STATE_CHK_ENABLE:Z = true

.field private static final X_MSG_TEXT:I = 0x1


# instance fields
.field private Button_sublayout:Landroid/widget/LinearLayout;

.field private final LFP:I

.field private final LWC:I

.field private PS_InstructMsg:Landroid/widget/TextView;

.field private PS_NextStepMsg:Landroid/widget/TextView;

.field private PSlocationBox:Landroid/widget/Button;

.field Show_Diag:Z

.field Show_instruction:Z

.field Starttest_flag:I

.field TAG:Ljava/lang/String;

.field private TXTcaption:Landroid/widget/TextView;

.field Test_Thread_Flag:Z

.field private all_layout:Landroid/widget/LinearLayout;

.field g_bDataIn:Z

.field private mHandler:Landroid/os/Handler;

.field private mPSensorMonitor:Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;

.field mSensorManager:Landroid/hardware/SensorManager;

.field m_PsensorObj:Lcom/android/CSDFunctionG/Proximitytest;

.field m_psensorState:F

.field private params2:Landroid/widget/LinearLayout$LayoutParams;

.field private params3:Landroid/widget/LinearLayout$LayoutParams;

.field private params4:Landroid/widget/LinearLayout$LayoutParams;

.field private textlayout:Landroid/widget/LinearLayout;

.field private textlayout2:Landroid/widget/LinearLayout;

.field private tvPsensorMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const-string v0, "Proximity_Test"

    iput-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->LWC:I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->LFP:I

    .line 38
    iput-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->all_layout:Landroid/widget/LinearLayout;

    .line 39
    iput-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->textlayout:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->textlayout2:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->Button_sublayout:Landroid/widget/LinearLayout;

    .line 46
    iput-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->tvPsensorMsg:Landroid/widget/TextView;

    .line 47
    iput-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->PS_InstructMsg:Landroid/widget/TextView;

    .line 48
    iput-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->TXTcaption:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->PS_NextStepMsg:Landroid/widget/TextView;

    .line 50
    iput-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->PSlocationBox:Landroid/widget/Button;

    .line 52
    iput-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->m_PsensorObj:Lcom/android/CSDFunctionG/Proximitytest;

    .line 54
    iput-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->mPSensorMonitor:Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;

    .line 55
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/Proximitytest;->g_bDataIn:Z

    iput-boolean v2, p0, Lcom/android/CSDFunctionG/Proximitytest;->Test_Thread_Flag:Z

    .line 56
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/Proximitytest;->Show_Diag:Z

    iput-boolean v2, p0, Lcom/android/CSDFunctionG/Proximitytest;->Show_instruction:Z

    .line 57
    iput v2, p0, Lcom/android/CSDFunctionG/Proximitytest;->Starttest_flag:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->m_psensorState:F

    .line 222
    new-instance v0, Lcom/android/CSDFunctionG/Proximitytest$3;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/Proximitytest$3;-><init>(Lcom/android/CSDFunctionG/Proximitytest;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object p0, p0, Lcom/android/CSDFunctionG/Proximitytest;->m_PsensorObj:Lcom/android/CSDFunctionG/Proximitytest;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->PS_InstructMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->PS_NextStepMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/CSDFunctionG/Proximitytest;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/CSDFunctionG/Proximitytest;->showText(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/CSDFunctionG/Proximitytest;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private showText(Ljava/lang/String;I)V
    .locals 1
    .parameter "text"
    .parameter "Msg_channel"

    .prologue
    .line 187
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->tvPsensorMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_0
    return-void
.end method


# virtual methods
.method public PassorFail()V
    .locals 4

    .prologue
    .line 196
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 199
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 201
    const v2, 0x7f060009

    new-instance v3, Lcom/android/CSDFunctionG/Proximitytest$1;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/Proximitytest$1;-><init>(Lcom/android/CSDFunctionG/Proximitytest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    const v2, 0x7f06000a

    new-instance v3, Lcom/android/CSDFunctionG/Proximitytest$2;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/Proximitytest$2;-><init>(Lcom/android/CSDFunctionG/Proximitytest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 219
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 221
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
    .locals 10
    .parameter "icicle"

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/16 v6, 0x400

    .line 108
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Proximitytest;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 109
    .local v2, win:Landroid/view/Window;
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Proximitytest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 113
    invoke-virtual {v2, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 114
    invoke-virtual {p0, v8}, Lcom/android/CSDFunctionG/Proximitytest;->requestWindowFeature(I)Z

    .line 116
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v4, v4, 0x5

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v4, v4, 0x3

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->params4:Landroid/widget/LinearLayout$LayoutParams;

    .line 120
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->all_layout:Landroid/widget/LinearLayout;

    .line 121
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->all_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->Button_sublayout:Landroid/widget/LinearLayout;

    .line 124
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->PSlocationBox:Landroid/widget/Button;

    .line 125
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->PSlocationBox:Landroid/widget/Button;

    const v4, 0x7f020026

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 126
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->Button_sublayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Proximitytest;->PSlocationBox:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/CSDFunctionG/Proximitytest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Proximitytest;->Button_sublayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/CSDFunctionG/Proximitytest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->textlayout:Landroid/widget/LinearLayout;

    .line 131
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->PS_InstructMsg:Landroid/widget/TextView;

    .line 132
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->PS_InstructMsg:Landroid/widget/TextView;

    const v4, -0xff0100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->PS_InstructMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 134
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->textlayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Proximitytest;->PS_InstructMsg:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/CSDFunctionG/Proximitytest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Proximitytest;->textlayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/CSDFunctionG/Proximitytest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->textlayout2:Landroid/widget/LinearLayout;

    .line 137
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->PS_NextStepMsg:Landroid/widget/TextView;

    .line 139
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->PS_NextStepMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 140
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Proximitytest;->PS_NextStepMsg:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/CSDFunctionG/Proximitytest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Proximitytest;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/CSDFunctionG/Proximitytest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->all_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/Proximitytest;->setContentView(Landroid/view/View;)V

    .line 146
    invoke-virtual {v2, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 148
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Proximitytest;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f030008

    invoke-virtual {v3, v8, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 150
    const v3, 0x7f080023

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/Proximitytest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->TXTcaption:Landroid/widget/TextView;

    .line 151
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->TXTcaption:Landroid/widget/TextView;

    const v4, 0x7f06005e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 153
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Lcom/android/CSDFunctionG/Proximitytest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    iput-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 155
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 156
    .local v1, psensor:Landroid/hardware/Sensor;
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nvendor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ntype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nmaxRange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nresolution: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getResolution()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\npower: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nSTATUS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0, v1, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 167
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->PS_NextStepMsg:Landroid/widget/TextView;

    const v4, 0x7f06005f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 169
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->m_psensorState:F

    .line 170
    invoke-static {p0}, Lcom/android/CSDFunctionG/GSDtesttool;->BLTestInit(Landroid/app/Activity;)Z

    .line 172
    new-instance v3, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;-><init>(Lcom/android/CSDFunctionG/Proximitytest;)V

    iput-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->mPSensorMonitor:Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;

    .line 173
    iget-object v3, p0, Lcom/android/CSDFunctionG/Proximitytest;->mPSensorMonitor:Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;

    invoke-virtual {v3}, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->start()V

    .line 175
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 336
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 338
    const-string v0, "P-sensor test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Proximitytest;->finish()V

    .line 341
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 78
    .local v0, type:I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->TAG:Ljava/lang/String;

    const-string v2, "onSensorChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    iput v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->m_psensorState:F

    .line 82
    iput-boolean v6, p0, Lcom/android/CSDFunctionG/Proximitytest;->g_bDataIn:Z

    .line 84
    iget v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->m_psensorState:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->TAG:Ljava/lang/String;

    const-string v2, "far"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/16 v1, 0x64

    invoke-static {v5, v1}, Lcom/android/CSDFunctionG/GSDtesttool;->BLSet(II)Z

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->TAG:Ljava/lang/String;

    const-string v2, "near"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 94
    :cond_2
    iget-boolean v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->Show_Diag:Z

    if-nez v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 98
    :cond_3
    iput-boolean v6, p0, Lcom/android/CSDFunctionG/Proximitytest;->Show_Diag:Z

    .line 100
    :cond_4
    const/16 v1, 0xa

    invoke-static {v5, v1}, Lcom/android/CSDFunctionG/GSDtesttool;->BLSet(II)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->Starttest_flag:I

    .line 182
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 317
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->mHandler:Landroid/os/Handler;

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->mPSensorMonitor:Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/CSDFunctionG/Proximitytest;->mPSensorMonitor:Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/Proximitytest$PSensorMonitor;->StopThread()V

    .line 328
    :cond_2
    const/4 v0, 0x0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/android/CSDFunctionG/GSDtesttool;->BLSet(II)Z

    .line 329
    invoke-static {p0}, Lcom/android/CSDFunctionG/GSDtesttool;->BLTestDeinit(Landroid/app/Activity;)Z

    .line 330
    const-string v0, "P-Sensor test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Proximitytest;->finish()V

    .line 332
    return-void
.end method
