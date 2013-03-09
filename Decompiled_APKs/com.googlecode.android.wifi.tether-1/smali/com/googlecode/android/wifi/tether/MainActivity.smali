.class public Lcom/googlecode/android/wifi/tether/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static ID_DIALOG_STARTING:I = 0x0

.field private static ID_DIALOG_STOPPING:I = 0x0

.field private static final MENU_ABOUT:I = 0x2

.field private static final MENU_ACCESS:I = 0x3

.field private static final MENU_LOG:I = 0x1

.field private static final MENU_SETUP:I = 0x0

.field public static final MESSAGE_CANT_START_TETHER:I = 0x2

.field public static final MESSAGE_DOWNLOAD_COMPLETE:I = 0x5

.field public static final MESSAGE_DOWNLOAD_PROGRESS:I = 0x4

.field public static final MESSAGE_DOWNLOAD_STARTING:I = 0x3

.field public static final MESSAGE_TRAFFIC_COUNT:I = 0x9

.field public static final MESSAGE_TRAFFIC_END:I = 0xb

.field public static final MESSAGE_TRAFFIC_RATE:I = 0xa

.field public static final MESSAGE_TRAFFIC_START:I = 0x8

.field public static final TAG:Ljava/lang/String; = "TETHER -> MainActivity"

.field public static currentInstance:Lcom/googlecode/android/wifi/tether/MainActivity;


# instance fields
.field private animation:Landroid/view/animation/ScaleAnimation;

.field private application:Lcom/googlecode/android/wifi/tether/TetherApplication;

.field private batteryTemperature:Landroid/widget/TextView;

.field private batteryTemperatureLayout:Landroid/widget/RelativeLayout;

.field private countDownText:Landroid/widget/TextView;

.field private downloadRateText:Landroid/widget/TextView;

.field private downloadText:Landroid/widget/TextView;

.field private downloadUpdateLayout:Landroid/widget/RelativeLayout;

.field private intentFilter:Landroid/content/IntentFilter;

.field private intentReceiver:Landroid/content/BroadcastReceiver;

.field private keepAliveText:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private progressText:Landroid/widget/TextView;

.field private progressTitle:Landroid/widget/TextView;

.field private quotaCurrentText:Landroid/widget/TextView;

.field private quotaMaxText:Landroid/widget/TextView;

.field private quotaRow:Landroid/widget/RelativeLayout;

.field private startBtn:Landroid/widget/Button;

.field private startBtnListener:Landroid/view/View$OnClickListener;

.field private startTblRow:Landroid/widget/TableRow;

.field private stopBtn:Landroid/widget/Button;

.field private stopBtnListener:Landroid/view/View$OnClickListener;

.field private stopTblRow:Landroid/widget/TableRow;

.field private timerText:Landroid/widget/TextView;

.field private trafficRow:Landroid/widget/RelativeLayout;

.field private uploadRateText:Landroid/widget/TextView;

.field private uploadText:Landroid/widget/TextView;

