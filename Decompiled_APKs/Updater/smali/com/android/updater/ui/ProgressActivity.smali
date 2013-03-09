.class public Lcom/android/updater/ui/ProgressActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "ProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;,
        Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_PROGRESS_COLUMN_CURRENT_BYTES:I = 0x2

.field private static final DOWNLOAD_PROGRESS_COLUMN_DESTINATION:I = 0x5

.field private static final DOWNLOAD_PROGRESS_COLUMN_FILE_NAME:I = 0x4

.field private static final DOWNLOAD_PROGRESS_COLUMN_STATUS:I = 0x1

.field private static final DOWNLOAD_PROGRESS_COLUMN_TOTAL_BYTES:I = 0x3

.field private static final DOWNLOAD_PROGRESS_PROJECTION:[Ljava/lang/String; = null

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | ProgressActivity"


# instance fields
.field private final ACTION_ATT_DISCARD:Ljava/lang/String;

.field private mDownloadId:I

.field private mDownloadProgressCursor:Landroid/database/Cursor;

.field private mDownloadState:Landroid/widget/TextView;

.field private mLastStatus:I

.field private mObject:Ljava/lang/Object;

.field private mProgressBar:Lcom/htc/widget/HtcProgressBar;

.field private mProgressMessage:Landroid/widget/TextView;

.field private mPromptSize:I

.field private mRefreshDownloadProgressHandler:Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;

.field private mRefreshDownloadProgressThread:Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;

.field private mUndeterminate:Lcom/htc/widget/HtcProgressBar;

.field private mVerifyPkgListener:Landroid/content/BroadcastReceiver;

.field private mWifiDownload:Z

.field progressObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
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

    sput-object v0, Lcom/android/updater/ui/ProgressActivity;->DOWNLOAD_PROGRESS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 42
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 48
    iput v1, p0, Lcom/android/updater/ui/ProgressActivity;->mLastStatus:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/updater/ui/ProgressActivity;->mWifiDownload:Z

    .line 67
    iput v1, p0, Lcom/android/updater/ui/ProgressActivity;->mPromptSize:I

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mObject:Ljava/lang/Object;

    .line 73
    const-string v0, "android.server.checkin.DOWNLAOD_DISCARD"

    iput-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->ACTION_ATT_DISCARD:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/android/updater/ui/ProgressActivity$1;

    invoke-direct {v0, p0}, Lcom/android/updater/ui/ProgressActivity$1;-><init>(Lcom/android/updater/ui/ProgressActivity;)V

    iput-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mVerifyPkgListener:Landroid/content/BroadcastReceiver;

    .line 284
    new-instance v0, Lcom/android/updater/ui/ProgressActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/updater/ui/ProgressActivity$2;-><init>(Lcom/android/updater/ui/ProgressActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->progressObserver:Landroid/database/ContentObserver;

    .line 364
    return-void
.end method

.method private CancelDownload()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 122
    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget v4, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 123
    .local v2, downloadUri:Landroid/net/Uri;
    sget-object v3, Lcom/android/updater/ui/ProgressActivity;->DOWNLOAD_PROGRESS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v5, v5}, Lcom/android/updater/ui/ProgressActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 127
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/updater/ui/ProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    if-eqz v1, :cond_1

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 136
    const/4 v1, 0x0

    .line 141
    :cond_1
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/updater/util/UpdaterUtil;->setFOTAStatus(Landroid/content/Context;Z)V

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.server.checkin.DOWNLAOD_DISCARD"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, attDiscardIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/updater/ui/ProgressActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/updater/ui/ProgressActivity;->finish()V

    .line 149
    return-void

    .line 134
    .end local v0           #attDiscardIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 136
    const/4 v1, 0x0

    :cond_2
    throw v3
.end method

.method private SetVerifyState()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mProgressMessage:Landroid/widget/TextView;

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mUndeterminate:Lcom/htc/widget/HtcProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const v1, 0x7f060046

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/ProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/updater/ui/ProgressActivity;->setOkBtnCenter(Z)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/ui/ProgressActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/updater/ui/ProgressActivity;->SetVerifyState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/updater/ui/ProgressActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadState:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/updater/ui/ProgressActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/updater/ui/ProgressActivity;->isDownloadStorageError(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/updater/ui/ProgressActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/updater/ui/ProgressActivity;->setOkBtnCenter(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/updater/ui/ProgressActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/updater/ui/ProgressActivity;->mWifiDownload:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/app/HtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/app/HtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/app/HtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/app/HtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/app/HtcAlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/updater/ui/ProgressActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/updater/ui/ProgressActivity;->mPromptSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/updater/ui/ProgressActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/updater/ui/ProgressActivity;->refreshDownloadProgress()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/updater/ui/ProgressActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/updater/ui/ProgressActivity;->getMBsize(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/updater/ui/ProgressActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mProgressMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/updater/ui/ProgressActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/updater/ui/ProgressActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/updater/ui/ProgressActivity;)Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mRefreshDownloadProgressHandler:Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/updater/ui/ProgressActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/updater/ui/ProgressActivity;->mLastStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/widget/HtcProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/updater/ui/ProgressActivity;)Lcom/htc/widget/HtcProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mUndeterminate:Lcom/htc/widget/HtcProgressBar;

    return-object v0
.end method

.method private getMBsize(I)Ljava/lang/String;
    .locals 2
    .parameter "nBytes"

    .prologue
    .line 550
    if-gez p1, :cond_0

    .line 551
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/android/updater/ui/ProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
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

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/ProgressActivity;->getText(I)Ljava/lang/CharSequence;

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
    .line 102
    if-gez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_0
    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 107
    .local v0, downloadUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .local v2, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    .line 109
    const-string v3, "visibility"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v0           #downloadUri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "UpdaterAPK | ProgressActivity"

    const-string v4, "hideDownloadTask() failed!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 111
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

.method private isDownloadStorageError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 562
    const/16 v0, 0x1ec

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1e1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f3

    if-ne p1, v0, :cond_1

    .line 565
    :cond_0
    const/4 v0, 0x1

    .line 567
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryDownloadProgress(J)Landroid/database/Cursor;
    .locals 5
    .parameter "downloadId"

    .prologue
    const/4 v2, 0x0

    .line 543
    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 544
    .local v1, downloadUri:Landroid/net/Uri;
    sget-object v3, Lcom/android/updater/ui/ProgressActivity;->DOWNLOAD_PROGRESS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2, v2}, Lcom/android/updater/ui/ProgressActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 546
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
    .line 314
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 315
    const-string v0, "UpdaterAPK | ProgressActivity"

    const-string v1, "No download record!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 320
    :cond_0
    new-instance v0, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;-><init>(Lcom/android/updater/ui/ProgressActivity;Lcom/android/updater/ui/ProgressActivity$1;)V

    iput-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mRefreshDownloadProgressThread:Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;

    .line 321
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mRefreshDownloadProgressThread:Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;

    invoke-virtual {v0}, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;->start()V

    goto :goto_0
.end method

.method private setOkBtnCenter(Z)V
    .locals 10
    .parameter "bOkBtn"

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/updater/ui/ProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 575
    .local v7, window:Landroid/view/Window;
    iget-object v8, p0, Lcom/android/updater/ui/ProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Lcom/htc/app/HtcAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 578
    .local v0, buttonNegative:Landroid/widget/Button;
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isDA()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 579
    const/4 p1, 0x1

    .line 583
    :cond_0
    if-eqz p1, :cond_1

    .line 584
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 585
    const v8, 0x20200b7

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 586
    .local v2, padding2:Landroid/view/View;
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 593
    :goto_0
    if-eqz p1, :cond_2

    .line 594
    invoke-virtual {p0}, Lcom/android/updater/ui/ProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/updater/ui/ProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/updater/util/UpdaterUtil;->getWeight(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)F

    move-result v6

    .line 597
    .local v6, weight:F
    const v8, 0x20200b1

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 598
    .local v1, leftSpacer:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 599
    .local v3, paramsL:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 600
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 603
    const v8, 0x20200b8

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 604
    .local v5, rightSpacer:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 605
    .local v4, paramsR:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 606
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 616
    .end local v3           #paramsL:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #paramsR:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #weight:F
    :goto_1
    return-void

    .line 588
    .end local v1           #leftSpacer:Landroid/view/View;
    .end local v2           #padding2:Landroid/view/View;
    .end local v5           #rightSpacer:Landroid/view/View;
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    const v8, 0x20200b7

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 590
    .restart local v2       #padding2:Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 610
    :cond_2
    const v8, 0x20200b1

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 611
    .restart local v1       #leftSpacer:Landroid/view/View;
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 613
    const v8, 0x20200b8

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 614
    .restart local v5       #rightSpacer:Landroid/view/View;
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setUpProgressBar(J)V
    .locals 3
    .parameter "downloadId"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/updater/ui/ProgressActivity;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/updater/ui/ProgressActivity;->queryDownloadProgress(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    .line 300
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 301
    const-string v0, "UpdaterAPK | ProgressActivity"

    const-string v2, "ERROR! Download progress database cursor is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    monitor-exit v1

    .line 308
    :goto_0
    return-void

    .line 304
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/updater/ui/ProgressActivity;->progressObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 307
    invoke-direct {p0}, Lcom/android/updater/ui/ProgressActivity;->refreshDownloadProgress()V

    goto :goto_0

    .line 304
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

    .line 619
    if-ne p2, v1, :cond_1

    .line 620
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->finishUpdaterSettings(Landroid/content/Context;)V

    .line 623
    iget v0, p0, Lcom/android/updater/ui/ProgressActivity;->mLastStatus:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/updater/ui/ProgressActivity;->mLastStatus:I

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/updater/ui/ProgressActivity;->mLastStatus:I

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/android/updater/ui/ProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadId:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/updater/ui/ProgressActivity;->hideDownloadTask(Landroid/content/ContentResolver;IZ)V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 630
    invoke-direct {p0}, Lcom/android/updater/ui/ProgressActivity;->CancelDownload()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 153
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadId:I

    .line 157
    invoke-virtual {p0}, Lcom/android/updater/ui/ProgressActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, progressView:Landroid/view/View;
    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcProgressBar;

    iput-object v2, p0, Lcom/android/updater/ui/ProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    .line 159
    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcProgressBar;

    iput-object v2, p0, Lcom/android/updater/ui/ProgressActivity;->mUndeterminate:Lcom/htc/widget/HtcProgressBar;

    .line 160
    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ui/ProgressActivity;->mProgressMessage:Landroid/widget/TextView;

    .line 161
    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadState:Landroid/widget/TextView;

    .line 162
    iget-object v2, p0, Lcom/android/updater/ui/ProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/android/updater/ui/ProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcProgressBar;->setIndeterminate(Z)V

    .line 164
    iget-object v2, p0, Lcom/android/updater/ui/ProgressActivity;->mUndeterminate:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 165
    iget-object v2, p0, Lcom/android/updater/ui/ProgressActivity;->mUndeterminate:Lcom/htc/widget/HtcProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcProgressBar;->setIndeterminate(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/updater/ui/ProgressActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 168
    .local v0, params:Lcom/htc/app/HtcAlertController$AlertParams;
    const v2, 0x7f060006

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/ProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 169
    invoke-virtual {p0}, Lcom/android/updater/ui/ProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 170
    const v2, 0x7f060024

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/ProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 171
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 172
    const v2, 0x7f060045

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/ProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 173
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 174
    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 175
    invoke-virtual {p0}, Lcom/android/updater/ui/ProgressActivity;->setupAlert()V

    .line 177
    new-instance v2, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;

    invoke-direct {v2, p0, v5}, Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;-><init>(Lcom/android/updater/ui/ProgressActivity;Lcom/android/updater/ui/ProgressActivity$1;)V

    iput-object v2, p0, Lcom/android/updater/ui/ProgressActivity;->mRefreshDownloadProgressHandler:Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressHandler;

    .line 178
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onDestroy()V

    .line 256
    iput-object v1, p0, Lcom/android/updater/ui/ProgressActivity;->mRefreshDownloadProgressThread:Lcom/android/updater/ui/ProgressActivity$RefreshDownloadProgressThread;

    .line 257
    iget-object v2, p0, Lcom/android/updater/ui/ProgressActivity;->mObject:Ljava/lang/Object;

    monitor-enter v2

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 260
    :try_start_1
    iget-object v1, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/updater/ui/ProgressActivity;->progressObserver:Landroid/database/ContentObserver;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 261
    iget-object v1, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 270
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UpdaterAPK | ProgressActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy() error! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
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
    .line 637
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 639
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->finishUpdaterSettings(Landroid/content/Context;)V

    .line 641
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcAlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 242
    invoke-virtual {p0, p1}, Lcom/android/updater/ui/ProgressActivity;->setIntent(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onPause()V

    .line 249
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/high16 v8, 0x4480

    const/4 v7, 0x0

    .line 199
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onResume()V

    .line 201
    invoke-virtual {p0}, Lcom/android/updater/ui/ProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 202
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "_ID"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadId:I

    .line 204
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->getUpdateInfo(Landroid/content/Context;)Lcom/android/updater/util/UpdaterUtil$UpdateInfo;

    move-result-object v4

    .line 206
    .local v4, ui:Lcom/android/updater/util/UpdaterUtil$UpdateInfo;
    invoke-static {p0, v4}, Lcom/android/updater/util/UpdaterUtil;->getDownloadInfo(Landroid/content/Context;Lcom/android/updater/util/UpdaterUtil$UpdateInfo;)Lcom/android/updater/util/UpdaterUtil$DownloadInfo;

    move-result-object v1

    .line 207
    .local v1, di:Lcom/android/updater/util/UpdaterUtil$DownloadInfo;
    if-nez v1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/android/updater/ui/ProgressActivity;->finish()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget v5, v1, Lcom/android/updater/util/UpdaterUtil$DownloadInfo;->downloadVisibility:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/android/updater/ui/ProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadId:I

    invoke-static {v5, v6, v7}, Lcom/android/updater/ui/ProgressActivity;->hideDownloadTask(Landroid/content/ContentResolver;IZ)V

    .line 217
    :cond_2
    invoke-virtual {p0}, Lcom/android/updater/ui/ProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 218
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v5, 0x5

    invoke-static {v0, v5, v7}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/updater/ui/ProgressActivity;->mWifiDownload:Z

    .line 221
    iput v9, p0, Lcom/android/updater/ui/ProgressActivity;->mPromptSize:I

    .line 222
    if-eqz v4, :cond_3

    iget-object v5, v4, Lcom/android/updater/util/UpdaterUtil$UpdateInfo;->size:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 223
    const/16 v5, 0xa

    invoke-static {v0, v5}, Lcom/android/updater/db/FOTASettings;->getString(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/updater/util/UpdaterUtil;->getSizeFromPrompt(Ljava/lang/String;)F

    move-result v3

    .line 224
    .local v3, sizeMB:F
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3

    .line 225
    mul-float v5, v3, v8

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Lcom/android/updater/ui/ProgressActivity;->mPromptSize:I

    .line 229
    .end local v3           #sizeMB:F
    :cond_3
    iget v5, p0, Lcom/android/updater/ui/ProgressActivity;->mDownloadId:I

    int-to-long v5, v5

    invoke-direct {p0, v5, v6}, Lcom/android/updater/ui/ProgressActivity;->setUpProgressBar(J)V

    .line 231
    iget v5, p0, Lcom/android/updater/ui/ProgressActivity;->mLastStatus:I

    invoke-static {v5}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 233
    const/16 v5, 0xc

    invoke-static {v0, v5, v7}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/updater/ui/ProgressActivity;->setOkBtnCenter(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStart()V

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v0, mVerifyFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.updater.VERIFY_FOTA_PKG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "com.android.updater.FOTA_CANCEL_CONFIRM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/android/updater/ui/ProgressActivity;->mVerifyPkgListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/updater/ui/ProgressActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0}, Lcom/android/updater/ui/ProgressActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/updater/ui/ProgressActivity;->mVerifyPkgListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/ProgressActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStop()V

    .line 282
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UpdaterAPK | ProgressActivity"

    const-string v2, "weird! unregisterReceiver fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
