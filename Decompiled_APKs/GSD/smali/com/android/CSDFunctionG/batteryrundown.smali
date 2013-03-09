.class public Lcom/android/CSDFunctionG/batteryrundown;
.super Landroid/app/Activity;
.source "batteryrundown.java"


# static fields
.field public static Batrundown_InstructMsg1:Landroid/widget/TextView; = null

.field public static Batrundown_InstructMsg2:Landroid/widget/TextView; = null

.field public static Batrundown_InstructMsg3:Landroid/widget/TextView; = null

.field public static Batrundown_InstructMsg4:Landroid/widget/TextView; = null

.field public static Batrundown_InstructMsg5:Landroid/widget/TextView; = null

.field public static Batrundown_InstructMsg6:Landroid/widget/TextView; = null

.field public static Batrundown_InstructMsg7:Landroid/widget/TextView; = null

.field public static Batrundown_InstructMsg8:Landroid/widget/TextView; = null

.field public static Batrundown_InstructMsg9:Landroid/widget/TextView; = null

.field public static Batrundown_NextStepMsg:Landroid/widget/TextView; = null

.field private static final CHARGE_ALERT:I = 0x3

.field private static final EVENT_LOG:I = 0x2

.field private static final EVENT_TICK:I = 0x1

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field public static Reduce_time:Landroid/widget/TextView; = null

.field private static final Remove_Charger:I = 0x4

.field private static final ShowResult:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CSD_Batteryrundown"

.field public static TXTcaption:Landroid/widget/TextView;

.field static iTesttime:I

.field static iTimer:I

.field static stoprecord:Z


# instance fields
.field private Button_sublayout:Landroid/widget/LinearLayout;

.field private final LWC:I

.field private all_layout:Landroid/widget/LinearLayout;

.field b_Firstrec:Z

.field b_Getlastlevel_Flag:Z

.field b_TestFlag:Z

.field checkACadpter:Z

.field g_Timestr:Ljava/lang/String;

.field public g_iScreenTimeOut:I

.field last_Level:I

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mOldBrightness:I

.field private params2:Landroid/widget/LinearLayout$LayoutParams;

.field private params3:Landroid/widget/LinearLayout$LayoutParams;

.field private params4:Landroid/widget/LinearLayout$LayoutParams;

.field private s_oldBrightValue:Ljava/lang/String;

.field private textlayout:Landroid/widget/LinearLayout;