.field public viewUpdateHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput v0, Lcom/googlecode/android/wifi/tether/MainActivity;->ID_DIALOG_STARTING:I

    .line 82
    const/4 v0, 0x1

    sput v0, Lcom/googlecode/android/wifi/tether/MainActivity;->ID_DIALOG_STOPPING:I

    .line 99
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/android/wifi/tether/MainActivity;->currentInstance:Lcom/googlecode/android/wifi/tether/MainActivity;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    .line 53
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startBtn:Landroid/widget/Button;

    .line 54
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startBtnListener:Landroid/view/View$OnClickListener;

    .line 55
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopBtn:Landroid/widget/Button;

    .line 56
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopBtnListener:Landroid/view/View$OnClickListener;

    .line 57
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressTitle:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressText:Landroid/widget/TextView;

    .line 59
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 60
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->downloadUpdateLayout:Landroid/widget/RelativeLayout;

    .line 61
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->batteryTemperatureLayout:Landroid/widget/RelativeLayout;

    .line 63
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->trafficRow:Landroid/widget/RelativeLayout;

    .line 64
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->downloadText:Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->uploadText:Landroid/widget/TextView;

    .line 66
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->downloadRateText:Landroid/widget/TextView;

    .line 67
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->uploadRateText:Landroid/widget/TextView;

    .line 68
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->batteryTemperature:Landroid/widget/TextView;

    .line 69
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->quotaRow:Landroid/widget/RelativeLayout;

    .line 70
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->quotaCurrentText:Landroid/widget/TextView;

    .line 71
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->quotaMaxText:Landroid/widget/TextView;

    .line 72
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->countDownText:Landroid/widget/TextView;

    .line 73
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->timerText:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->keepAliveText:Landroid/widget/TextView;

    .line 76
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startTblRow:Landroid/widget/TableRow;

    .line 77
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopTblRow:Landroid/widget/TableRow;

    .line 79
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->animation:Landroid/view/animation/ScaleAnimation;

    .line 318
    new-instance v0, Lcom/googlecode/android/wifi/tether/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$1;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    .line 555
    new-instance v0, Lcom/googlecode/android/wifi/tether/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$2;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->viewUpdateHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/googlecode/android/wifi/tether/MainActivity;)Lcom/googlecode/android/wifi/tether/TetherApplication;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    return-object v0
.end method

