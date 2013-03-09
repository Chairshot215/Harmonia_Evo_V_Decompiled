.class public Lcom/android/CSDFunctionG/Gsensortest;
.super Landroid/app/Activity;
.source "Gsensortest.java"

# interfaces
.implements Landroid/hardware/SensorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;
    }
.end annotation


# static fields
.field private static final EVENT_TICK:I = 0x5

.field private static final Msg_TEXT:I = 0x4

.field private static final X_MSG_TEXT:I = 0x1

.field private static final Y_MSG_TEXT:I = 0x2

.field private static final Z_MSG_TEXT:I = 0x3

.field private static count_down:I


# instance fields
.field private Check_Range:Z

.field private Gsensor_instruct:Landroid/widget/TextView;

.field private final LFP:I

.field private final LWC:I

.field private ShowPicture:Landroid/widget/TextView;

.field TAG:Ljava/lang/String;

.field private TXTcaption:Landroid/widget/TextView;

.field Test_Thread_Flag:Z

.field private all_layout:Landroid/widget/LinearLayout;

.field g_bDataIn:Z

.field private mAcceValues:[F

.field private mGSensorMonitor:Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;

.field private mHandler:Landroid/os/Handler;

.field mSensorManager:Landroid/hardware/SensorManager;

.field private m_fGsensorXmax:F

.field private m_fGsensorXmin:F

.field private m_fGsensorYmax:F

.field private m_fGsensorYmin:F

.field private m_fGsensorZmax:F

.field private m_fGsensorZmin:F

.field m_gsensorObj:Lcom/android/CSDFunctionG/Gsensortest;

.field private params2:Landroid/widget/LinearLayout$LayoutParams;

.field private params3:Landroid/widget/LinearLayout$LayoutParams;

.field private params4:Landroid/widget/LinearLayout$LayoutParams;

.field private textlayout:Landroid/widget/LinearLayout;

.field private textlayout2:Landroid/widget/LinearLayout;

.field private tvGsensorMsg:Landroid/widget/TextView;

.field private tvX_value:Landroid/widget/TextView;

.field private tvY_value:Landroid/widget/TextView;

.field private tvZ_value:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x3

    sput v0, Lcom/android/CSDFunctionG/Gsensortest;->count_down:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, "G-SensorTest"

    iput-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->LWC:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->LFP:I

    .line 35
    iput-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest;->all_layout:Landroid/widget/LinearLayout;

    .line 36
    iput-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout2:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvX_value:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvY_value:Landroid/widget/TextView;

    .line 43
    iput-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvZ_value:Landroid/widget/TextView;

    .line 44
    iput-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvGsensorMsg:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest;->Gsensor_instruct:Landroid/widget/TextView;

    .line 46
    iput-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest;->TXTcaption:Landroid/widget/TextView;

    .line 47
    iput-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest;->ShowPicture:Landroid/widget/TextView;

    .line 48
    iput-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest;->m_gsensorObj:Lcom/android/CSDFunctionG/Gsensortest;

    .line 50
    iput-object v1, p0, Lcom/android/CSDFunctionG/Gsensortest;->mGSensorMonitor:Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;

    .line 53
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->g_bDataIn:Z

    iput-boolean v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->Test_Thread_Flag:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->Check_Range:Z

    .line 221
    new-instance v0, Lcom/android/CSDFunctionG/Gsensortest$3;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/Gsensortest$3;-><init>(Lcom/android/CSDFunctionG/Gsensortest;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object p0, p0, Lcom/android/CSDFunctionG/Gsensortest;->m_gsensorObj:Lcom/android/CSDFunctionG/Gsensortest;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/CSDFunctionG/Gsensortest;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/CSDFunctionG/Gsensortest;->showText(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/android/CSDFunctionG/Gsensortest;->count_down:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/CSDFunctionG/Gsensortest;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorXmin:F

    return v0
.end method

.method static synthetic access$110()I
    .locals 2

    .prologue
    .line 30
    sget v0, Lcom/android/CSDFunctionG/Gsensortest;->count_down:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/android/CSDFunctionG/Gsensortest;->count_down:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/CSDFunctionG/Gsensortest;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorXmax:F

    return v0
.end method

.method static synthetic access$1200(Lcom/android/CSDFunctionG/Gsensortest;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorYmin:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/CSDFunctionG/Gsensortest;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorYmax:F

    return v0
.end method

.method static synthetic access$1400(Lcom/android/CSDFunctionG/Gsensortest;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorZmin:F

    return v0
.end method

.method static synthetic access$1500(Lcom/android/CSDFunctionG/Gsensortest;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorZmax:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/CSDFunctionG/Gsensortest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->Check_Range:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/CSDFunctionG/Gsensortest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/CSDFunctionG/Gsensortest;->Check_Range:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvX_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvY_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvZ_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->Gsensor_instruct:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/CSDFunctionG/Gsensortest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->ShowPicture:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/CSDFunctionG/Gsensortest;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F

    return-object v0
.end method

.method private showText(Ljava/lang/String;I)V
    .locals 1
    .parameter "text"
    .parameter "XYZ_channel"

    .prologue
    .line 177
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvX_value:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvY_value:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 181
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvZ_value:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 183
    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvGsensorMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Gsensortest;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public PassorFail()V
    .locals 6

    .prologue
    .line 193
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f060008

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 196
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 198
    const v4, 0x7f060009

    new-instance v5, Lcom/android/CSDFunctionG/Gsensortest$1;

    invoke-direct {v5, p0}, Lcom/android/CSDFunctionG/Gsensortest$1;-><init>(Lcom/android/CSDFunctionG/Gsensortest;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    const v4, 0x7f06000a

    new-instance v5, Lcom/android/CSDFunctionG/Gsensortest$2;

    invoke-direct {v5, p0}, Lcom/android/CSDFunctionG/Gsensortest$2;-><init>(Lcom/android/CSDFunctionG/Gsensortest;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 212
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 213
    .local v3, w:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 215
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0xa

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 216
    const/16 v4, 0x64

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 220
    return-void
.end method

.method public onAccuracyChanged(II)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 70
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/high16 v5, 0x4170

    .line 84
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Gsensortest;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 85
    .local v1, win:Landroid/view/Window;
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 87
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Gsensortest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    const/16 v2, 0x400

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 90
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/Gsensortest;->requestWindowFeature(I)Z

    .line 92
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    .line 93
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    .line 94
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->params4:Landroid/widget/LinearLayout$LayoutParams;

    .line 96
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->all_layout:Landroid/widget/LinearLayout;

    .line 97
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->all_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout:Landroid/widget/LinearLayout;

    .line 101
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->ShowPicture:Landroid/widget/TextView;

    .line 103
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest;->ShowPicture:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout2:Landroid/widget/LinearLayout;

    .line 109
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvX_value:Landroid/widget/TextView;

    .line 112
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvY_value:Landroid/widget/TextView;

    .line 113
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvZ_value:Landroid/widget/TextView;

    .line 114
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvGsensorMsg:Landroid/widget/TextView;

    .line 116
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvX_value:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 117
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvY_value:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 118
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvZ_value:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvGsensorMsg:Landroid/widget/TextView;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvX_value:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest;->params4:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvY_value:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest;->params4:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvZ_value:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest;->params4:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest;->tvGsensorMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest;->params4:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout2:Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 128
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout:Landroid/widget/LinearLayout;

    .line 131
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 133
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->Gsensor_instruct:Landroid/widget/TextView;

    .line 134
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->Gsensor_instruct:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 135
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->Gsensor_instruct:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 136
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest;->Gsensor_instruct:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/Gsensortest;->textlayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/Gsensortest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->all_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/Gsensortest;->setContentView(Landroid/view/View;)V

    .line 143
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->ShowPicture:Landroid/widget/TextView;

    const v3, 0x7f020011

    invoke-virtual {v2, v7, v3, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 145
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->Gsensor_instruct:Landroid/widget/TextView;

    const v3, 0x7f06005d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Gsensortest;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x7

    const v4, 0x7f030008

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 149
    const v2, 0x7f080023

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/Gsensortest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->TXTcaption:Landroid/widget/TextView;

    .line 150
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->TXTcaption:Landroid/widget/TextView;

    const v3, 0x7f06005c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 152
    sget-object v2, Lcom/android/CSDFunctionG/GSD_DLL;->GsensorXmax:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorXmax:F

    .line 153
    sget-object v2, Lcom/android/CSDFunctionG/GSD_DLL;->GsensorXmin:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorXmin:F

    .line 154
    sget-object v2, Lcom/android/CSDFunctionG/GSD_DLL;->GsensorYmax:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorYmax:F

    .line 155
    sget-object v2, Lcom/android/CSDFunctionG/GSD_DLL;->GsensorYmin:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorYmin:F

    .line 156
    sget-object v2, Lcom/android/CSDFunctionG/GSD_DLL;->GsensorZmax:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorZmax:F

    .line 157
    sget-object v2, Lcom/android/CSDFunctionG/GSD_DLL;->GsensorZmin:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->m_fGsensorZmin:F

    .line 159
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/Gsensortest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 160
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;I)Z

    .line 162
    new-instance v2, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;

    invoke-direct {v2, p0}, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;-><init>(Lcom/android/CSDFunctionG/Gsensortest;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->mGSensorMonitor:Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;

    .line 163
    iget-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->mGSensorMonitor:Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;

    invoke-virtual {v2}, Lcom/android/CSDFunctionG/Gsensortest$GSensorMonitor;->start()V

    .line 165
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 418
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 420
    const-string v0, "G-sensor test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Gsensortest;->finish()V

    .line 422
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 388
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 393
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 170
    const/4 v0, 0x3

    sput v0, Lcom/android/CSDFunctionG/Gsensortest;->count_down:I

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->Check_Range:Z

    .line 172
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 174
    :cond_0
    return-void
.end method

.method public onSensorChanged(I[F)V
    .locals 2
    .parameter "sensor"
    .parameter "values"

    .prologue
    .line 74
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->TAG:Ljava/lang/String;

    const-string v1, "onSensorChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput-object p2, p0, Lcom/android/CSDFunctionG/Gsensortest;->mAcceValues:[F

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->g_bDataIn:Z

    .line 80
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 398
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 401
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 405
    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->mHandler:Landroid/os/Handler;

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/android/CSDFunctionG/Gsensortest;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;)V

    .line 409
    iput-object v2, p0, Lcom/android/CSDFunctionG/Gsensortest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 412
    :cond_2
    const-string v0, "G-sensor test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/Gsensortest;->finish()V

    .line 414
    return-void
.end method