.field private textlayout2:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/CSDFunctionG/batteryrundown;->stoprecord:Z

    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/android/CSDFunctionG/batteryrundown;->iTimer:I

    .line 65
    sput-object v1, Lcom/android/CSDFunctionG/batteryrundown;->TXTcaption:Landroid/widget/TextView;

    .line 67
    sput-object v1, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg1:Landroid/widget/TextView;

    .line 68
    sput-object v1, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg2:Landroid/widget/TextView;

    .line 69
    sput-object v1, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg3:Landroid/widget/TextView;

    .line 70
    sput-object v1, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg4:Landroid/widget/TextView;

    .line 71
    sput-object v1, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg5:Landroid/widget/TextView;

    .line 72
    sput-object v1, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg6:Landroid/widget/TextView;

    .line 73
    sput-object v1, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg7:Landroid/widget/TextView;

    .line 74
    sput-object v1, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg8:Landroid/widget/TextView;

    .line 75
    sput-object v1, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg9:Landroid/widget/TextView;

    .line 76
    sput-object v1, Lcom/android/CSDFunctionG/batteryrundown;->Reduce_time:Landroid/widget/TextView;

    .line 78
    sput-object v1, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_NextStepMsg:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown;->g_Timestr:Ljava/lang/String;

    .line 36
    iput-boolean v3, p0, Lcom/android/CSDFunctionG/batteryrundown;->b_Firstrec:Z

    .line 37
    iput-boolean v3, p0, Lcom/android/CSDFunctionG/batteryrundown;->b_TestFlag:Z

    .line 38
    iput-boolean v3, p0, Lcom/android/CSDFunctionG/batteryrundown;->b_Getlastlevel_Flag:Z

    .line 39
    iput v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->last_Level:I

    .line 40
    iput-boolean v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->checkACadpter:Z

    .line 50
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/CSDFunctionG/batteryrundown;->LWC:I

    .line 54
    iput v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->g_iScreenTimeOut:I

    .line 60
    iput-object v1, p0, Lcom/android/CSDFunctionG/batteryrundown;->all_layout:Landroid/widget/LinearLayout;

    .line 61
    iput-object v1, p0, Lcom/android/CSDFunctionG/batteryrundown;->Button_sublayout:Landroid/widget/LinearLayout;

    .line 62
    iput-object v1, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    .line 63
    iput-object v1, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout2:Landroid/widget/LinearLayout;

    .line 272
    new-instance v0, Lcom/android/CSDFunctionG/batteryrundown$3;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/batteryrundown$3;-><init>(Lcom/android/CSDFunctionG/batteryrundown;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;

    .line 368
    new-instance v0, Lcom/android/CSDFunctionG/batteryrundown$4;

    invoke-direct {v0, p0}, Lcom/android/CSDFunctionG/batteryrundown$4;-><init>(Lcom/android/CSDFunctionG/batteryrundown;)V

    iput-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/CSDFunctionG/batteryrundown;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private final tenthsToFixedString(I)Ljava/lang/String;
    .locals 4
    .parameter "x"

    .prologue
    .line 360
    div-int/lit8 v0, p1, 0xa

    .line 361
    .local v0, tens:I
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v0, 0xa

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public PassorFail()V
    .locals 6

    .prologue
    .line 435
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 437
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f060008

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 438
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 440
    const v4, 0x7f060009

    new-instance v5, Lcom/android/CSDFunctionG/batteryrundown$5;

    invoke-direct {v5, p0}, Lcom/android/CSDFunctionG/batteryrundown$5;-><init>(Lcom/android/CSDFunctionG/batteryrundown;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 445
    const v4, 0x7f06000a

    new-instance v5, Lcom/android/CSDFunctionG/batteryrundown$6;

    invoke-direct {v5, p0}, Lcom/android/CSDFunctionG/batteryrundown$6;-><init>(Lcom/android/CSDFunctionG/batteryrundown;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 451
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 452
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 453
    .local v3, w:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 455
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0xa

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 456
    const/16 v4, 0xdc

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 458
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 459
    return-void
.end method

.method public Remind_Alert()V
    .locals 6

    .prologue
    .line 232
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 234
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f060038

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 235
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 237
    const v4, 0x7f060009

    new-instance v5, Lcom/android/CSDFunctionG/batteryrundown$1;

    invoke-direct {v5, p0}, Lcom/android/CSDFunctionG/batteryrundown$1;-><init>(Lcom/android/CSDFunctionG/batteryrundown;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 244
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 245
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 246
    .local v3, w:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 248
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0xa

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 249
    const/16 v4, 0x64

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 250
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 252
    return-void
.end method

.method public RemoveCharger()V
    .locals 4

    .prologue
    .line 256
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f060039

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 259
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 261
    const v2, 0x7f060009

    new-instance v3, Lcom/android/CSDFunctionG/batteryrundown$2;

    invoke-direct {v3, p0}, Lcom/android/CSDFunctionG/batteryrundown$2;-><init>(Lcom/android/CSDFunctionG/batteryrundown;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 269
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 271
    return-void
.end method

.method public SetTime(I)V
    .locals 7
    .parameter "iTime"

    .prologue
    const/4 v6, 0x1

    .line 495
    const/16 v3, 0x6270

    if-gt p1, v3, :cond_3

    .line 497
    iget-object v3, p0, Lcom/android/CSDFunctionG/batteryrundown;->g_Timestr:Ljava/lang/String;

    div-int/lit16 v3, p1, 0xe10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, hour:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 499
    iget-object v3, p0, Lcom/android/CSDFunctionG/batteryrundown;->g_Timestr:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    :cond_0
    iget-object v3, p0, Lcom/android/CSDFunctionG/batteryrundown;->g_Timestr:Ljava/lang/String;

    rem-int/lit16 v3, p1, 0xe10

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 502
    .local v1, minute:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 503
    iget-object v3, p0, Lcom/android/CSDFunctionG/batteryrundown;->g_Timestr:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    :cond_1
    iget-object v3, p0, Lcom/android/CSDFunctionG/batteryrundown;->g_Timestr:Ljava/lang/String;

    rem-int/lit16 v3, p1, 0xe10

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, sec:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 506
    iget-object v3, p0, Lcom/android/CSDFunctionG/batteryrundown;->g_Timestr:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 507
    :cond_2
    sget-object v3, Lcom/android/CSDFunctionG/batteryrundown;->Reduce_time:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remaining Time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    .end local v0           #hour:Ljava/lang/String;
    .end local v1           #minute:Ljava/lang/String;
    .end local v2           #sec:Ljava/lang/String;
    :goto_0
    return-void

    .line 511
    :cond_3
    sget-object v3, Lcom/android/CSDFunctionG/batteryrundown;->Reduce_time:Landroid/widget/TextView;

    const-string v4, "--:--:--"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x1

    const/16 v7, 0x1e

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/batteryrundown;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 84
    .local v1, win:Landroid/view/Window;
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 86
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/batteryrundown;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 88
    invoke-virtual {p0, v9}, Lcom/android/CSDFunctionG/batteryrundown;->requestWindowFeature(I)Z

    .line 90
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->all_layout:Landroid/widget/LinearLayout;

    .line 91
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->params2:Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->all_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/batteryrundown;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    .line 96
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->params2:Landroid/widget/LinearLayout$LayoutParams;

    .line 97
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/batteryrundown;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->params3:Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg1:Landroid/widget/TextView;

    .line 102
    sget-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg1:Landroid/widget/TextView;

    const v3, 0x7f060028

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 103
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg1:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/batteryrundown;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v7, v3, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 106
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg2:Landroid/widget/TextView;

    .line 107
    sget-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg2:Landroid/widget/TextView;

    const v3, 0x7f060029

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg2:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/batteryrundown;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v7, v3, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 111
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg3:Landroid/widget/TextView;

    .line 112
    sget-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg3:Landroid/widget/TextView;

    const v3, 0x7f06002a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg3:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/batteryrundown;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v7, v3, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 126
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg6:Landroid/widget/TextView;

    .line 127
    sget-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg6:Landroid/widget/TextView;

    const v3, 0x7f06002d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg6:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/batteryrundown;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v7, v3, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 131
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg7:Landroid/widget/TextView;

    .line 132
    sget-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg7:Landroid/widget/TextView;

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg7:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/batteryrundown;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v7, v3, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 146
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Reduce_time:Landroid/widget/TextView;

    .line 148
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/CSDFunctionG/batteryrundown;->Reduce_time:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/batteryrundown;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v7, v3, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 151
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg9:Landroid/widget/TextView;

    .line 153
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_InstructMsg9:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/batteryrundown;->params3:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v7, v3, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 156
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/batteryrundown;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout2:Landroid/widget/LinearLayout;

    .line 159
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->params2:Landroid/widget/LinearLayout$LayoutParams;

    .line 160
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 161
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/batteryrundown;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_NextStepMsg:Landroid/widget/TextView;

    .line 166
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->params4:Landroid/widget/LinearLayout$LayoutParams;

    .line 167
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout2:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/android/CSDFunctionG/batteryrundown;->Batrundown_NextStepMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/batteryrundown;->params4:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout2:Landroid/widget/LinearLayout;

    const/16 v3, 0xc8

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 169
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->all_layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/CSDFunctionG/batteryrundown;->textlayout2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/CSDFunctionG/batteryrundown;->params2:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    const/16 v2, 0x400

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 174
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->all_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/batteryrundown;->setContentView(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/batteryrundown;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f030008

    invoke-virtual {v2, v9, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 177
    const v2, 0x7f080023

    invoke-virtual {p0, v2}, Lcom/android/CSDFunctionG/batteryrundown;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/CSDFunctionG/batteryrundown;->TXTcaption:Landroid/widget/TextView;

    .line 178
    sget-object v2, Lcom/android/CSDFunctionG/batteryrundown;->TXTcaption:Landroid/widget/TextView;

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 187
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 518
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 519
    const-string v0, "CSD_Batteryrundown"

    const-string v1, "onDestroy ..... !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "msg"

    .prologue
    .line 480
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 482
    invoke-static {p0}, Lcom/android/CSDFunctionG/GSDtesttool;->BLTestDeinit(Landroid/app/Activity;)Z

    .line 483
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/batteryrundown;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->g_iScreenTimeOut:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 485
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/batteryrundown;->finish()V

    .line 487
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 340
    const-string v0, "CSD_Batteryrundown"

    const-string v1, "onPause() ..... !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/batteryrundown;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->g_iScreenTimeOut:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/CSDFunctionG/batteryrundown;->mOldBrightness:I

    invoke-static {v0, v1}, Lcom/android/CSDFunctionG/GSDtesttool;->BLSet(II)Z

    .line 352
    invoke-static {p0}, Lcom/android/CSDFunctionG/GSDtesttool;->BLTestDeinit(Landroid/app/Activity;)Z

    .line 353
    const-string v0, "CSD_Batteryrundown"

    const-string v1, "onPause ..... !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/batteryrundown;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/batteryrundown;->finish()V

    .line 358
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 324
    const-string v0, "CSD_Batteryrundown"

    const-string v1, "onResume ..... !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/CSDFunctionG/batteryrundown;->b_TestFlag:Z

    .line 334
    iget-object v0, p0, Lcom/android/CSDFunctionG/batteryrundown;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/CSDFunctionG/batteryrundown;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/CSDFunctionG/batteryrundown;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 191
    const-string v2, "CSD_Batteryrundown"

    const-string v3, "onStart ..... !"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iput-boolean v5, p0, Lcom/android/CSDFunctionG/batteryrundown;->b_TestFlag:Z

    .line 195
    invoke-static {p0}, Lcom/android/CSDFunctionG/GSDtesttool;->BLTestInit(Landroid/app/Activity;)Z

    .line 197
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/batteryrundown;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const/16 v4, 0x3e7

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->g_iScreenTimeOut:I

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/batteryrundown;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/batteryrundown;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->s_oldBrightValue:Ljava/lang/String;

    .line 211
    :try_start_1
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/batteryrundown;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->mOldBrightness:I

    .line 213
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/batteryrundown;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->s_oldBrightValue:Ljava/lang/String;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->mIntentFilter:Landroid/content/IntentFilter;

    .line 222
    iget-object v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v2, v3}, Lcom/android/CSDFunctionG/GSDtesttool;->BLSet(II)Z

    .line 225
    const/16 v2, 0xe10

    sput v2, Lcom/android/CSDFunctionG/batteryrundown;->iTesttime:I

    .line 227
    sput-boolean v5, Lcom/android/CSDFunctionG/batteryrundown;->stoprecord:Z

    .line 228
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "CSD_Batteryrundown"

    const-string v3, "could\tnot\tpersist\tscreen timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 216
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 217
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v2, 0xff

    iput v2, p0, Lcom/android/CSDFunctionG/batteryrundown;->mOldBrightness:I

    goto :goto_1
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 463
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 477
    return-void
.end method
