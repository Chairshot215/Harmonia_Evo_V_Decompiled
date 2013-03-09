.class public Lcom/android/CSDFunctionG/ledtest;
.super Landroid/app/Activity;
.source "ledtest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EDIT:I = 0x1

.field public static LEDMSGTV:Landroid/widget/TextView; = null

.field public static LEDmsg:Landroid/widget/TextView; = null

.field public static Led_NextStepMsg:Landroid/widget/TextView; = null

.field static final TAG:Ljava/lang/String; = "CSD_LEDtest"

.field public static TXTcaption:Landroid/widget/TextView;


# instance fields
.field private Button_sublayout:Landroid/widget/LinearLayout;

.field LED_MAPS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final LFP:I

.field private final LWC:I

.field private PictureBox:Landroid/widget/Button;

.field Start_LEDTest_flag:Z

.field private all_layout:Landroid/widget/LinearLayout;

.field private g_mPressedTestBtn:Landroid/widget/Button;

.field ledlog:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mbutton_LED:Landroid/widget/Button;

.field private mode:I

.field private params2:Landroid/widget/LinearLayout$LayoutParams;

.field private params3:Landroid/widget/LinearLayout$LayoutParams;

.field private params4:Landroid/widget/LinearLayout$LayoutParams;

.field private params5:Landroid/widget/LinearLayout$LayoutParams;

.field private textlayout:Landroid/widget/LinearLayout;

