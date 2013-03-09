.class public Lcom/android/CSDFunctionG/vibratortest;
.super Landroid/app/Activity;
.source "vibratortest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static TXTcaption:Landroid/widget/TextView;

.field public static Vib_InstructMsg:Landroid/widget/TextView;

.field public static Vib_NextStepMsg:Landroid/widget/TextView;


# instance fields
.field private Button_sublayout:Landroid/widget/LinearLayout;

.field private final LFP:I

.field private final LWC:I

.field Viblog:Ljava/lang/String;

.field private all_layout:Landroid/widget/LinearLayout;

.field bVibrate:Z

.field public g_mode:I

.field private mHandler:Landroid/os/Handler;

.field mVibrator:Landroid/os/Vibrator;

.field private mbuttonvibrator:Landroid/widget/Button;

.field private params1:Landroid/widget/LinearLayout$LayoutParams;

.field private params2:Landroid/widget/LinearLayout$LayoutParams;

.field private params3:Landroid/widget/LinearLayout$LayoutParams;

.field private params4:Landroid/widget/LinearLayout$LayoutParams;

.field pattern:[J

.field private textlayout:Landroid/widget/LinearLayout;

.field private textlayout2:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/android/CSDFunctionG/vibratortest;->TXTcaption:Landroid/widget/TextView;

    .line 44
    sput-object v0, Lcom/android/CSDFunctionG/vibratortest;->Vib_InstructMsg:Landroid/widget/TextView;

    .line 45
    sput-object v0, Lcom/android/CSDFunctionG/vibratortest;->Vib_NextStepMsg:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/vibratortest;->bVibrate:Z

    .line 27
    const-string v0, "Vibrator test:\r\n"

    iput-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->Viblog:Ljava/lang/String;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->pattern:[J

    .line 30
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/CSDFunctionG/vibratortest;->LWC:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/CSDFunctionG/vibratortest;->LFP:I

    .line 38
    iput-object v1, p0, Lcom/android/CSDFunctionG/vibratortest;->all_layout:Landroid/widget/LinearLayout;

    .line 39
    iput-object v1, p0, Lcom/android/CSDFunctionG/vibratortest;->Button_sublayout:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lcom/android/CSDFunctionG/vibratortest;->textlayout:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/android/CSDFunctionG/vibratortest;->textlayout2:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, p0, Lcom/android/CSDFunctionG/vibratortest;->mbuttonvibrator:Landroid/widget/Button;

    .line 48
    iput v2, p0, Lcom/android/CSDFunctionG/vibratortest;->g_mode:I

    .line 145
    new-instance v0, Lcom/android/CSDFunctionG/vibratortest$3;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/vibratortest$3;-><init>(Lcom/android/CSDFunctionG/vibratortest;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mHandler:Landroid/os/Handler;

    return-void

    .line 29
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/CSDFunctionG/vibratortest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mbuttonvibrator:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public PassorFail(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 98
    iput p1, p0, Lcom/android/CSDFunctionG/vibratortest;->g_mode:I

    .line 99
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 102
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 104
    const v2, 0x7f060009

    new-instance v3, Lcom/android/CSDFunctionG/vibratortest$1;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/vibratortest$1;-><init>(Lcom/android/CSDFunctionG/vibratortest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    const v2, 0x7f06000a

    new-instance v3, Lcom/android/CSDFunctionG/vibratortest$2;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/vibratortest$2;-><init>(Lcom/android/CSDFunctionG/vibratortest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 142
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 144
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
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mbuttonvibrator:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 166
    iget-boolean v0, p0, Lcom/android/CSDFunctionG/vibratortest;->bVibrate:Z

    if-nez v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mbuttonvibrator:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mVibrator:Landroid/os/Vibrator;

    .line 170
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->Viblog:Ljava/lang/String;

    const-string v1, "vibrator on;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->Viblog:Ljava/lang/String;

    .line 171
    iput-boolean v3, p0, Lcom/android/CSDFunctionG/vibratortest;->bVibrate:Z

    .line 172
    sget-object v0, Lcom/android/CSDFunctionG/vibratortest;->Vib_NextStepMsg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    sget-object v0, Lcom/android/CSDFunctionG/vibratortest;->Vib_InstructMsg:Landroid/widget/TextView;

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    sget-object v0, Lcom/android/CSDFunctionG/vibratortest;->Vib_InstructMsg:Landroid/widget/TextView;

    const v1, 0x7f02002e

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 175
    sget-object v0, Lcom/android/CSDFunctionG/vibratortest;->Vib_InstructMsg:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/CSDFunctionG/vibratortest;->pattern:[J

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 194
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->Viblog:Ljava/lang/String;

    const-string v1, "vibrator off;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->Viblog:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 185
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mbuttonvibrator:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    sget-object v0, Lcom/android/CSDFunctionG/vibratortest;->Vib_NextStepMsg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    sget-object v0, Lcom/android/CSDFunctionG/vibratortest;->Vib_InstructMsg:Landroid/widget/TextView;

    const v1, 0x7f02002d

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 188
    sget-object v0, Lcom/android/CSDFunctionG/vibratortest;->Vib_InstructMsg:Landroid/widget/TextView;

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 191
    :cond_3
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/vibratortest;->bVibrate:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x7

    const/16 v6, 0x11

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/vibratortest;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 55
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 56
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/vibratortest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 57
    invoke-virtual {p0, v7}, Lcom/android/CSDFunctionG/vibratortest;->requestWindowFeature(I)Z

    .line 58
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->params1:Landroid/widget/LinearLayout$LayoutParams;

    .line 59
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    .line 61
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->params4:Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->all_layout:Landroid/widget/LinearLayout;

    .line 64
    iget-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->all_layout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    iget-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/vibratortest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->textlayout:Landroid/widget/LinearLayout;

    .line 68
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/CSDFunctionG/vibratortest;->Vib_InstructMsg:Landroid/widget/TextView;

    .line 69
    sget-object v2, Lcom/android/CSDFunctionG/vibratortest;->Vib_InstructMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 70
    iget-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->textlayout:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/CSDFunctionG/vibratortest;->Vib_InstructMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/vibratortest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/vibratortest;->textlayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/vibratortest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->Button_sublayout:Landroid/widget/LinearLayout;

    .line 74
    iget-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->Button_sublayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 75
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->mbuttonvibrator:Landroid/widget/Button;

    .line 76
    iget-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->mbuttonvibrator:Landroid/widget/Button;

    const-string v3, "Start"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->mbuttonvibrator:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->Button_sublayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/vibratortest;->mbuttonvibrator:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/CSDFunctionG/vibratortest;->params4:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/vibratortest;->Button_sublayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/vibratortest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->textlayout2:Landroid/widget/LinearLayout;

    .line 82
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/CSDFunctionG/vibratortest;->Vib_NextStepMsg:Landroid/widget/TextView;

    .line 83
    sget-object v2, Lcom/android/CSDFunctionG/vibratortest;->Vib_NextStepMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    iget-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->textlayout2:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/CSDFunctionG/vibratortest;->Vib_NextStepMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/vibratortest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/vibratortest;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/vibratortest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v2, p0, Lcom/android/CSDFunctionG/vibratortest;->all_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/vibratortest;->setContentView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v1, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 90
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/vibratortest;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f030008

    invoke-virtual {v2, v7, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 92
    const v2, 0x7f080023

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/vibratortest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/CSDFunctionG/vibratortest;->TXTcaption:Landroid/widget/TextView;

    .line 93
    sget-object v2, Lcom/android/CSDFunctionG/vibratortest;->TXTcaption:Landroid/widget/TextView;

    const v3, 0x7f06000e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 94
    sget-object v2, Lcom/android/CSDFunctionG/vibratortest;->Vib_NextStepMsg:Landroid/widget/TextView;

    const v3, 0x7f060010

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 95
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 218
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 222
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 226
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 199
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mHandler:Landroid/os/Handler;

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/CSDFunctionG/vibratortest;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 208
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/CSDFunctionG/vibratortest;->Viblog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 209
    const-string v0, "Vibrator test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/vibratortest;->finish()V

    .line 211
    return-void
.end method
