.class public Lcom/google/android/feedback/SendService;
.super Landroid/app/Service;
.source "SendService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feedback/SendService$ScannerThread;
    }
.end annotation


# instance fields
.field private mFirstScan:Z

.field private mHandler:Landroid/os/Handler;

.field private mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mScanAgain:Z

.field private mScannerThread:Lcom/google/android/feedback/SendService$ScannerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/feedback/SendService;->mHandler:Landroid/os/Handler;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/feedback/SendService;)Lcom/google/android/common/http/GoogleHttpClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/feedback/SendService;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/feedback/SendService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/feedback/SendService;->onThreadFinished(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/feedback/SendService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/feedback/SendService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onThreadFinished(ZZ)V
    .locals 3
    .parameter "networkError"
    .parameter "allReportsSent"

    .prologue
    .line 125
    const-string v0, "GoogleFeedbackSendService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished report scan: scanAgain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/feedback/SendService;->mScanAgain:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/feedback/SendService;->mScannerThread:Lcom/google/android/feedback/SendService$ScannerThread;

    .line 127
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/feedback/SendService;->mScanAgain:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/google/android/feedback/SendService;->scanForReports()V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {p0, v0}, Lcom/google/android/feedback/FeedbackConnectivityReceiver;->setEnabled(Landroid/content/Context;Z)V

    .line 133
    invoke-virtual {p0}, Lcom/google/android/feedback/SendService;->stopSelf()V

    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private scanForReports()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/google/android/feedback/SendService;->mScannerThread:Lcom/google/android/feedback/SendService$ScannerThread;

    if-nez v1, :cond_0

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/feedback/SendService;->mScanAgain:Z

    .line 105
    const-string v1, "GoogleFeedbackSendService"

    const-string v2, "starting report scan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/feedback/SendService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "reports"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .local v0, dataDir:Ljava/io/File;
    new-instance v1, Lcom/google/android/feedback/SendService$ScannerThread;

    invoke-direct {v1, p0, v0}, Lcom/google/android/feedback/SendService$ScannerThread;-><init>(Lcom/google/android/feedback/SendService;Ljava/io/File;)V

    iput-object v1, p0, Lcom/google/android/feedback/SendService;->mScannerThread:Lcom/google/android/feedback/SendService$ScannerThread;

    .line 108
    iget-object v1, p0, Lcom/google/android/feedback/SendService;->mScannerThread:Lcom/google/android/feedback/SendService$ScannerThread;

    invoke-virtual {v1}, Lcom/google/android/feedback/SendService$ScannerThread;->start()V

    .line 113
    .end local v0           #dataDir:Ljava/io/File;
    :goto_0
    return-void

    .line 111
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/feedback/SendService;->mScanAgain:Z

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 81
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    const-string v1, "AndroidGoogleFeedback/1.0"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/feedback/SendService;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/feedback/SendService;->mFirstScan:Z

    .line 84
    invoke-direct {p0}, Lcom/google/android/feedback/SendService;->scanForReports()V

    .line 85
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 91
    iget-boolean v0, p0, Lcom/google/android/feedback/SendService;->mFirstScan:Z

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/feedback/SendService;->mFirstScan:Z

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/google/android/feedback/SendService;->scanForReports()V

    goto :goto_0
.end method
