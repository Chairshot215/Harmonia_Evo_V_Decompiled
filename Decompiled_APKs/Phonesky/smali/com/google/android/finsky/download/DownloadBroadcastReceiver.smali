.class public Lcom/google/android/finsky/download/DownloadBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadBroadcastReceiver.java"


# static fields
.field private static sDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/download/DownloadBroadcastReceiver;Landroid/net/Uri;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->getHttpStatusForUri(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/google/android/finsky/download/DownloadQueueImpl;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->sDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

    return-object v0
.end method

.method private getHttpStatusForUri(Landroid/net/Uri;)I
    .locals 4
    .parameter "destinationUri"

    .prologue
    .line 140
    sget-object v2, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->sDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

    invoke-virtual {v2}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getDownloadManager()Lcom/google/android/finsky/download/DownloadManager;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/finsky/download/DownloadManager;->queryStatus(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 142
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 143
    :cond_0
    const/4 v1, -0x1

    .line 148
    :goto_0
    return v1

    .line 145
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 147
    .local v1, httpStatus:I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static initialize(Lcom/google/android/finsky/download/DownloadQueueImpl;)V
    .locals 0
    .parameter "downloadQueue"

    .prologue
    .line 27
    sput-object p0, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->sDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

    .line 28
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 32
    const-string v12, "Intent received at DownloadBroadcastReceiver"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 35
    .local v10, intentUri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 38
    .local v9, intentAction:Ljava/lang/String;
    if-nez v10, :cond_3

    .line 41
    const-string v12, "extra_download_id"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 42
    .local v5, id:J
    const-wide/16 v12, -0x1

    cmp-long v12, v5, v12

    if-nez v12, :cond_0

    .line 43
    const-string v12, "extra_click_download_ids"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v7

    .line 45
    .local v7, idArray:[J
    if-eqz v7, :cond_0

    array-length v12, v7

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 46
    const/4 v12, 0x0

    aget-wide v5, v7, v12

    .line 49
    .end local v7           #idArray:[J
    :cond_0
    const-wide/16 v12, -0x1

    cmp-long v12, v5, v12

    if-eqz v12, :cond_1

    .line 50
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 51
    .local v8, idString:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 63
    .end local v5           #id:J
    .end local v8           #idString:Ljava/lang/String;
    :cond_1
    :goto_0
    move-object v2, v10

    .line 64
    .local v2, contentUri:Landroid/net/Uri;
    move-object v1, v9

    .line 66
    .local v1, action:Ljava/lang/String;
    sget-object v12, Lcom/google/android/finsky/download/DownloadBroadcastReceiver;->sDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

    invoke-virtual {v12, v2}, Lcom/google/android/finsky/download/DownloadQueueImpl;->getDownloadByContentUri(Landroid/net/Uri;)Lcom/google/android/finsky/download/Download;

    move-result-object v4

    .line 67
    .local v4, download:Lcom/google/android/finsky/download/Download;
    if-nez v4, :cond_4

    .line 68
    const-string v12, "DownloadBroadcastReceiver could not find %s in queue."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    const-string v12, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 81
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object p1

    .line 83
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 84
    .local v3, currentAccount:Landroid/accounts/Account;
    if-eqz v3, :cond_2

    .line 85
    invoke-static/range {p1 .. p1}, Lcom/google/android/finsky/activities/MainActivity;->getMyDownloadsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v11

    .line 86
    .local v11, myAppsIntent:Landroid/content/Intent;
    const/high16 v12, 0x1000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    .end local v3           #currentAccount:Landroid/accounts/Account;
    .end local v11           #myAppsIntent:Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 58
    .end local v1           #action:Ljava/lang/String;
    .end local v2           #contentUri:Landroid/net/Uri;
    .end local v4           #download:Lcom/google/android/finsky/download/Download;
    :cond_3
    const-string v12, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 59
    const-string v9, "android.intent.action.DOWNLOAD_COMPLETE"

    goto :goto_0

    .line 94
    .restart local v1       #action:Ljava/lang/String;
    .restart local v2       #contentUri:Landroid/net/Uri;
    .restart local v4       #download:Lcom/google/android/finsky/download/Download;
    :cond_4
    new-instance v12, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;

    invoke-direct {v12, p0, v2, v1}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;-><init>(Lcom/google/android/finsky/download/DownloadBroadcastReceiver;Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/net/Uri;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-virtual {v12, v13}, Lcom/google/android/finsky/download/DownloadBroadcastReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