.field private textlayout2:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/android/CSDFunctionG/ledtest;->TXTcaption:Landroid/widget/TextView;

    .line 45
    sput-object v0, Lcom/android/CSDFunctionG/ledtest;->LEDMSGTV:Landroid/widget/TextView;

    .line 46
    sput-object v0, Lcom/android/CSDFunctionG/ledtest;->LEDmsg:Landroid/widget/TextView;

    .line 47
    sput-object v0, Lcom/android/CSDFunctionG/ledtest;->Led_NextStepMsg:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const-string v0, "LED test\r\n"

    iput-object v0, p0, Lcom/android/CSDFunctionG/ledtest;->ledlog:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/ledtest;->LED_MAPS:Ljava/util/HashMap;

    .line 28
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/CSDFunctionG/ledtest;->LWC:I

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/CSDFunctionG/ledtest;->LFP:I

    .line 36
    iput-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->all_layout:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->Button_sublayout:Landroid/widget/LinearLayout;

    .line 38
    iput-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->textlayout:Landroid/widget/LinearLayout;

    .line 39
    iput-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->textlayout2:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->mbutton_LED:Landroid/widget/Button;

    .line 42
    iput-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->PictureBox:Landroid/widget/Button;

    .line 43
    iput-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->g_mPressedTestBtn:Landroid/widget/Button;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/CSDFunctionG/ledtest;->Start_LEDTest_flag:Z

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/CSDFunctionG/ledtest;->mode:I

    .line 91
    new-instance v0, Lcom/android/CSDFunctionG/ledtest$1;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/ledtest$1;-><init>(Lcom/android/CSDFunctionG/ledtest;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/ledtest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/CSDFunctionG/ledtest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest;->mbutton_LED:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/CSDFunctionG/ledtest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/CSDFunctionG/ledtest;->mode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/CSDFunctionG/ledtest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/CSDFunctionG/ledtest;->mode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/CSDFunctionG/ledtest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest;->g_mPressedTestBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/CSDFunctionG/ledtest;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/CSDFunctionG/ledtest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest;->PictureBox:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public PassorFail()V
    .locals 6

    .prologue
    .line 168
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 171
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 173
    const v2, 0x7f060009

    new-instance v3, Lcom/android/CSDFunctionG/ledtest$2;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/ledtest$2;-><init>(Lcom/android/CSDFunctionG/ledtest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    const v2, 0x7f06000a

    new-instance v3, Lcom/android/CSDFunctionG/ledtest$3;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/ledtest$3;-><init>(Lcom/android/CSDFunctionG/ledtest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 211
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 212
    iget-object v2, p0, Lcom/android/CSDFunctionG/ledtest;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/CSDFunctionG/ledtest;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 215
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "viewObject"

    .prologue
    const/4 v4, 0x0

    .line 129
    check-cast p1, Landroid/widget/Button;

    .end local p1
    iput-object p1, p0, Lcom/android/CSDFunctionG/ledtest;->g_mPressedTestBtn:Landroid/widget/Button;

    .line 130
    iget-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->g_mPressedTestBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, strBtnName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/CSDFunctionG/GSD_DLL;->SetLED(Ljava/lang/String;)V

    .line 132
    sget-object v1, Lcom/android/CSDFunctionG/ledtest;->LEDMSGTV:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSD_DLL;->SetLEDResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    sget-object v1, Lcom/android/CSDFunctionG/ledtest;->Led_NextStepMsg:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSD_DLL;->SetLEDNextStep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    sget-object v1, Lcom/android/CSDFunctionG/ledtest;->Led_NextStepMsg:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->g_mPressedTestBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    :cond_0
    iget v1, p0, Lcom/android/CSDFunctionG/ledtest;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 141
    iget-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->PictureBox:Landroid/widget/Button;

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 142
    iget-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->PictureBox:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    iget v1, p0, Lcom/android/CSDFunctionG/ledtest;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 146
    iget-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->PictureBox:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_3
    iget v1, p0, Lcom/android/CSDFunctionG/ledtest;->mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->PictureBox:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x7

    .line 54
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/ledtest;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 56
    .local v1, win:Landroid/view/Window;
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0, v4}, Lcom/android/CSDFunctionG/ledtest;->requestWindowFeature(I)Z

    .line 58
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/ledtest;->setContentView(I)V

    .line 60
    const v2, 0x7f08001d

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/ledtest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/CSDFunctionG/ledtest;->PictureBox:Landroid/widget/Button;

    .line 61
    const v2, 0x7f08001e

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/ledtest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/CSDFunctionG/ledtest;->LEDMSGTV:Landroid/widget/TextView;

    .line 62
    sget-object v2, Lcom/android/CSDFunctionG/ledtest;->LEDMSGTV:Landroid/widget/TextView;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    const v2, 0x7f08001f

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/ledtest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/CSDFunctionG/ledtest;->mbutton_LED:Landroid/widget/Button;

    .line 64
    const v2, 0x7f080020

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/ledtest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/CSDFunctionG/ledtest;->Led_NextStepMsg:Landroid/widget/TextView;

    .line 66
    invoke-static {}, Lcom/android/CSDFunctionG/GSD_DLL;->initLED()V

    .line 67
    iget-object v2, p0, Lcom/android/CSDFunctionG/ledtest;->mbutton_LED:Landroid/widget/Button;

    iget v3, p0, Lcom/android/CSDFunctionG/ledtest;->mode:I

    invoke-static {v3}, Lcom/android/CSDFunctionG/GSD_DLL;->get_LEDTestString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, p0, Lcom/android/CSDFunctionG/ledtest;->mbutton_LED:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v2, p0, Lcom/android/CSDFunctionG/ledtest;->PictureBox:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 71
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/ledtest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 78
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/ledtest;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f030008

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 80
    const v2, 0x7f080023

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/ledtest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/CSDFunctionG/ledtest;->TXTcaption:Landroid/widget/TextView;

    .line 81
    sget-object v2, Lcom/android/CSDFunctionG/ledtest;->TXTcaption:Landroid/widget/TextView;

    const v3, 0x7f060020

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 83
    invoke-static {}, Lcom/android/CSDFunctionG/GSD_DLL;->set_LEDfilemode()V

    .line 84
    invoke-static {}, Lcom/android/CSDFunctionG/GSD_DLL;->TurnoffAllLEDs()V

    .line 85
    sget-object v2, Lcom/android/CSDFunctionG/ledtest;->Led_NextStepMsg:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/CSDFunctionG/GSD_DLL;->initLED_Instruction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 239
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 155
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 158
    invoke-static {}, Lcom/android/CSDFunctionG/GSD_DLL;->TurnoffAllLEDs()V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->ledlog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 160
    const-string v0, "LED test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/ledtest;->finish()V

    .line 163
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 220
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/ledtest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/CSDFunctionG/ledtest;->mHandler:Landroid/os/Handler;

    .line 229
    :cond_1
    invoke-static {}, Lcom/android/CSDFunctionG/GSD_DLL;->TurnoffAllLEDs()V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/CSDFunctionG/ledtest;->ledlog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 231
    const-string v0, "LED test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/ledtest;->finish()V

    .line 233
    return-void
.end method
