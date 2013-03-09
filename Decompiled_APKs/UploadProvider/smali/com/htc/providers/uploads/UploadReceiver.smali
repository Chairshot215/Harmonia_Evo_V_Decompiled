.class public Lcom/htc/providers/uploads/UploadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UploadReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "UploadReceiver"

.field private static t:Ljava/lang/Thread;


# instance fields
.field mContext:Landroid/content/Context;

.field mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    sput-object p0, Lcom/htc/providers/uploads/UploadReceiver;->t:Ljava/lang/Thread;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 28
    const-string v1, "UploadReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    sget-object v1, Lcom/htc/providers/uploads/UploadReceiver;->t:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/htc/providers/uploads/UploadReceiver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/htc/providers/uploads/UploadReceiver$1;-><init>(Lcom/htc/providers/uploads/UploadReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    sput-object v1, Lcom/htc/providers/uploads/UploadReceiver;->t:Ljava/lang/Thread;

    .line 54
    sget-object v1, Lcom/htc/providers/uploads/UploadReceiver;->t:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iput-object p1, p0, Lcom/htc/providers/uploads/UploadReceiver;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    .line 59
    const-string v1, "UploadReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batchId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.htc.providers.uploads.intent_batch_id"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    .local v0, receiveThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 67
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 69
    const-string v7, "UploadReceiver"

    const-string v8, "Receiver onBoot"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/htc/providers/uploads/UploadReceiver;->mContext:Landroid/content/Context;

    const-class v10, Lcom/htc/providers/uploads/UploadService;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/providers/uploads/UploadHelper;->getLastFrequency(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "wifi_only"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 74
    const-string v7, "UploadReceiver"

    const-string v8, "daily, start auto upload service"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mContext:Landroid/content/Context;

    const-class v8, Lcom/htc/providers/uploads/AutoUploadService;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v1, autoUploadService:Landroid/content/Intent;
    const-string v7, "auto_upload_service_reason"

    const-string v8, "scheduler_alarm"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 148
    .end local v1           #autoUploadService:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 83
    const-string v7, "UploadReceiver"

    const-string v8, "Receiver onConnectivity"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    const-string v8, "networkInfo"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 87
    .local v4, info:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/htc/providers/uploads/UploadReceiver;->mContext:Landroid/content/Context;

    const-class v10, Lcom/htc/providers/uploads/UploadService;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 92
    .end local v4           #info:Landroid/net/NetworkInfo;
    :cond_2
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.UPLOAD_WAKEUP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 94
    const-string v7, "UploadReceiver"

    const-string v8, "Receiver retry"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/htc/providers/uploads/UploadReceiver;->mContext:Landroid/content/Context;

    const-class v10, Lcom/htc/providers/uploads/UploadService;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 97
    :cond_3
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.UPLOAD_OPEN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.UPLOAD_LIST"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 100
    :cond_4
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    const-string v8, "com.htc.providers.uploads.intent_batch_id"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 102
    .local v2, batchId:I
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    const-string v8, "com.htc.providers.uploads.intent_insert_time"

    const-wide/16 v9, -0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 104
    .local v5, insertTime:J
    const-string v7, "UploadReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "db insert time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cur time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v7, "UploadReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "batchId== "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.UPLOAD_OPEN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 110
    const-string v7, "UploadReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receiver open for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_1
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.UPLOAD_OPEN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v7, "UploadsObserver"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, activityIntent:Landroid/content/Intent;
    const/high16 v7, 0x1400

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    const-string v7, "com.htc.providers.uploads.intent_batch_id"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    :try_start_0
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 123
    :catch_0
    move-exception v3

    .line 125
    .local v3, ex:Landroid/content/ActivityNotFoundException;
    const-string v7, "UploadReceiver"

    const-string v8, "no activity"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 112
    .end local v0           #activityIntent:Landroid/content/Intent;
    .end local v3           #ex:Landroid/content/ActivityNotFoundException;
    :cond_5
    const-string v7, "UploadReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Receiver list for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 137
    .end local v2           #batchId:I
    .end local v5           #insertTime:J
    :cond_6
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.UPLOAD_HIDE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 138
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 139
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    long-to-int v2, v7

    .line 140
    .restart local v2       #batchId:I
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/htc/providers/uploads/UploadHelper;->clearBatchUpload(Landroid/content/Context;I)V

    .line 141
    const-string v7, "UploadReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "batchId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v7, Lcom/htc/providers/uploads/UploadService;->mNotifier:Lcom/htc/providers/uploads/UploadNotification;

    iget-object v7, v7, Lcom/htc/providers/uploads/UploadNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v7, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 144
    .end local v2           #batchId:I
    :cond_7
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UPDATE_NOTIFY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 145
    iget-object v7, p0, Lcom/htc/providers/uploads/UploadReceiver;->mIntent:Landroid/content/Intent;

    const-string v8, "batchId"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 146
    .restart local v2       #batchId:I
    sget-object v7, Lcom/htc/providers/uploads/UploadService;->mNotifier:Lcom/htc/providers/uploads/UploadNotification;

    invoke-virtual {v7, v2, v10, v10}, Lcom/htc/providers/uploads/UploadNotification;->updateNotification(IZZ)V

    goto/16 :goto_0
.end method
