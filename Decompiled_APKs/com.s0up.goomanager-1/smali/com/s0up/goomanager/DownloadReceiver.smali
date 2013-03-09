.class public Lcom/s0up/goomanager/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;
    }
.end annotation


# static fields
.field public static final PREFERENCES_FILE:Ljava/lang/String; = "goomanager"

.field public static downloadId:J

.field public static extras:Landroid/os/Bundle;


# instance fields
.field private contentText:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field dm:Landroid/app/DownloadManager;

.field fileUri:Landroid/net/Uri;

.field notificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/s0up/goomanager/DownloadReceiver;->extras:Landroid/os/Bundle;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/DownloadReceiver;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/s0up/goomanager/DownloadReceiver;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/s0up/goomanager/DownloadReceiver;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/s0up/goomanager/DownloadReceiver;->contentText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/s0up/goomanager/DownloadReceiver;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/s0up/goomanager/DownloadReceiver;->contentTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/s0up/goomanager/DownloadReceiver;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/s0up/goomanager/DownloadReceiver;->contentText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 34
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 35
    .local v3, manageDownloads:Landroid/content/Intent;
    const-string v7, "android.intent.action.VIEW_DOWNLOADS"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const/high16 v7, 0x1000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    const-string v7, "download"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/DownloadManager;

    iput-object v7, p0, Lcom/s0up/goomanager/DownloadReceiver;->dm:Landroid/app/DownloadManager;

    .line 38
    const-string v7, "extra_download_id"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    sput-wide v7, Lcom/s0up/goomanager/DownloadReceiver;->downloadId:J

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 45
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    :cond_0
    const-string v7, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .local v1, apiVersion:I
    const/16 v7, 0xb

    if-gt v1, v7, :cond_3

    .line 52
    iget-object v7, p0, Lcom/s0up/goomanager/DownloadReceiver;->dm:Landroid/app/DownloadManager;

    new-instance v8, Landroid/app/DownloadManager$Query;

    invoke-direct {v8}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v9, 0x1

    new-array v9, v9, [J

    sget-wide v10, Lcom/s0up/goomanager/DownloadReceiver;->downloadId:J

    aput-wide v10, v9, v12

    invoke-virtual {v8, v9}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    .line 54
    .local v2, c:Landroid/database/Cursor;
    const-string v6, ""

    .line 55
    .local v6, uriString:Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 58
    const-string v7, "local_uri"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 57
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 59
    const-string v7, "status"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, status:Ljava/lang/String;
    const-string v7, "reason"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, reason:Ljava/lang/String;
    const-string v7, "GOO"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Status of file is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for reason "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-eqz v6, :cond_2

    .line 64
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    .line 73
    .end local v2           #c:Landroid/database/Cursor;
    .end local v4           #reason:Ljava/lang/String;
    .end local v5           #status:Ljava/lang/String;
    .end local v6           #uriString:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    if-nez v7, :cond_4

    .line 74
    const-string v7, "Download failed"

    iput-object v7, p0, Lcom/s0up/goomanager/DownloadReceiver;->contentTitle:Ljava/lang/String;

    .line 75
    const-string v7, "Download was not successful!"

    iput-object v7, p0, Lcom/s0up/goomanager/DownloadReceiver;->contentText:Ljava/lang/String;

    .line 76
    new-instance v7, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;

    invoke-direct {v7, p0, p1}, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;-><init>(Lcom/s0up/goomanager/DownloadReceiver;Landroid/content/Context;)V

    new-array v8, v12, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    .end local v1           #apiVersion:I
    :cond_2
    :goto_1
    return-void

    .line 71
    .restart local v1       #apiVersion:I
    :cond_3
    iget-object v7, p0, Lcom/s0up/goomanager/DownloadReceiver;->dm:Landroid/app/DownloadManager;

    sget-wide v8, Lcom/s0up/goomanager/DownloadReceiver;->downloadId:J

    invoke-virtual {v7, v8, v9}, Landroid/app/DownloadManager;->getUriForDownloadedFile(J)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/s0up/goomanager/DownloadReceiver;->fileUri:Landroid/net/Uri;

    goto :goto_0

    .line 78
    :cond_4
    new-instance v7, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;

    invoke-direct {v7, p0, p1}, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;-><init>(Lcom/s0up/goomanager/DownloadReceiver;Landroid/content/Context;)V

    new-array v8, v12, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/s0up/goomanager/DownloadReceiver$FinishDownload;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
