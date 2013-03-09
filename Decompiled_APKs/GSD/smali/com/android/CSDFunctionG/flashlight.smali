.class public Lcom/android/CSDFunctionG/flashlight;
.super Landroid/app/Activity;
.source "flashlight.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static TXTcaption:Landroid/widget/TextView;

.field public static flashlight_InstructMsg:Landroid/widget/TextView;

.field public static flashlight_NextStepMsg:Landroid/widget/TextView;


# instance fields
.field private Button_sublayout:Landroid/widget/LinearLayout;

.field Flashlightlog:Ljava/lang/String;

.field private final LFP:I

.field private final LWC:I

.field private all_layout:Landroid/widget/LinearLayout;

.field bflashlight:Z

.field public g_mode:I

.field private mHandler:Landroid/os/Handler;

.field private mbuttonflashlight:Landroid/widget/Button;

.field private params2:Landroid/widget/LinearLayout$LayoutParams;

.field private params3:Landroid/widget/LinearLayout$LayoutParams;

.field private params4:Landroid/widget/LinearLayout$LayoutParams;

.field private textlayout:Landroid/widget/LinearLayout;

.field private textlayout2:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/android/CSDFunctionG/flashlight;->TXTcaption:Landroid/widget/TextView;

    .line 40
    sput-object v0, Lcom/android/CSDFunctionG/flashlight;->flashlight_InstructMsg:Landroid/widget/TextView;

    .line 41
    sput-object v0, Lcom/android/CSDFunctionG/flashlight;->flashlight_NextStepMsg:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/flashlight;->bflashlight:Z

    .line 26
    const-string v0, "flashlight test:\r\n"

    iput-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->Flashlightlog:Ljava/lang/String;

    .line 27
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/CSDFunctionG/flashlight;->LWC:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/CSDFunctionG/flashlight;->LFP:I

    .line 34
    iput-object v1, p0, Lcom/android/CSDFunctionG/flashlight;->all_layout:Landroid/widget/LinearLayout;

    .line 35
    iput-object v1, p0, Lcom/android/CSDFunctionG/flashlight;->Button_sublayout:Landroid/widget/LinearLayout;

    .line 36
    iput-object v1, p0, Lcom/android/CSDFunctionG/flashlight;->textlayout:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, p0, Lcom/android/CSDFunctionG/flashlight;->textlayout2:Landroid/widget/LinearLayout;

    .line 43
    iput-object v1, p0, Lcom/android/CSDFunctionG/flashlight;->mbuttonflashlight:Landroid/widget/Button;

    .line 44
    iput v2, p0, Lcom/android/CSDFunctionG/flashlight;->g_mode:I

    .line 145
    new-instance v0, Lcom/android/CSDFunctionG/flashlight$3;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/flashlight$3;-><init>(Lcom/android/CSDFunctionG/flashlight;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/CSDFunctionG/flashlight;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->mbuttonflashlight:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public PassorFail(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/CSDFunctionG/flashlight;->g_mode:I

    .line 102
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 107
    const v2, 0x7f060009

    new-instance v3, Lcom/android/CSDFunctionG/flashlight$1;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/flashlight$1;-><init>(Lcom/android/CSDFunctionG/flashlight;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    const v2, 0x7f06000a

    new-instance v3, Lcom/android/CSDFunctionG/flashlight$2;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/flashlight$2;-><init>(Lcom/android/CSDFunctionG/flashlight;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 141
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 143
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "viewObject"

    .prologue
    const-wide/16 v4, 0x7d0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->mbuttonflashlight:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 167
    iget-boolean v0, p0, Lcom/android/CSDFunctionG/flashlight;->bflashlight:Z

    if-nez v0, :cond_2

    .line 169
    iput-boolean v3, p0, Lcom/android/CSDFunctionG/flashlight;->bflashlight:Z

    .line 170
    invoke-static {v3}, Lcom/android/CSDFunctionG/GSD_DLL;->changeFlashlight(I)V

    .line 171
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->mbuttonflashlight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    sget-object v0, Lcom/android/CSDFunctionG/flashlight;->flashlight_InstructMsg:Landroid/widget/TextView;

    const v1, 0x7f020010

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 173
    sget-object v0, Lcom/android/CSDFunctionG/flashlight;->flashlight_InstructMsg:Landroid/widget/TextView;

    const v1, 0x7f060024

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 176
    :cond_0
    sget-object v0, Lcom/android/CSDFunctionG/flashlight;->flashlight_NextStepMsg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/flashlight;->bflashlight:Z

    .line 181
    invoke-static {v2}, Lcom/android/CSDFunctionG/GSD_DLL;->changeFlashlight(I)V

    .line 182
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->mbuttonflashlight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    sget-object v0, Lcom/android/CSDFunctionG/flashlight;->flashlight_InstructMsg:Landroid/widget/TextView;

    const v1, 0x7f02000f

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 184
    sget-object v0, Lcom/android/CSDFunctionG/flashlight;->flashlight_InstructMsg:Landroid/widget/TextView;

    const v1, 0x7f060026

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 187
    :cond_3
    sget-object v0, Lcom/android/CSDFunctionG/flashlight;->flashlight_NextStepMsg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/16 v7, 0x400

    const/4 v6, 0x7

    const/16 v5, 0x11

    const/4 v4, -0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/flashlight;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 52
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 53
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/flashlight;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    invoke-virtual {p0, v6}, Lcom/android/CSDFunctionG/flashlight;->requestWindowFeature(I)Z

    .line 56
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->params2:Landroid/widget/LinearLayout$LayoutParams;

    .line 57
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->params3:Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->params4:Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->all_layout:Landroid/widget/LinearLayout;

    .line 61
    iget-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->all_layout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->textlayout:Landroid/widget/LinearLayout;

    .line 66
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/CSDFunctionG/flashlight;->flashlight_InstructMsg:Landroid/widget/TextView;

    .line 68
    sget-object v2, Lcom/android/CSDFunctionG/flashlight;->flashlight_InstructMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    sget-object v2, Lcom/android/CSDFunctionG/flashlight;->flashlight_InstructMsg:Landroid/widget/TextView;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->textlayout:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/CSDFunctionG/flashlight;->flashlight_InstructMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/flashlight;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/flashlight;->textlayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/flashlight;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->Button_sublayout:Landroid/widget/LinearLayout;

    .line 74
    iget-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->Button_sublayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->mbuttonflashlight:Landroid/widget/Button;

    .line 76
    iget-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->mbuttonflashlight:Landroid/widget/Button;

    const-string v3, "On"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->mbuttonflashlight:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->Button_sublayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/flashlight;->mbuttonflashlight:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/CSDFunctionG/flashlight;->params4:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/flashlight;->Button_sublayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/flashlight;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->textlayout2:Landroid/widget/LinearLayout;

    .line 83
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/CSDFunctionG/flashlight;->flashlight_NextStepMsg:Landroid/widget/TextView;

    .line 85
    sget-object v2, Lcom/android/CSDFunctionG/flashlight;->flashlight_NextStepMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 86
    iget-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->textlayout2:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/CSDFunctionG/flashlight;->flashlight_NextStepMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/flashlight;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/flashlight;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/flashlight;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v2, p0, Lcom/android/CSDFunctionG/flashlight;->all_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/flashlight;->setContentView(Landroid/view/View;)V

    .line 91
    invoke-virtual {v1, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 92
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/flashlight;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f030008

    invoke-virtual {v2, v6, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 94
    const v2, 0x7f080023

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/flashlight;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/CSDFunctionG/flashlight;->TXTcaption:Landroid/widget/TextView;

    .line 95
    sget-object v2, Lcom/android/CSDFunctionG/flashlight;->TXTcaption:Landroid/widget/TextView;

    const v3, 0x7f060021

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 96
    sget-object v2, Lcom/android/CSDFunctionG/flashlight;->flashlight_NextStepMsg:Landroid/widget/TextView;

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/CSDFunctionG/flashlight;->mHandler:Landroid/os/Handler;

    .line 205
    :cond_1
    invoke-static {v2}, Lcom/android/CSDFunctionG/GSD_DLL;->changeFlashlight(I)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/CSDFunctionG/flashlight;->Flashlightlog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 207
    const-string v0, "flashlight test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 210
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 214
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 216
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSD_DLL;->changeFlashlight(I)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/CSDFunctionG/flashlight;->Flashlightlog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 218
    const-string v0, "flashlight test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/flashlight;->finish()V

    .line 221
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
