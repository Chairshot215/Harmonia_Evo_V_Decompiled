.class public Lcom/htc/android/epst/shutDownDevice;
.super Landroid/app/Activity;
.source "shutDownDevice.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EVENT_HTC_CDMA_OTA_REBOOT:I = 0x2

.field private static final EVENT_HTC_REFRESH_DIALOG:I = 0x3

.field private static final EVENT_INIT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "shutDownDevice"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRebootDialog:Lcom/htc/app/HtcProgressDialog;

.field private mRebootSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/htc/android/epst/EntryEPSTInfo;->DBG:Z

    sput-boolean v0, Lcom/htc/android/epst/shutDownDevice;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootDialog:Lcom/htc/app/HtcProgressDialog;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootSec:I

    .line 86
    new-instance v0, Lcom/htc/android/epst/shutDownDevice$1;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/shutDownDevice$1;-><init>(Lcom/htc/android/epst/shutDownDevice;)V

    iput-object v0, p0, Lcom/htc/android/epst/shutDownDevice;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/epst/shutDownDevice;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/android/epst/shutDownDevice;->initOTADialog()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/htc/android/epst/shutDownDevice;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/epst/shutDownDevice;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/android/epst/shutDownDevice;->shutdownDevice()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/epst/shutDownDevice;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/android/epst/shutDownDevice;->refreshRebootDialog()V

    return-void
.end method

.method private initOTADialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/htc/android/epst/shutDownDevice;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 109
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "second"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 110
    .local v3, secIDArray:[I
    array-length v4, v3

    if-lez v4, :cond_3

    .line 111
    aget v2, v3, v7

    .line 112
    .local v2, rebootSec:I
    if-gez v2, :cond_0

    .line 113
    const/4 v2, 0x0

    .line 115
    :cond_0
    sget-boolean v4, Lcom/htc/android/epst/shutDownDevice;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "shutDownDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initOTADialog Second:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f040018

    invoke-virtual {p0, v5}, Lcom/htc/android/epst/shutDownDevice;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f040019

    invoke-virtual {p0, v5}, Lcom/htc/android/epst/shutDownDevice;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, message:Ljava/lang/String;
    sget-boolean v4, Lcom/htc/android/epst/shutDownDevice;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "shutDownDevice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    new-instance v4, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v4, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootDialog:Lcom/htc/app/HtcProgressDialog;

    .line 120
    iget-object v4, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v6, 0x7f04

    invoke-virtual {p0, v6}, Lcom/htc/android/epst/shutDownDevice;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f04001a

    invoke-virtual {p0, v6}, Lcom/htc/android/epst/shutDownDevice;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v4, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4, v7}, Lcom/htc/app/HtcProgressDialog;->setIcon(I)V

    .line 122
    iget-object v4, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/app/HtcProgressDialog;->setIndeterminate(Z)V

    .line 124
    iget-object v4, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4, v7}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 134
    iget-object v4, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 137
    iget-object v4, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v4}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 140
    iget-object v4, p0, Lcom/htc/android/epst/shutDownDevice;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    mul-int/lit16 v6, v2, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    iput v2, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootSec:I

    .line 143
    iget-object v4, p0, Lcom/htc/android/epst/shutDownDevice;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #rebootSec:I
    :cond_3
    return-void
.end method

.method private refreshRebootDialog()V
    .locals 5

    .prologue
    .line 149
    iget-object v1, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 150
    const-string v1, "shutDownDevice"

    const-string v2, "mRebootDialog == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 154
    :cond_0
    iget v1, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootSec:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootSec:I

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f040018

    invoke-virtual {p0, v2}, Lcom/htc/android/epst/shutDownDevice;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootSec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f040019

    invoke-virtual {p0, v2}, Lcom/htc/android/epst/shutDownDevice;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, message:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/android/epst/shutDownDevice;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "shutDownDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshRebootDialog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/htc/android/epst/shutDownDevice;->mRebootDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1, v0}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p0, Lcom/htc/android/epst/shutDownDevice;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private shutdownDevice()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, shutdown:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    sget-object v1, Lcom/htc/android/epst/EPST;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget-boolean v0, Lcom/htc/android/epst/shutDownDevice;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "shutDownDevice"

    const-string v1, "Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 66
    sget-boolean v0, Lcom/htc/android/epst/shutDownDevice;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "shutDownDevice"

    const-string v1, "Closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/htc/android/epst/shutDownDevice;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    return-void
.end method
