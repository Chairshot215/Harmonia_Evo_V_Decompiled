.class public Lcom/htc/providers/uploads/AutoUploadService;
.super Landroid/app/Service;
.source "AutoUploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;
    }
.end annotation


# static fields
.field private static final MSG_STOPSELF:I = 0x0

.field private static final STATUS_NO_INTENT:I = -0x1

.field private static final STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutoUploadService"

.field private static final secondDate:Ljava/text/SimpleDateFormat;


# instance fields
.field private dbLock:Z

.field private handlingLock:Z

.field private intents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mHandler:Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;

.field private stopselfCount:I

.field private uploadingLock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/providers/uploads/AutoUploadService;->secondDate:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService;->intents:Ljava/util/ArrayList;

    .line 32
    iput-boolean v1, p0, Lcom/htc/providers/uploads/AutoUploadService;->handlingLock:Z

    .line 33
    iput-boolean v1, p0, Lcom/htc/providers/uploads/AutoUploadService;->uploadingLock:Z

    .line 34
    iput-boolean v1, p0, Lcom/htc/providers/uploads/AutoUploadService;->dbLock:Z

    .line 35
    iput v1, p0, Lcom/htc/providers/uploads/AutoUploadService;->stopselfCount:I

    .line 405
    return-void
.end method

