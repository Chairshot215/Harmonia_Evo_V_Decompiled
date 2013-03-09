.class public Lcom/android/CSDFunctionG/backlighttest;
.super Landroid/app/Activity;
.source "backlighttest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static Backlight_InstructMsg:Landroid/widget/TextView;

.field public static Backlight_NextStepMsg:Landroid/widget/TextView;

.field public static TXTcaption:Landroid/widget/TextView;


# instance fields
.field private Button_sublayout:Landroid/widget/LinearLayout;

.field private final LFP:I

.field private final LWC:I

.field TAG:Ljava/lang/String;

.field private all_layout:Landroid/widget/LinearLayout;

.field bkligntlog:Ljava/lang/String;

.field brightnes:I

.field public g_mode:I

.field private mBTN_Backlight_Off:Landroid/widget/Button;

.field private mBTN_Backlight_On:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mbuttonbkldim:Landroid/widget/Button;

.field private mbuttonbklhigh:Landroid/widget/Button;

.field private mbuttonbkloff:Landroid/widget/Button;

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

    .line 43
    sput-object v0, Lcom/android/CSDFunctionG/backlighttest;->TXTcaption:Landroid/widget/TextView;

    .line 44
    sput-object v0, Lcom/android/CSDFunctionG/backlighttest;->Backlight_InstructMsg:Landroid/widget/TextView;

    .line 45
    sput-object v0, Lcom/android/CSDFunctionG/backlighttest;->Backlight_NextStepMsg:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/android/CSDFunctionG/backlighttest;->mbuttonbkloff:Landroid/widget/Button;

    .line 26
    iput-object v1, p0, Lcom/android/CSDFunctionG/backlighttest;->mbuttonbkldim:Landroid/widget/Button;

    .line 27
    iput-object v1, p0, Lcom/android/CSDFunctionG/backlighttest;->mbuttonbklhigh:Landroid/widget/Button;

    .line 29
    const-string v0, "Backlight test:\r\n"

    iput-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->bkligntlog:Ljava/lang/String;

    .line 30
    const-string v0, "CSD_Backlight_Test"

    iput-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/CSDFunctionG/backlighttest;->LWC:I

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/CSDFunctionG/backlighttest;->LFP:I

    .line 38
    iput-object v1, p0, Lcom/android/CSDFunctionG/backlighttest;->all_layout:Landroid/widget/LinearLayout;

    .line 39
    iput-object v1, p0, Lcom/android/CSDFunctionG/backlighttest;->Button_sublayout:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lcom/android/CSDFunctionG/backlighttest;->textlayout:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/android/CSDFunctionG/backlighttest;->textlayout2:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_Off:Landroid/widget/Button;

    .line 48
    iput-object v1, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_On:Landroid/widget/Button;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/CSDFunctionG/backlighttest;->g_mode:I

    .line 165
    new-instance v0, Lcom/android/CSDFunctionG/backlighttest$3;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/backlighttest$3;-><init>(Lcom/android/CSDFunctionG/backlighttest;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/CSDFunctionG/backlighttest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_On:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/CSDFunctionG/backlighttest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_Off:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public PassorFail(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/CSDFunctionG/backlighttest;->g_mode:I

    .line 119
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 122
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 124
    const v2, 0x7f060009

    new-instance v3, Lcom/android/CSDFunctionG/backlighttest$1;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/backlighttest$1;-><init>(Lcom/android/CSDFunctionG/backlighttest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    const v2, 0x7f06000a

    new-instance v3, Lcom/android/CSDFunctionG/backlighttest$2;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/backlighttest$2;-><init>(Lcom/android/CSDFunctionG/backlighttest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 161
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 163
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "viewObject"

    .prologue
    const-wide/16 v3, 0x7d0

    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_Off:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->bkligntlog:Ljava/lang/String;

    const-string v1, "backlight off;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->bkligntlog:Ljava/lang/String;

    .line 186
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/CSDFunctionG/backlighttest;->brightnes:I

    .line 187
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_Off:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    iget v0, p0, Lcom/android/CSDFunctionG/backlighttest;->brightnes:I

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/backlighttest;->setbacklight(I)V

    .line 189
    sget-object v0, Lcom/android/CSDFunctionG/backlighttest;->Backlight_InstructMsg:Landroid/widget/TextView;

    const v1, 0x7f020005

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 190
    sget-object v0, Lcom/android/CSDFunctionG/backlighttest;->Backlight_InstructMsg:Landroid/widget/TextView;

    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    sget-object v0, Lcom/android/CSDFunctionG/backlighttest;->Backlight_NextStepMsg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mbuttonbkldim:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->bkligntlog:Ljava/lang/String;

    const-string v1, "backlight dim;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->bkligntlog:Ljava/lang/String;

    .line 198
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/CSDFunctionG/backlighttest;->brightnes:I

    .line 199
    iget v0, p0, Lcom/android/CSDFunctionG/backlighttest;->brightnes:I

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/backlighttest;->setbacklight(I)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_On:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->TAG:Ljava/lang/String;

    const-string v1, "BL mBTN_Backlight_On"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->bkligntlog:Ljava/lang/String;

    const-string v1, "backlight on;"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->bkligntlog:Ljava/lang/String;

    .line 205
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/CSDFunctionG/backlighttest;->brightnes:I

    .line 206
    iget v0, p0, Lcom/android/CSDFunctionG/backlighttest;->brightnes:I

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/backlighttest;->setbacklight(I)V

    .line 207
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_On:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 208
    sget-object v0, Lcom/android/CSDFunctionG/backlighttest;->Backlight_InstructMsg:Landroid/widget/TextView;

    const v1, 0x7f020006

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 209
    sget-object v0, Lcom/android/CSDFunctionG/backlighttest;->Backlight_InstructMsg:Landroid/widget/TextView;

    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 210
    sget-object v0, Lcom/android/CSDFunctionG/backlighttest;->Backlight_NextStepMsg:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/16 v6, 0x11

    const/high16 v5, -0x100

    .line 53
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/backlighttest;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 54
    .local v1, win:Landroid/view/Window;
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 56
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/backlighttest;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 58
    invoke-virtual {p0, v9}, Lcom/android/CSDFunctionG/backlighttest;->requestWindowFeature(I)Z

    .line 60
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    .line 61
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->params4:Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->all_layout:Landroid/widget/LinearLayout;

    .line 65
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->all_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 66
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/backlighttest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->all_layout:Landroid/widget/LinearLayout;

    const v3, 0x7f050004

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 69
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->textlayout:Landroid/widget/LinearLayout;

    .line 70
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/CSDFunctionG/backlighttest;->Backlight_InstructMsg:Landroid/widget/TextView;

    .line 71
    sget-object v2, Lcom/android/CSDFunctionG/backlighttest;->Backlight_InstructMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    sget-object v2, Lcom/android/CSDFunctionG/backlighttest;->Backlight_InstructMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->textlayout:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/CSDFunctionG/backlighttest;->Backlight_InstructMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/backlighttest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/backlighttest;->textlayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/backlighttest;->params4:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->Button_sublayout:Landroid/widget/LinearLayout;

    .line 77
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->Button_sublayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 78
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->Button_sublayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/backlighttest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_Off:Landroid/widget/Button;

    .line 81
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_Off:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 82
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_Off:Landroid/widget/Button;

    const-string v3, "Off"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_Off:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->Button_sublayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_Off:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/CSDFunctionG/backlighttest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->Button_sublayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 86
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_On:Landroid/widget/Button;

    .line 87
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_On:Landroid/widget/Button;

    const-string v3, "On"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_On:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 89
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_On:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->Button_sublayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_On:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/CSDFunctionG/backlighttest;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->Button_sublayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 93
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/backlighttest;->Button_sublayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/backlighttest;->params4:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->textlayout2:Landroid/widget/LinearLayout;

    .line 96
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/CSDFunctionG/backlighttest;->Backlight_NextStepMsg:Landroid/widget/TextView;

    .line 97
    sget-object v2, Lcom/android/CSDFunctionG/backlighttest;->Backlight_NextStepMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    sget-object v2, Lcom/android/CSDFunctionG/backlighttest;->Backlight_NextStepMsg:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->textlayout2:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/CSDFunctionG/backlighttest;->Backlight_NextStepMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/backlighttest;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/backlighttest;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/backlighttest;->params4:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->all_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/backlighttest;->setContentView(Landroid/view/View;)V

    .line 104
    const/16 v2, 0x400

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 106
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/backlighttest;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f030008

    invoke-virtual {v2, v9, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 108
    const v2, 0x7f080023

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/backlighttest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/CSDFunctionG/backlighttest;->TXTcaption:Landroid/widget/TextView;

    .line 109
    sget-object v2, Lcom/android/CSDFunctionG/backlighttest;->TXTcaption:Landroid/widget/TextView;

    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 111
    invoke-static {p0}, Lcom/android/CSDFunctionG/GSDtesttool;->BLTestInit(Landroid/app/Activity;)Z

    .line 113
    iget-object v2, p0, Lcom/android/CSDFunctionG/backlighttest;->mBTN_Backlight_On:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    sget-object v2, Lcom/android/CSDFunctionG/backlighttest;->Backlight_NextStepMsg:Landroid/widget/TextView;

    const v3, 0x7f06001c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 115
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 256
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 239
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 241
    const/4 v0, 0x0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/android/CSDFunctionG/GSDtesttool;->BLSet(II)Z

    .line 242
    invoke-static {p0}, Lcom/android/CSDFunctionG/GSDtesttool;->BLTestDeinit(Landroid/app/Activity;)Z

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/CSDFunctionG/backlighttest;->bkligntlog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 245
    const-string v0, "Backlight test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/backlighttest;->finish()V

    .line 248
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 223
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->mHandler:Landroid/os/Handler;

    .line 231
    :cond_1
    const/16 v0, 0x32

    invoke-static {v2, v0}, Lcom/android/CSDFunctionG/GSDtesttool;->BLSet(II)Z

    .line 232
    invoke-static {p0}, Lcom/android/CSDFunctionG/GSDtesttool;->BLTestDeinit(Landroid/app/Activity;)Z

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/CSDFunctionG/backlighttest;->bkligntlog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 234
    const-string v0, "Backlight test End\r\n"

    invoke-static {v0}, Lcom/android/CSDFunctionG/GSDtesttool;->writeDataToFile(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/backlighttest;->finish()V

    .line 236
    return-void
.end method

.method public setbacklight(I)V
    .locals 2
    .parameter "brightnes"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/CSDFunctionG/backlighttest;->TAG:Ljava/lang/String;

    const-string v1, "BL setbacklight"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/android/CSDFunctionG/GSDtesttool;->BLSet(II)Z

    .line 219
    return-void
.end method
