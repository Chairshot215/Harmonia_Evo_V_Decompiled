.class public Lcom/android/browser/OpenDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OpenDownloadReceiver.java"


# static fields
.field private static sAsyncHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Open browser download async"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, thr:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/browser/OpenDownloadReceiver;->sAsyncHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/OpenDownloadReceiver;Landroid/content/Context;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/OpenDownloadReceiver;->onReceiveAsync(Landroid/content/Context;J)V

    return-void
.end method

.method private onReceiveAsync(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 67
    const-string v4, "download"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 69
    .local v2, manager:Landroid/app/DownloadManager;
    invoke-virtual {v2, p2, p3}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v3

    .line 70
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/browser/OpenDownloadReceiver;->openDownloadsPage(Landroid/content/Context;)V

    .line 83
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, launchIntent:Landroid/content/Intent;
    invoke-virtual {v2, p2, p3}, Landroid/app/DownloadManager;->getMimeTypeForDownloadedFile(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-direct {p0, p1}, Lcom/android/browser/OpenDownloadReceiver;->openDownloadsPage(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private openDownloadsPage(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, pageView:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, action:Ljava/lang/String;
    const-string v1, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/browser/OpenDownloadReceiver;->openDownloadsPage(Landroid/content/Context;)V

    .line 64
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v1, "extra_click_download_ids"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v7

    .line 50
    .local v7, ids:[J
    if-eqz v7, :cond_1

    array-length v1, v7

    if-nez v1, :cond_2

    .line 51
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/browser/OpenDownloadReceiver;->openDownloadsPage(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    :cond_2
    const/4 v1, 0x0

    aget-wide v3, v7, v1

    .line 55
    .local v3, id:J
    invoke-virtual {p0}, Lcom/android/browser/OpenDownloadReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v5

    .line 56
    .local v5, result:Landroid/content/BroadcastReceiver$PendingResult;
    new-instance v0, Lcom/android/browser/OpenDownloadReceiver$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/OpenDownloadReceiver$1;-><init>(Lcom/android/browser/OpenDownloadReceiver;Landroid/content/Context;JLandroid/content/BroadcastReceiver$PendingResult;)V

    .line 63
    .local v0, worker:Ljava/lang/Runnable;
    sget-object v1, Lcom/android/browser/OpenDownloadReceiver;->sAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