.method static synthetic access$100(Lcom/htc/providers/uploads/AutoUploadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/providers/uploads/AutoUploadService;->dbLock:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/providers/uploads/AutoUploadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/providers/uploads/AutoUploadService;->dbLock:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/providers/uploads/AutoUploadService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/providers/uploads/AutoUploadService;->stopselfCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/providers/uploads/AutoUploadService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/htc/providers/uploads/AutoUploadService;->stopselfCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/htc/providers/uploads/AutoUploadService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/providers/uploads/AutoUploadService;->stopselfCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/providers/uploads/AutoUploadService;->stopselfCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/providers/uploads/AutoUploadService;)Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService;->mHandler:Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/providers/uploads/AutoUploadService;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/providers/uploads/AutoUploadService;->startUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/providers/uploads/AutoUploadService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/providers/uploads/AutoUploadService;->setSchedulerAlarm(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/providers/uploads/AutoUploadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/htc/providers/uploads/AutoUploadService;->uploadingLock:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/providers/uploads/AutoUploadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/providers/uploads/AutoUploadService;->uploadingLock:Z

    return p1
.end method

.method private getUris(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/providers/uploads/AutoUploadItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/providers/uploads/AutoUploadItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v2, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/providers/uploads/AutoUploadItem;

    .line 389
    .local v1, item:Lcom/htc/providers/uploads/AutoUploadItem;
    iget-object v3, v1, Lcom/htc/providers/uploads/AutoUploadItem;->uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    .end local v1           #item:Lcom/htc/providers/uploads/AutoUploadItem;
    :cond_0
    return-object v2
.end method

.method private handleIntent()V
    .locals 15

    .prologue
    .line 98
    iget-boolean v11, p0, Lcom/htc/providers/uploads/AutoUploadService;->handlingLock:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 99
    const-string v11, "AutoUploadService"

    const-string v12, "handling lock"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v11, p0, Lcom/htc/providers/uploads/AutoUploadService;->intents:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/htc/providers/uploads/AutoUploadService;->intents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    iget-object v11, p0, Lcom/htc/providers/uploads/AutoUploadService;->intents:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_2

    .line 105
    :cond_1
    const-string v11, "AutoUploadService"

    const-string v12, "No intent"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v11, -0x1

    invoke-direct {p0, v11}, Lcom/htc/providers/uploads/AutoUploadService;->notifyIntentHandled(I)V

    goto :goto_0

    .line 110
    :cond_2
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/providers/uploads/AutoUploadService;->handlingLock:Z

    .line 111
    iget-object v11, p0, Lcom/htc/providers/uploads/AutoUploadService;->intents:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 112
    .local v7, intent:Landroid/content/Intent;
    monitor-enter v7

    .line 113
    :try_start_0
    invoke-direct {p0, v7}, Lcom/htc/providers/uploads/AutoUploadService;->parseIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v8

    .line 114
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/providers/uploads/AutoUploadItem;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_3

    .line 115
    const-string v11, "AutoUploadService"

    const-string v12, "No autoupload item"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/htc/providers/uploads/AutoUploadService;->notifyIntentHandled(I)V

    goto :goto_0

    .line 118
    :cond_3
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v6, v11, Lcom/htc/providers/uploads/AutoUploadItem;->frequency:Ljava/lang/String;

    .line 120
    .local v6, frequency:Ljava/lang/String;
    const-string v11, "immediately"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 121
    invoke-direct {p0, v8}, Lcom/htc/providers/uploads/AutoUploadService;->startUpload(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 162
    .end local v6           #frequency:Ljava/lang/String;
    .end local v8           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/providers/uploads/AutoUploadItem;>;"
    :catchall_0
    move-exception v11

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 123
    .restart local v6       #frequency:Ljava/lang/String;
    .restart local v8       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/providers/uploads/AutoUploadItem;>;"
    :cond_4
    :try_start_2
    const-string v11, "wifi_only"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 124
    invoke-static {p0}, Lcom/htc/providers/uploads/UploadHelper;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 125
    invoke-direct {p0, v8}, Lcom/htc/providers/uploads/AutoUploadService;->startUpload(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 129
    :cond_5
    invoke-direct {p0, v8}, Lcom/htc/providers/uploads/AutoUploadService;->saveIntentContentToDb(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 134
    :cond_6
    const-wide/16 v3, 0x0

    .line 137
    .local v3, daily_time:J
    :try_start_3
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 140
    .local v0, curTime:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 143
    .local v2, d:Ljava/util/Date;
    sget-object v11, Lcom/htc/providers/uploads/AutoUploadService;->secondDate:Ljava/text/SimpleDateFormat;

    invoke-virtual {v11, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v9, v11

    .line 144
    .local v9, second:J
    const-wide/16 v11, 0x2

    add-long/2addr v11, v9

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    sub-long/2addr v3, v11

    .line 145
    const-string v11, "AutoUploadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "upload time = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v11, "AutoUploadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "daily time = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v11, "AutoUploadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "current time = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0, v8}, Lcom/htc/providers/uploads/AutoUploadService;->saveIntentContentToDb(Ljava/util/ArrayList;)V

    .line 151
    cmp-long v11, v3, v0

    if-gez v11, :cond_7

    .line 152
    invoke-direct {p0}, Lcom/htc/providers/uploads/AutoUploadService;->schedulerDailyUpload()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 157
    .end local v0           #curTime:J
    .end local v2           #d:Ljava/util/Date;
    .end local v9           #second:J
    :catch_0
    move-exception v5

    .line 158
    .local v5, e:Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v11, "AutoUploadService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "wrong value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 154
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v0       #curTime:J
    .restart local v2       #d:Ljava/util/Date;
    .restart local v9       #second:J
    :cond_7
    :try_start_5
    invoke-direct {p0, v3, v4}, Lcom/htc/providers/uploads/AutoUploadService;->setSchedulerAlarm(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method

.method private notifyIntentHandled(I)V
    .locals 2
    .parameter "status"

    .prologue
    const/4 v1, 0x0

    .line 213
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 214
    iput-boolean v1, p0, Lcom/htc/providers/uploads/AutoUploadService;->handlingLock:Z

    .line 215
    iget-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService;->mHandler:Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;

    invoke-virtual {v0, v1}, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->sendEmptyMessage(I)Z

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    if-nez p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 219
    iput-boolean v1, p0, Lcom/htc/providers/uploads/AutoUploadService;->handlingLock:Z

    .line 220
    invoke-direct {p0}, Lcom/htc/providers/uploads/AutoUploadService;->handleIntent()V

    goto :goto_0
.end method

.method private parseIntent(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 12
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/providers/uploads/AutoUploadItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const-string v9, "frequency"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, frequency:Ljava/lang/String;
    const-string v9, "service_title"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, serviceTitle:Ljava/lang/String;
    const-string v9, "upload_service_component"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 170
    .local v6, uploadServiceComponent:Landroid/content/ComponentName;
    const-string v9, "get_album"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/data/Album;

    .line 171
    .local v0, album:Lcom/htc/opensense/social/data/Album;
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 172
    .local v8, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/providers/uploads/AutoUploadItem;>;"
    const-string v9, "AutoUploadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "frequency: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v9, "AutoUploadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "serviceTitle: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-eqz v6, :cond_0

    .line 177
    const-string v9, "AutoUploadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uploadServiceComponent , pkg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v9, "AutoUploadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uploadServiceComponent , cls: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    if-eqz v0, :cond_1

    .line 181
    const-string v9, "AutoUploadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "album id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v9, "AutoUploadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "album name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v9, "AutoUploadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "album privacy: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    if-eqz v8, :cond_2

    .line 186
    const-string v9, "AutoUploadService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uri size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    if-nez v8, :cond_5

    .line 191
    :cond_3
    const-string v9, "AutoUploadService"

    const-string v10, "AutoUploadItem must not be null !"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_4
    return-object v4

    .line 195
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 196
    .local v7, uri:Landroid/net/Uri;
    new-instance v3, Lcom/htc/providers/uploads/AutoUploadItem;

    invoke-direct {v3}, Lcom/htc/providers/uploads/AutoUploadItem;-><init>()V

    .line 197
    .local v3, item:Lcom/htc/providers/uploads/AutoUploadItem;
    iput-object v1, v3, Lcom/htc/providers/uploads/AutoUploadItem;->frequency:Ljava/lang/String;

    .line 198
    iput-object v5, v3, Lcom/htc/providers/uploads/AutoUploadItem;->serviceTitle:Ljava/lang/String;

    .line 199
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/htc/providers/uploads/AutoUploadItem;->uploadServicePackage:Ljava/lang/String;

    .line 200
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/htc/providers/uploads/AutoUploadItem;->uploadServiceClass:Ljava/lang/String;

    .line 201
    iget-object v9, v0, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    iput-object v9, v3, Lcom/htc/providers/uploads/AutoUploadItem;->albumId:Ljava/lang/String;

    .line 202
    iget-object v9, v0, Lcom/htc/opensense/social/data/Album;->name:Ljava/lang/String;

    iput-object v9, v3, Lcom/htc/providers/uploads/AutoUploadItem;->albumName:Ljava/lang/String;

    .line 203
    iget-object v9, v0, Lcom/htc/opensense/social/data/Album;->privacy:Ljava/lang/String;

    iput-object v9, v3, Lcom/htc/providers/uploads/AutoUploadItem;->albumPrivacy:Ljava/lang/String;

    .line 204
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/htc/providers/uploads/AutoUploadItem;->uri:Ljava/lang/String;

    .line 206
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private saveIntentContentToDb(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/providers/uploads/AutoUploadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/providers/uploads/AutoUploadItem;>;"
    const-string v1, "AutoUploadService"

    const-string v2, "save to db"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/providers/uploads/AutoUploadService;->dbLock:Z

    .line 228
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/providers/uploads/AutoUploadService$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/providers/uploads/AutoUploadService$1;-><init>(Lcom/htc/providers/uploads/AutoUploadService;Ljava/util/ArrayList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 252
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 253
    return-void
.end method

.method private schedulerDailyUpload()V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/providers/uploads/AutoUploadService$4;

    invoke-direct {v1, p0}, Lcom/htc/providers/uploads/AutoUploadService$4;-><init>(Lcom/htc/providers/uploads/AutoUploadService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 316
    .local v0, tScheduler:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 317
    return-void
.end method

.method private setSchedulerAlarm(J)V
    .locals 6
    .parameter "time"

    .prologue
    const/4 v5, 0x0

    .line 396
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/htc/providers/uploads/AutoUploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 397
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 398
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.htc.providers.uploads"

    const-string v4, "com.htc.providers.uploads.AutoUploadService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v3, "auto_upload_service_reason"

    const-string v4, "scheduler_alarm"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v3, "alarm_reason"

    const-string v4, "start_upload"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const/high16 v3, 0x4000

    invoke-static {p0, v5, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 402
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v5, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 403
    return-void
.end method

.method private startDailyUpload()V
    .locals 2

    .prologue
    .line 272
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/providers/uploads/AutoUploadService$3;

    invoke-direct {v1, p0}, Lcom/htc/providers/uploads/AutoUploadService$3;-><init>(Lcom/htc/providers/uploads/AutoUploadService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 284
    .local v0, tDaily:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 285
    return-void
.end method

.method private startUpload(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/providers/uploads/AutoUploadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/providers/uploads/AutoUploadItem;>;"
    const/4 v1, 0x1

    const/4 v13, 0x0

    .line 320
    iget-boolean v0, p0, Lcom/htc/providers/uploads/AutoUploadService;->uploadingLock:Z

    if-ne v0, v1, :cond_0

    .line 321
    const-string v0, "AutoUploadService"

    const-string v1, "Uploading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_0
    return-void

    .line 325
    :cond_0
    iput-boolean v1, p0, Lcom/htc/providers/uploads/AutoUploadService;->uploadingLock:Z

    .line 327
    new-instance v2, Lcom/htc/opensense/upload/BatchData;

    invoke-direct {v2}, Lcom/htc/opensense/upload/BatchData;-><init>()V

    .line 328
    .local v2, batch:Lcom/htc/opensense/upload/BatchData;
    invoke-virtual {p1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v0, v0, Lcom/htc/providers/uploads/AutoUploadItem;->albumId:Ljava/lang/String;

    iput-object v0, v2, Lcom/htc/opensense/upload/BatchData;->aId:Ljava/lang/String;

    .line 329
    invoke-virtual {p1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v0, v0, Lcom/htc/providers/uploads/AutoUploadItem;->albumName:Ljava/lang/String;

    iput-object v0, v2, Lcom/htc/opensense/upload/BatchData;->albumName:Ljava/lang/String;

    .line 330
    iput v13, v2, Lcom/htc/opensense/upload/BatchData;->mode:I

    .line 331
    invoke-virtual {p1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v0, v0, Lcom/htc/providers/uploads/AutoUploadItem;->albumPrivacy:Ljava/lang/String;

    iput-object v0, v2, Lcom/htc/opensense/upload/BatchData;->privacy:Ljava/lang/String;

    .line 332
    const-string v0, "auto"

    iput-object v0, v2, Lcom/htc/opensense/upload/BatchData;->category:Ljava/lang/String;

    .line 334
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v1, v0, Lcom/htc/providers/uploads/AutoUploadItem;->uploadServicePackage:Ljava/lang/String;

    invoke-virtual {p1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v0, v0, Lcom/htc/providers/uploads/AutoUploadItem;->uploadServiceClass:Ljava/lang/String;

    invoke-direct {v3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .local v3, uploadServiceComponent:Landroid/content/ComponentName;
    invoke-virtual {p1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v4, v0, Lcom/htc/providers/uploads/AutoUploadItem;->serviceTitle:Ljava/lang/String;

    .line 338
    .local v4, serviceTitle:Ljava/lang/String;
    :try_start_0
    const-string v1, "AutoUploadService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "frequency: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v0, v0, Lcom/htc/providers/uploads/AutoUploadItem;->frequency:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v1, "AutoUploadService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "serviceTitle: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v0, v0, Lcom/htc/providers/uploads/AutoUploadItem;->serviceTitle:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v1, "AutoUploadService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uploadServiceComponent , pkg: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v0, v0, Lcom/htc/providers/uploads/AutoUploadItem;->uploadServicePackage:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v1, "AutoUploadService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uploadServiceComponent , cls: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v0, v0, Lcom/htc/providers/uploads/AutoUploadItem;->uploadServiceClass:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v1, "AutoUploadService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "album id: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v0, v0, Lcom/htc/providers/uploads/AutoUploadItem;->albumId:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v1, "AutoUploadService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "album name: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v0, v0, Lcom/htc/providers/uploads/AutoUploadItem;->albumName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v1, "AutoUploadService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "album privacy: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/providers/uploads/AutoUploadItem;

    iget-object v0, v0, Lcom/htc/providers/uploads/AutoUploadItem;->albumPrivacy:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/providers/uploads/AutoUploadItem;

    .line 346
    .local v8, item:Lcom/htc/providers/uploads/AutoUploadItem;
    const-string v0, "AutoUploadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uri: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v8, Lcom/htc/providers/uploads/AutoUploadItem;->uri:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 379
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Lcom/htc/providers/uploads/AutoUploadItem;
    :catch_0
    move-exception v6

    .line 380
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    iput-boolean v13, p0, Lcom/htc/providers/uploads/AutoUploadService;->uploadingLock:Z

    .line 382
    iget-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService;->mHandler:Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;

    invoke-virtual {v0, v13}, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 349
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 350
    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v5, intent:Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/htc/providers/uploads/AutoUploadService;->getUris(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    .line 352
    .local v9, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v9, :cond_2

    .line 353
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 359
    :goto_2
    iget-object v10, p0, Lcom/htc/providers/uploads/AutoUploadService;->mHandler:Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;

    new-instance v0, Lcom/htc/providers/uploads/AutoUploadService$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/providers/uploads/AutoUploadService$5;-><init>(Lcom/htc/providers/uploads/AutoUploadService;Lcom/htc/opensense/upload/BatchData;Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)V

    const-wide/16 v11, 0x7d0

    invoke-virtual {v10, v0, v11, v12}, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 356
    :cond_2
    const-string v0, "AutoUploadService"

    const-string v1, "No Uris"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 376
    .end local v5           #intent:Landroid/content/Intent;
    .end local v9           #uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_3
    iget-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService;->mHandler:Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private startWifiUpload()V
    .locals 2

    .prologue
    .line 256
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/providers/uploads/AutoUploadService$2;

    invoke-direct {v1, p0}, Lcom/htc/providers/uploads/AutoUploadService$2;-><init>(Lcom/htc/providers/uploads/AutoUploadService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 268
    .local v0, tWifi:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 269
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 48
    const-string v0, "AutoUploadService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p0, p0, Lcom/htc/providers/uploads/AutoUploadService;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;-><init>(Lcom/htc/providers/uploads/AutoUploadService;Lcom/htc/providers/uploads/AutoUploadService$1;)V

    iput-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService;->mHandler:Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 89
    const-string v0, "AutoUploadService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 54
    const-string v2, "AutoUploadService"

    const-string v3, "onStartCommand"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-eqz p1, :cond_4

    .line 56
    const-string v2, "auto_upload_service_reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    const-string v2, "auto_upload_service_reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, reason:Ljava/lang/String;
    const-string v2, "AutoUploadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v2, "wifi_available"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    const-string v2, "AutoUploadService"

    const-string v3, "wifi only"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lcom/htc/providers/uploads/AutoUploadService;->startWifiUpload()V

    .line 84
    .end local v1           #reason:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x2

    return v2

    .line 63
    .restart local v1       #reason:Ljava/lang/String;
    :cond_1
    const-string v2, "scheduler_alarm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "AutoUploadService"

    const-string v3, "daily"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v2, "alarm_reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, alarmReason:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "start_upload"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-direct {p0}, Lcom/htc/providers/uploads/AutoUploadService;->startDailyUpload()V

    goto :goto_0

    .line 72
    :cond_2
    invoke-direct {p0}, Lcom/htc/providers/uploads/AutoUploadService;->schedulerDailyUpload()V

    goto :goto_0

    .line 77
    .end local v0           #alarmReason:Ljava/lang/String;
    .end local v1           #reason:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/htc/providers/uploads/AutoUploadService;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-direct {p0}, Lcom/htc/providers/uploads/AutoUploadService;->handleIntent()V

    goto :goto_0

    .line 82
    :cond_4
    iget-object v2, p0, Lcom/htc/providers/uploads/AutoUploadService;->mHandler:Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