.method static synthetic access$1(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->batteryTemperature:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/googlecode/android/wifi/tether/MainActivity;J)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 636
    invoke-direct {p0, p1, p2}, Lcom/googlecode/android/wifi/tether/MainActivity;->formatCountMB(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->quotaMaxText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->trafficRow:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->uploadText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/googlecode/android/wifi/tether/MainActivity;JZ)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 626
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/android/wifi/tether/MainActivity;->formatCount(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->downloadText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->uploadRateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$17(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->downloadRateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$19(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/googlecode/android/wifi/tether/MainActivity;->ID_DIALOG_STARTING:I

    return v0
.end method

.method static synthetic access$20(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->downloadUpdateLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$22(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$23(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$24(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopBtnListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/googlecode/android/wifi/tether/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/MainActivity;->toggleStartStop()V

    return-void
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/googlecode/android/wifi/tether/MainActivity;->ID_DIALOG_STOPPING:I

    return v0
.end method

.method static synthetic access$5(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->keepAliveText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->countDownText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->timerText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->quotaRow:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$9(Lcom/googlecode/android/wifi/tether/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->quotaCurrentText:Landroid/widget/TextView;

    return-object v0
.end method

.method private formatCount(JZ)Ljava/lang/String;
    .locals 6
    .parameter "count"
    .parameter "rate"

    .prologue
    const-wide/16 v4, 0x400

    .line 631
    long-to-double v0, p1

    const-wide v2, 0x413e848000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    const-wide/16 v2, 0xa

    mul-long/2addr v2, p1

    div-long/2addr v2, v4

    long-to-int v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x4120

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string v0, "kbps"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    :goto_1
    return-object v0

    .line 632
    :cond_0
    const-string v0, "kB"

    goto :goto_0

    .line 633
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    long-to-int v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x42c8

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const-string v0, "mbps"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "MB"

    goto :goto_2
.end method

.method private formatCountMB(J)Ljava/lang/String;
    .locals 11
    .parameter "count"

    .prologue
    const-wide/16 v9, 0x64

    const/high16 v8, 0x42c8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v6, 0x400

    .line 640
    cmp-long v2, p1, v6

    if-gez v2, :cond_0

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    :goto_0
    return-object v0

    .line 642
    :cond_0
    cmp-long v2, p1, v6

    if-ltz v2, :cond_1

    move v3, v0

    :goto_1
    const-wide/32 v4, 0x100000

    cmp-long v2, p1, v4

    if-gez v2, :cond_2

    move v2, v0

    :goto_2
    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    mul-long v1, p1, v9

    div-long/2addr v1, v6

    long-to-float v1, v1

    div-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v3, v1

    .line 642
    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    .line 644
    :cond_3
    const-wide/32 v2, 0x100000

    cmp-long v2, p1, v2

    if-ltz v2, :cond_4

    move v2, v0

    :goto_3
    const-wide/32 v3, 0x40000000

    cmp-long v3, p1, v3

    if-gez v3, :cond_5

    :goto_4
    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    mul-long v1, p1, v9

    div-long/2addr v1, v6

    div-long/2addr v1, v6

    long-to-float v1, v1

    div-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v2, v1

    .line 644
    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    .line 647
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    mul-long v1, p1, v9

    div-long/2addr v1, v6

    div-long/2addr v1, v6

    div-long/2addr v1, v6

    long-to-float v1, v1

    div-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private openAboutDialog()V
    .locals 7

    .prologue
    .line 715
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 716
    .local v1, li:Landroid/view/LayoutInflater;
    const/high16 v4, 0x7f03

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 717
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 718
    .local v2, versionName:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    invoke-virtual {v4}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    const v4, 0x7f0a0002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 720
    .local v0, authors:Landroid/widget/TextView;
    const-string v4, "<HTML><a href=\"https://plus.google.com/u/0/107088765107518450541\">Harald M&uuml;ller</a>, Sofia Lemons, Ben Buxton, Andrew Robinson, <a href=\"http://sirgatez.blogspot.com\">Joshua Briefman</a></HTML>"

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 723
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 724
    const v5, 0x7f070009

    invoke-virtual {p0, v5}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 725
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 726
    const v5, 0x7f07000b

    invoke-virtual {p0, v5}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/googlecode/android/wifi/tether/MainActivity$12;

    invoke-direct {v6, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$12;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 733
    const v5, 0x7f07000c

    invoke-virtual {p0, v5}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/googlecode/android/wifi/tether/MainActivity$13;

    invoke-direct {v6, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$13;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 738
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 739
    return-void
.end method

.method private openDonateDialog()V
    .locals 5

    .prologue
    .line 742
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    invoke-virtual {v2}, Lcom/googlecode/android/wifi/tether/TetherApplication;->showDonationDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 744
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "donatepref"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 745
    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v2, v2, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 747
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 748
    .local v0, li:Landroid/view/LayoutInflater;
    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 749
    .local v1, view:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 750
    const v3, 0x7f07000a

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 751
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 752
    const v3, 0x7f07000c

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/googlecode/android/wifi/tether/MainActivity$14;

    invoke-direct {v4, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$14;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 757
    const v3, 0x7f07000b

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/googlecode/android/wifi/tether/MainActivity$15;

    invoke-direct {v4, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$15;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 764
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 766
    .end local v0           #li:Landroid/view/LayoutInflater;
    .end local v1           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private openNoAccessControlDialog()V
    .locals 5

    .prologue
    .line 678
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 679
    .local v0, li:Landroid/view/LayoutInflater;
    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 680
    .local v1, view:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 681
    const v3, 0x7f07000f

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 682
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 683
    const v3, 0x7f070015

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/googlecode/android/wifi/tether/MainActivity$9;

    invoke-direct {v4, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$9;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 689
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 690
    return-void
.end method

.method private openNoNetfilterDialog()V
    .locals 5

    .prologue
    .line 657
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 658
    .local v0, li:Landroid/view/LayoutInflater;
    const v2, 0x7f030008

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 659
    .local v1, view:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 660
    const v3, 0x7f07000e

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 661
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 662
    const v3, 0x7f070011

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/googlecode/android/wifi/tether/MainActivity$7;

    invoke-direct {v4, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$7;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 668
    const v3, 0x7f070012

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/googlecode/android/wifi/tether/MainActivity$8;

    invoke-direct {v4, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$8;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 674
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 675
    return-void
.end method

.method private openNotRootDialog()V
    .locals 5

    .prologue
    .line 693
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 694
    .local v0, li:Landroid/view/LayoutInflater;
    const v2, 0x7f030009

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 695
    .local v1, view:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 696
    const v3, 0x7f07000d

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 697
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 698
    const v3, 0x7f070011

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/googlecode/android/wifi/tether/MainActivity$10;

    invoke-direct {v4, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$10;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 704
    const v3, 0x7f070012

    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/googlecode/android/wifi/tether/MainActivity$11;

    invoke-direct {v4, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$11;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 711
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 712
    return-void
.end method

.method private static setCurrent(Lcom/googlecode/android/wifi/tether/MainActivity;)V
    .locals 0
    .parameter "current"

    .prologue
    .line 104
    sput-object p0, Lcom/googlecode/android/wifi/tether/MainActivity;->currentInstance:Lcom/googlecode/android/wifi/tether/MainActivity;

    .line 105
    return-void
.end method

.method private toggleStartStop()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 589
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v0, :cond_2

    .line 590
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 591
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 592
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startTblRow:Landroid/widget/TableRow;

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopTblRow:Landroid/widget/TableRow;

    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->animation:Landroid/view/animation/ScaleAnimation;

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->animation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 624
    :cond_1
    :goto_0
    return-void

    .line 600
    :cond_2
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    if-eqz v0, :cond_3

    .line 601
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 602
    sget-object v0, Lcom/googlecode/android/wifi/tether/TetherService;->singleton:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherService;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 603
    :cond_3
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->trafficRow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->quotaRow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->countDownText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->keepAliveText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->timerText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->timerText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->keepAliveText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startTblRow:Landroid/widget/TableRow;

    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopTblRow:Landroid/widget/TableRow;

    invoke-virtual {v0, v4}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->animation:Landroid/view/animation/ScaleAnimation;

    if-eqz v0, :cond_4

    .line 615
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->animation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 617
    :cond_4
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_0

    .line 620
    :cond_5
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startTblRow:Landroid/widget/TableRow;

    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopTblRow:Landroid/widget/TableRow;

    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    const v1, 0x7f07001f

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/android/wifi/tether/TetherApplication;->displayToastMessage(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/high16 v2, 0x3f80

    const v1, 0x3f666666

    const/high16 v6, 0x3f00

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 110
    const-string v0, "TETHER -> MainActivity"

    const-string v3, "Calling onCreate()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->setContentView(I)V

    .line 115
    invoke-static {p0}, Lcom/googlecode/android/wifi/tether/MainActivity;->setCurrent(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    .line 118
    invoke-virtual {p0}, Lcom/googlecode/android/wifi/tether/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/googlecode/android/wifi/tether/TetherApplication;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    .line 121
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startTblRow:Landroid/widget/TableRow;

    .line 122
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopTblRow:Landroid/widget/TableRow;

    .line 123
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 124
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressText:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressTitle:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->downloadUpdateLayout:Landroid/widget/RelativeLayout;

    .line 127
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->batteryTemperatureLayout:Landroid/widget/RelativeLayout;

    .line 129
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->trafficRow:Landroid/widget/RelativeLayout;

    .line 130
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->downloadText:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->uploadText:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->downloadRateText:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->uploadRateText:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->batteryTemperature:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->quotaRow:Landroid/widget/RelativeLayout;

    .line 136
    const v0, 0x7f0a0029

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->quotaCurrentText:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->quotaMaxText:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->countDownText:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->keepAliveText:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->timerText:Landroid/widget/TextView;

    .line 143
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    .line 146
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 143
    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->animation:Landroid/view/animation/ScaleAnimation;

    .line 147
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->animation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 148
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->animation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 149
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->animation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 150
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->animation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 151
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->animation:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 154
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-boolean v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->startupCheckPerformed:Z

    if-nez v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iput-boolean v5, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->startupCheckPerformed:Z

    .line 158
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->isNetfilterSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v1, "warning_nonetfilter_displayed"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/MainActivity;->openNoNetfilterDialog()V

    .line 161
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "warning_nonetfilter_displayed"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 162
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->hasRootPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/MainActivity;->openNotRootDialog()V

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/MainActivity;->openDonateDialog()V

    .line 186
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/TetherApplication;->checkForUpdate()V

    .line 190
    :cond_2
    const v0, 0x7f0a001b

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startBtn:Landroid/widget/Button;

    .line 191
    new-instance v0, Lcom/googlecode/android/wifi/tether/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$3;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startBtnListener:Landroid/view/View$OnClickListener;

    .line 202
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopBtn:Landroid/widget/Button;

    .line 206
    new-instance v0, Lcom/googlecode/android/wifi/tether/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$4;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopBtnListener:Landroid/view/View$OnClickListener;

    .line 215
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-void

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->isAccessControlSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v1, "warning_noaccesscontrol_displayed"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 169
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/MainActivity;->openNoAccessControlDialog()V

    .line 170
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "warning_noaccesscontrol_displayed"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iput-boolean v9, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->accessControlSupported:Z

    .line 174
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->whitelist:Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;

    invoke-virtual {v0}, Lcom/googlecode/android/wifi/tether/system/CoreTask$Whitelist;->remove()Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 536
    sget v0, Lcom/googlecode/android/wifi/tether/MainActivity;->ID_DIALOG_STARTING:I

    if-ne p1, v0, :cond_0

    .line 537
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 538
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070019

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f07001a

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 541
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 542
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 552
    :goto_0
    return-object v0

    .line 544
    :cond_0
    sget v0, Lcom/googlecode/android/wifi/tether/MainActivity;->ID_DIALOG_STOPPING:I

    if-ne p1, v0, :cond_1

    .line 545
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 546
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070021

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 549
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 550
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 552
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    .line 497
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    .line 498
    .local v4, supRetVal:Z
    const v5, 0x7f070008

    invoke-virtual {p0, v5}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v7, v7, v7, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v3

    .line 499
    .local v3, setup:Landroid/view/SubMenu;
    const v5, 0x1080049

    invoke-interface {v3, v5}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 500
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-boolean v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->accessControlSupported:Z

    if-eqz v5, :cond_0

    .line 501
    const/4 v5, 0x3

    const v6, 0x7f070018

    invoke-virtual {p0, v6}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    .line 502
    .local v1, accessctr:Landroid/view/SubMenu;
    const v5, 0x108003e

    invoke-interface {v1, v5}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 504
    .end local v1           #accessctr:Landroid/view/SubMenu;
    :cond_0
    const/4 v5, 0x1

    const v6, 0x7f070017

    invoke-virtual {p0, v6}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 505
    .local v2, log:Landroid/view/SubMenu;
    const v5, 0x1080034

    invoke-interface {v2, v5}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 506
    const/4 v5, 0x2

    const v6, 0x7f070009

    invoke-virtual {p0, v6}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 507
    .local v0, about:Landroid/view/SubMenu;
    const v5, 0x1080041

    invoke-interface {v0, v5}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 508
    return v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "TETHER -> MainActivity"

    const-string v1, "Calling onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 261
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "menuItem"

    .prologue
    const/4 v4, 0x0

    .line 513
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 514
    .local v0, supRetVal:Z
    const-string v1, "TETHER -> MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Menuitem:getId  -  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 531
    :goto_0
    return v0

    .line 517
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    .line 518
    const-class v2, Lcom/googlecode/android/wifi/tether/SetupActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    invoke-virtual {p0, v1, v4}, Lcom/googlecode/android/wifi/tether/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 521
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .line 522
    const-class v2, Lcom/googlecode/android/wifi/tether/LogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    invoke-virtual {p0, v1, v4}, Lcom/googlecode/android/wifi/tether/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 525
    :pswitch_2
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/MainActivity;->openAboutDialog()V

    goto :goto_0

    .line 528
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    .line 529
    const-class v2, Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 528
    invoke-virtual {p0, v1, v4}, Lcom/googlecode/android/wifi/tether/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 515
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 265
    const-string v0, "TETHER -> MainActivity"

    const-string v1, "Calling onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/googlecode/android/wifi/tether/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 274
    const-string v0, "TETHER -> MainActivity"

    const-string v1, "Calling onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 278
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    .line 281
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;

    iget-object v0, v0, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v1, "batterytemppref"

    const-string v2, "celsius"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->batteryTemperatureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.googlecode.android.wifi.tether.intent.STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.googlecode.android.wifi.tether.intent.TRAFFIC"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.googlecode.android.wifi.tether.intent.QUOTA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.googlecode.android.wifi.tether.intent.COUNTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.googlecode.android.wifi.tether.intent.KEEPALIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.googlecode.android.wifi.tether.intent.COUNTDOWNTIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->intentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/android/wifi/tether/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/MainActivity;->toggleStartStop()V

    .line 313
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->batteryTemperatureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "TETHER -> MainActivity"

    const-string v1, "Calling onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 255
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f070023

    const v2, 0x7f070022

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const-string v0, "TETHER -> MainActivity"

    const-string v1, "Trackball pressed ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startTblRow:Landroid/widget/TableRow;

    invoke-virtual {v0}, Landroid/widget/TableRow;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 224
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    const v1, 0x7f070024

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 226
    invoke-virtual {p0, v2}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/googlecode/android/wifi/tether/MainActivity$5;

    invoke-direct {v2, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$5;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 248
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopTblRow:Landroid/widget/TableRow;

    invoke-virtual {v0}, Landroid/widget/TableRow;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->stopTblRow:Landroid/widget/TableRow;

    invoke-virtual {v0}, Landroid/widget/TableRow;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/MainActivity;->startTblRow:Landroid/widget/TableRow;

    invoke-virtual {v0}, Landroid/widget/TableRow;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    const v1, 0x7f070025

    invoke-virtual {p0, v1}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 238
    invoke-virtual {p0, v2}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/googlecode/android/wifi/tether/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$6;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {p0, v3}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public openUpdateDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "downloadFileUrl"
    .parameter "fileName"
    .parameter "message"
    .parameter "updateTitle"

    .prologue
    .line 770
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 773
    .local v1, li:Landroid/view/LayoutInflater;
    const v5, 0x7f03000c

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 774
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0a0031

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 775
    .local v2, messageView:Landroid/widget/TextView;
    const v5, 0x7f0a0032

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 776
    .local v3, updateNowText:Landroid/widget/TextView;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 777
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 778
    :cond_0
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 780
    invoke-virtual {v5, p4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 781
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 783
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 785
    const v5, 0x7f070014

    invoke-virtual {p0, v5}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/googlecode/android/wifi/tether/MainActivity$16;

    invoke-direct {v6, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$16;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 790
    const v5, 0x7f070013

    invoke-virtual {p0, v5}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/googlecode/android/wifi/tether/MainActivity$17;

    invoke-direct {v6, p0, p1, p2}, Lcom/googlecode/android/wifi/tether/MainActivity$17;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 803
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 804
    return-void

    .line 797
    :cond_1
    const v5, 0x7f070015

    invoke-virtual {p0, v5}, Lcom/googlecode/android/wifi/tether/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/googlecode/android/wifi/tether/MainActivity$18;

    invoke-direct {v6, p0}, Lcom/googlecode/android/wifi/tether/MainActivity$18;-><init>(Lcom/googlecode/android/wifi/tether/MainActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
