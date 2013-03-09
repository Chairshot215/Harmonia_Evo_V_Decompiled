.class public Lcom/android/updater/ui/AcuProgressActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "AcuProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final ACTION_APP_DOWNLOAD_DISCARD:Ljava/lang/String; = "android.server.checkin.APP_DOWNLOAD_DISCARD"

.field public static final ACU_VAR_ID:Ljava/lang/String; = "_ID"

.field public static final ACU_VAR_URL:Ljava/lang/String; = "URL"

.field private static final DOWNLOAD_PROGRESS_COLUMN_CURRENT_BYTES:I = 0x2

.field private static final DOWNLOAD_PROGRESS_COLUMN_STATUS:I = 0x1

.field private static final DOWNLOAD_PROGRESS_COLUMN_TOTAL_BYTES:I = 0x3

.field private static final DOWNLOAD_PROGRESS_PROJECTION:[Ljava/lang/String; = null

.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | AcuProgressActivity"


# instance fields
.field private mCloseAcuProgressActivityListener:Landroid/content/BroadcastReceiver;

.field private mDownloadId:I

.field private mDownloadProgressCursor:Landroid/database/Cursor;

.field private mDownloadState:Landroid/widget/TextView;

.field private mInstallAppListener:Landroid/content/BroadcastReceiver;

.field private mLastStatus:I

.field private mProgressBar:Lcom/htc/widget/HtcProgressBar;

.field private mProgressMessage:Landroid/widget/TextView;

.field private mPromptSize:I

.field private mUndeterminate:Lcom/htc/widget/HtcProgressBar;

.field private mWifiDownload:Z

.field progressObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
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

    sput-object v0, Lcom/android/updater/ui/AcuProgressActivity;->DOWNLOAD_PROGRESS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 38
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 44
    iput v1, p0, Lcom/android/updater/ui/AcuProgressActivity;->mLastStatus:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/updater/ui/AcuProgressActivity;->mWifiDownload:Z

    .line 61
    iput v1, p0, Lcom/android/updater/ui/AcuProgressActivity;->mPromptSize:I

    .line 70
    new-instance v0, Lcom/android/updater/ui/AcuProgressActivity$1;

    invoke-direct {v0, p0}, Lcom/android/updater/ui/AcuProgressActivity$1;-><init>(Lcom/android/updater/ui/AcuProgressActivity;)V

    iput-object v0, p0, Lcom/android/updater/ui/AcuProgressActivity;->mCloseAcuProgressActivityListener:Landroid/content/BroadcastReceiver;

    .line 366
    new-instance v0, Lcom/android/updater/ui/AcuProgressActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/updater/ui/AcuProgressActivity$2;-><init>(Lcom/android/updater/ui/AcuProgressActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/updater/ui/AcuProgressActivity;->progressObserver:Landroid/database/ContentObserver;

    .line 379
    new-instance v0, Lcom/android/updater/ui/AcuProgressActivity$3;

    invoke-direct {v0, p0}, Lcom/android/updater/ui/AcuProgressActivity$3;-><init>(Lcom/android/updater/ui/AcuProgressActivity;)V

    iput-object v0, p0, Lcom/android/updater/ui/AcuProgressActivity;->mInstallAppListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private CancelDownload()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 341
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 342
    .local v1, downloadUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/updater/ui/AcuProgressActivity;->DOWNLOAD_PROGRESS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 346
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :cond_0
    if-eqz v6, :cond_1

    .line 354
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 355
    const/4 v6, 0x0

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/updater/util/UpdaterUtil;->setAppUpdateStatus(Landroid/content/Context;Z)V

    .line 360
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.server.checkin.APP_DOWNLOAD_DISCARD"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/android/updater/ui/AcuProgressActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuProgressActivity;->finish()V

    .line 363
    return-void

    .line 353
    .end local v7           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 354
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 355
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method static synthetic access$000(Lcom/android/updater/ui/AcuProgressActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/updater/ui/AcuProgressActivity;->refreshDownloadProgress()V

    return-void
.end method

.method private getKBsize(I)Ljava/lang/String;
    .locals 2
    .parameter "nBytes"

    .prologue
    .line 315
    if-gez p1, :cond_0

    .line 316
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/android/updater/ui/AcuProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
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

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/AcuProgressActivity;->getText(I)Ljava/lang/CharSequence;

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
    .line 305
    if-gez p1, :cond_0

    .line 306
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/android/updater/ui/AcuProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
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

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/AcuProgressActivity;->getText(I)Ljava/lang/CharSequence;

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
    .line 84
    if-gez p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 88
    :cond_0
    :try_start_0
    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 89
    .local v0, downloadUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v2, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    .line 91
    const-string v3, "visibility"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v0           #downloadUri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "UpdaterAPK | AcuProgressActivity"

    const-string v4, "hideDownloadTask() failed!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 93
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
    .locals 7
    .parameter "downloadId"

    .prologue
    const/4 v3, 0x0

    .line 297
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 298
    .local v1, downloadUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/updater/ui/AcuProgressActivity;->DOWNLOAD_PROGRESS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 300
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v6

    .restart local v6       #c:Landroid/database/Cursor;
    :cond_0
    move-object v6, v3

    goto :goto_0
.end method

.method private refreshDownloadProgress()V
    .locals 10

    .prologue
    const v9, 0x7f060008

    const v8, 0x7f060006

    const/4 v4, -0x1

    const v7, 0x7f060056

    .line 205
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-nez v5, :cond_0

    .line 206
    const-string v4, "UpdaterAPK | AcuProgressActivity"

    const-string v5, "No download record!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->requery()Z

    .line 210
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    .line 211
    const-string v4, "UpdaterAPK | AcuProgressActivity"

    const-string v5, "No more record for cursor!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_1
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 217
    .local v1, nCurStatus:I
    iput v1, p0, Lcom/android/updater/ui/AcuProgressActivity;->mLastStatus:I

    .line 218
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 219
    .local v2, nTotal:I
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 221
    .local v0, nCur:I
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 222
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcProgressBar;->setMax(I)V

    .line 223
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcProgressBar;->setProgress(I)V

    .line 224
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v5, v2}, Lcom/htc/widget/HtcProgressBar;->setSecondaryProgress(I)V

    .line 235
    iget-boolean v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mWifiDownload:Z

    if-eqz v5, :cond_6

    invoke-static {p0}, Lcom/android/updater/util/UpdaterNetworkCheck;->isWifiOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {p0}, Lcom/android/updater/util/UpdaterNetworkCheck;->isIPTOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 237
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0, v7}, Lcom/android/updater/ui/AcuProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNoIPTFeature()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 240
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadState:Landroid/widget/TextView;

    const v6, 0x7f060085

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 273
    :goto_1
    const-string v3, ""

    .line 275
    .local v3, strMsg:Ljava/lang/String;
    iget v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mPromptSize:I

    if-lez v5, :cond_2

    .line 276
    iget v2, p0, Lcom/android/updater/ui/AcuProgressActivity;->mPromptSize:I

    .line 277
    if-le v0, v2, :cond_2

    .line 278
    move v0, v2

    .line 282
    :cond_2
    if-lez v2, :cond_3

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v6, v2

    int-to-long v8, v0

    invoke-static {v6, v7, v8, v9}, Lcom/android/updater/util/UpdaterUtil;->getPercentageText(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 287
    :cond_3
    const/high16 v5, 0x10

    if-lt v2, v5, :cond_c

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/updater/ui/AcuProgressActivity;->getMBsize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-gtz v2, :cond_4

    move v2, v4

    .end local v2           #nTotal:I
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/updater/ui/AcuProgressActivity;->getMBsize(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    :goto_2
    iget-object v4, p0, Lcom/android/updater/ui/AcuProgressActivity;->mProgressMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 242
    .end local v3           #strMsg:Ljava/lang/String;
    .restart local v2       #nTotal:I
    :cond_5
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadState:Landroid/widget/TextView;

    const v6, 0x7f06004a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 245
    :cond_6
    iget-boolean v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mWifiDownload:Z

    if-nez v5, :cond_a

    invoke-static {p0}, Lcom/android/updater/util/UpdaterNetworkCheck;->isRoaming(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 247
    invoke-static {p0}, Lcom/android/updater/util/UpdaterNetworkCheck;->isWifiOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {p0}, Lcom/android/updater/util/UpdaterNetworkCheck;->isIPTOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 248
    :cond_7
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0, v8}, Lcom/android/updater/ui/AcuProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadState:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 252
    :cond_8
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0, v7}, Lcom/android/updater/ui/AcuProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    invoke-static {}, Lcom/android/updater/util/UpdaterCustomizeCheck;->isNoIPTFeature()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 255
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadState:Landroid/widget/TextView;

    const v6, 0x7f060086

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 257
    :cond_9
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadState:Landroid/widget/TextView;

    const v6, 0x7f060079

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 262
    :cond_a
    iget-boolean v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mWifiDownload:Z

    if-nez v5, :cond_b

    invoke-static {p0}, Lcom/android/updater/util/UpdaterNetworkCheck;->isAnyNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 263
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0, v7}, Lcom/android/updater/ui/AcuProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadState:Landroid/widget/TextView;

    const v6, 0x7f060078

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 267
    :cond_b
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {p0, v8}, Lcom/android/updater/ui/AcuProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/app/HtcAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v5, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadState:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 290
    .restart local v3       #strMsg:Ljava/lang/String;
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/updater/ui/AcuProgressActivity;->getKBsize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-gtz v2, :cond_d

    :goto_3
    invoke-direct {p0, v4}, Lcom/android/updater/ui/AcuProgressActivity;->getKBsize(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_d
    move v4, v2

    goto :goto_3
.end method

.method private setUpProgressBar(J)V
    .locals 2
    .parameter "downloadId"

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/android/updater/ui/AcuProgressActivity;->queryDownloadProgress(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    .line 194
    iget-object v0, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 195
    const-string v0, "UpdaterAPK | AcuProgressActivity"

    const-string v1, "ERROR! Download progress database cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/updater/ui/AcuProgressActivity;->progressObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 200
    invoke-direct {p0}, Lcom/android/updater/ui/AcuProgressActivity;->refreshDownloadProgress()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, -0x1

    .line 324
    if-ne p2, v1, :cond_1

    .line 325
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->finishUpdaterSettings(Landroid/content/Context;)V

    .line 328
    iget v0, p0, Lcom/android/updater/ui/AcuProgressActivity;->mLastStatus:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/updater/ui/AcuProgressActivity;->mLastStatus:I

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/updater/ui/AcuProgressActivity;->mLastStatus:I

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadId:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/updater/ui/AcuProgressActivity;->hideDownloadTask(Landroid/content/ContentResolver;IZ)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/android/updater/ui/AcuProgressActivity;->CancelDownload()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/16 v5, 0x8

    .line 104
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadId:I

    .line 108
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuProgressActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, progressView:Landroid/view/View;
    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcProgressBar;

    iput-object v2, p0, Lcom/android/updater/ui/AcuProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    .line 110
    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcProgressBar;

    iput-object v2, p0, Lcom/android/updater/ui/AcuProgressActivity;->mUndeterminate:Lcom/htc/widget/HtcProgressBar;

    .line 111
    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ui/AcuProgressActivity;->mProgressMessage:Landroid/widget/TextView;

    .line 112
    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadState:Landroid/widget/TextView;

    .line 113
    iget-object v2, p0, Lcom/android/updater/ui/AcuProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/android/updater/ui/AcuProgressActivity;->mProgressBar:Lcom/htc/widget/HtcProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcProgressBar;->setIndeterminate(Z)V

    .line 115
    iget-object v2, p0, Lcom/android/updater/ui/AcuProgressActivity;->mUndeterminate:Lcom/htc/widget/HtcProgressBar;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/android/updater/ui/AcuProgressActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 118
    .local v0, params:Lcom/htc/app/HtcAlertController$AlertParams;
    const v2, 0x7f060006

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/AcuProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 119
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 120
    const v2, 0x7f060024

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/AcuProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 121
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 122
    const v2, 0x7f060045

    invoke-virtual {p0, v2}, Lcom/android/updater/ui/AcuProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 123
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 124
    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 125
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuProgressActivity;->setupAlert()V

    .line 127
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 415
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 417
    invoke-static {p0}, Lcom/android/updater/util/UpdaterUtil;->finishUpdaterSettings(Landroid/content/Context;)V

    .line 419
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/app/HtcAlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/updater/ui/AcuProgressActivity;->setIntent(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 180
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onPause()V

    .line 181
    iget-object v1, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/updater/ui/AcuProgressActivity;->progressObserver:Landroid/database/ContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 184
    iget-object v1, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    .line 190
    :cond_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UpdaterAPK | AcuProgressActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDownloadProgressCursor can\'t unregister or close! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 154
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onResume()V

    .line 156
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 157
    .local v2, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 158
    .local v0, apkSource:Ljava/lang/String;
    const-string v3, "_ID"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadId:I

    .line 159
    const-string v3, "URL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 162
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/updater/ui/AcuProgressActivity;->mWifiDownload:Z

    .line 164
    invoke-static {v1, v0}, Lcom/android/updater/db/FOTADetail;->getApkSize(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/updater/ui/AcuProgressActivity;->mPromptSize:I

    .line 166
    iget v3, p0, Lcom/android/updater/ui/AcuProgressActivity;->mDownloadId:I

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lcom/android/updater/ui/AcuProgressActivity;->setUpProgressBar(J)V

    .line 168
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStart()V

    .line 135
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v1, mInstallFilter:Landroid/content/IntentFilter;
    const-string v2, "android.server.checkin.APP_NOTIFY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/android/updater/ui/AcuProgressActivity;->mInstallAppListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/updater/ui/AcuProgressActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v0, mCloseAcuProgressActivityFilter:Landroid/content/IntentFilter;
    const-string v2, "android.server.checkin.APPUPDATE_FAIL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/android/updater/ui/AcuProgressActivity;->mCloseAcuProgressActivityListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/updater/ui/AcuProgressActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/android/updater/ui/AcuProgressActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/android/updater/ui/AcuProgressActivity;->mInstallAppListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/AcuProgressActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 404
    iget-object v1, p0, Lcom/android/updater/ui/AcuProgressActivity;->mCloseAcuProgressActivityListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/updater/ui/AcuProgressActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStop()V

    .line 409
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "UpdaterAPK | AcuProgressActivity"

    const-string v2, "weird! unregisterReceiver fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
