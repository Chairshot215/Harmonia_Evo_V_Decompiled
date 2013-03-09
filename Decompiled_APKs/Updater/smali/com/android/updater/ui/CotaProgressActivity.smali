.class public Lcom/android/updater/ui/CotaProgressActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "CotaProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;,
        Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_PROGRESS_COLUMN_CURRENT_BYTES:I = 0x2

.field private static final DOWNLOAD_PROGRESS_COLUMN_STATUS:I = 0x1

.field private static final DOWNLOAD_PROGRESS_COLUMN_TOTAL_BYTES:I = 0x3

.field private static final DOWNLOAD_PROGRESS_PROJECTION:[Ljava/lang/String; = null

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | CotaProgressActivity"


# instance fields
.field public final COTA_VAR_DATA:Ljava/lang/String;

.field public final COTA_VAR_ID:Ljava/lang/String;

.field private mDownloadId:I

.field private mDownloadProgressCursor:Landroid/database/Cursor;

.field private mDownloadState:Landroid/widget/TextView;

.field private mLastStatus:I

.field private mObject:Ljava/lang/Object;

.field private mProgressBar:Lcom/htc/widget/HtcProgressBar;

.field private mProgressMessage:Landroid/widget/TextView;

.field private mPromptSize:I

.field private mRefreshDownloadProgressHandler:Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;

.field private mRefreshDownloadProgressThread:Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;

.field private mUndeterminate:Lcom/htc/widget/HtcProgressBar;

.field private mWifiDownload:Z

.field progressObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "destination"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/updater/ui/CotaProgressActivity;->DOWNLOAD_PROGRESS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 35
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 41
    iput v1, p0, Lcom/android/updater/ui/CotaProgressActivity;->mLastStatus:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mWifiDownload:Z

    .line 58
    iput v1, p0, Lcom/android/updater/ui/CotaProgressActivity;->mPromptSize:I

    .line 60
    const-string v0, "_ID"

    iput-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->COTA_VAR_ID:Ljava/lang/String;

    .line 61
    const-string v0, "uri"

    iput-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->COTA_VAR_DATA:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mObject:Ljava/lang/Object;

    .line 179
    new-instance v0, Lcom/android/updater/ui/CotaProgressActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/updater/ui/CotaProgressActivity$1;-><init>(Lcom/android/updater/ui/CotaProgressActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->progressObserver:Landroid/database/ContentObserver;

    .line 245
    return-void
.end method

.method static synthetic access$100(Lcom/android/updater/ui/CotaProgressActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/updater/ui/CotaProgressActivity;->refreshDownloadProgress()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadState:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/htc/app/HtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/htc/app/HtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/htc/app/HtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/htc/app/HtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/updater/ui/CotaProgressActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mPromptSize:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/updater/ui/CotaProgressActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/updater/ui/CotaProgressActivity;->getMBsize(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/updater/ui/CotaProgressActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/updater/ui/CotaProgressActivity;->getKBsize(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mProgressMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/updater/ui/CotaProgressActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/updater/ui/CotaProgressActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mRefreshDownloadProgressHandler:Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/updater/ui/CotaProgressActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mLastStatus:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/updater/ui/CotaProgressActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/updater/ui/CotaProgressActivity;->mLastStatus:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/htc/widget/HtcProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/updater/ui/CotaProgressActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mWifiDownload:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/updater/ui/CotaProgressActivity;)Lcom/htc/app/HtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    return-object v0
.end method

.method private getKBsize(I)Ljava/lang/String;
    .locals 2
    .parameter "nBytes"

    .prologue
    .line 370
    if-gez p1, :cond_0

    .line 371
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/android/updater/ui/CotaProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, p1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f060063

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/CotaProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMBsize(I)Ljava/lang/String;
    .locals 2
    .parameter "nBytes"

    .prologue
    .line 359
    if-gez p1, :cond_0

    .line 360
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/android/updater/ui/CotaProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/updater/util/UpdaterUtil;->byteToMBString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/CotaProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hideDownloadTask(Landroid/content/ContentResolver;IZ)V
    .locals 5
    .parameter "resolver"
    .parameter "nId"
    .parameter "hide"

    .prologue
    .line 69
    if-gez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 73
    :cond_0
    :try_start_0
    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 74
    .local v0, downloadUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .local v2, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    .line 76
    const-string v3, "visibility"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0           #downloadUri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "UpdaterAPK | CotaProgressActivity"

    const-string v4, "hideDownloadTask() failed!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 78
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #downloadUri:Landroid/net/Uri;
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    const-string v3, "visibility"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private queryDownloadProgress(J)Landroid/database/Cursor;
    .locals 5
    .parameter "downloadId"

    .prologue
    const/4 v2, 0x0

    .line 352
    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 353
    .local v1, downloadUri:Landroid/net/Uri;
    sget-object v3, Lcom/android/updater/ui/CotaProgressActivity;->DOWNLOAD_PROGRESS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2, v2}, Lcom/android/updater/ui/CotaProgressActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 355
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0           #c:Landroid/database/Cursor;
    :goto_0
    return-object v0

    .restart local v0       #c:Landroid/database/Cursor;
    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method private refreshDownloadProgress()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 208
    const-string v0, "UpdaterAPK | CotaProgressActivity"

    const-string v1, "No download record!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v0, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;-><init>(Lcom/android/updater/ui/CotaProgressActivity;Lcom/android/updater/ui/CotaProgressActivity$1;)V

    iput-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mRefreshDownloadProgressThread:Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;

    .line 214
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mRefreshDownloadProgressThread:Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;

    invoke-virtual {v0}, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;->start()V

    goto :goto_0
.end method

.method private setUpProgressBar(J)V
    .locals 3
    .parameter "downloadId"

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/updater/ui/CotaProgressActivity;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/updater/ui/CotaProgressActivity;->queryDownloadProgress(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    .line 194
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 195
    const-string v0, "UpdaterAPK | CotaProgressActivity"

    const-string v2, "ERROR! Download progress database cursor is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    monitor-exit v1

    .line 202
    :goto_0
    return-void

    .line 198
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/updater/ui/CotaProgressActivity;->progressObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 201
    invoke-direct {p0}, Lcom/android/updater/ui/CotaProgressActivity;->refreshDownloadProgress()V

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, -0x1

    .line 380
    if-ne p2, v1, :cond_0

    .line 381
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->finishUpdaterSettings(Landroid/content/Context;)V

    .line 384
    iget v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mLastStatus:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mLastStatus:I

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mLastStatus:I

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadId:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/updater/ui/CotaProgressActivity;->hideDownloadTask(Landroid/content/ContentResolver;IZ)V

    .line 390
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadId:I

    .line 93
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaProgressActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, progressView:Landroid/view/View;
    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcProgressBar;

    iput-object v2, p0, Lcom/android/updater/ui/CotaProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    .line 95
    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcProgressBar;

    iput-object v2, p0, Lcom/android/updater/ui/CotaProgressActivity;->mUndeterminate:Lcom/htc/widget/HtcProgressBar;

    .line 96
    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ui/CotaProgressActivity;->mProgressMessage:Landroid/widget/TextView;

    .line 97
    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadState:Landroid/widget/TextView;

    .line 98
    iget-object v2, p0, Lcom/android/updater/ui/CotaProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lcom/android/updater/ui/CotaProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcProgressBar;->setIndeterminate(Z)V

    .line 100
    iget-object v2, p0, Lcom/android/updater/ui/CotaProgressActivity;->mUndeterminate:Lcom/htc/widget/HtcProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/android/updater/ui/CotaProgressActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 103
    .local v0, params:Lcom/htc/app/HtcAlertController$AlertParams;
    const v2, 0x7f060006

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/CotaProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 104
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 105
    const v2, 0x7f060024

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/CotaProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 106
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 107
    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 108
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaProgressActivity;->setupAlert()V

    .line 110
    new-instance v2, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;

    invoke-direct {v2, p0, v5}, Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;-><init>(Lcom/android/updater/ui/CotaProgressActivity;Lcom/android/updater/ui/CotaProgressActivity$1;)V

    iput-object v2, p0, Lcom/android/updater/ui/CotaProgressActivity;->mRefreshDownloadProgressHandler:Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressHandler;

    .line 111
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onDestroy()V

    .line 159
    iput-object v1, p0, Lcom/android/updater/ui/CotaProgressActivity;->mRefreshDownloadProgressThread:Lcom/android/updater/ui/CotaProgressActivity$RefreshDownloadProgressThread;

    .line 160
    iget-object v2, p0, Lcom/android/updater/ui/CotaProgressActivity;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 163
    :try_start_1
    iget-object v1, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/updater/ui/CotaProgressActivity;->progressObserver:Landroid/database/ContentObserver;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 164
    iget-object v1, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    .line 170
    :cond_0
    monitor-exit v2

    .line 171
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UpdaterAPK | CotaProgressActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDownloadProgressCursor can\'t unregister or close! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 395
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 397
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->finishUpdaterSettings(Landroid/content/Context;)V

    .line 399
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcAlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/updater/ui/CotaProgressActivity;->setIntent(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onPause()V

    .line 152
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onResume()V

    .line 129
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 130
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "_ID"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadId:I

    .line 132
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/updater/ui/CotaProgressActivity;->mWifiDownload:Z

    .line 135
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/updater/db/COTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/updater/ui/CotaProgressActivity;->mPromptSize:I

    .line 137
    iget v2, p0, Lcom/android/updater/ui/CotaProgressActivity;->mDownloadId:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/updater/ui/CotaProgressActivity;->setUpProgressBar(J)V

    .line 139
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStart()V

    .line 118
    invoke-virtual {p0}, Lcom/android/updater/ui/CotaProgressActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStop()V

    .line 177
    return-void
.end method
