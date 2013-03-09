.class public Lcom/android/mms/util/RateController;
.super Ljava/lang/Object;
.source "RateController.java"


# static fields
.field private static final ANSWER_NO:I = 0x2

.field public static final ANSWER_TIMEOUT:I = 0x4e20

.field private static final ANSWER_YES:I = 0x1

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final NO_ANSWER:I = 0x0

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final RATE_LIMIT:I = 0x64

.field public static final RATE_LIMIT_CONFIRMED_ACTION:Ljava/lang/String; = "com.android.mms.RATE_LIMIT_CONFIRMED"

.field public static final RATE_LIMIT_SURPASSED_ACTION:Ljava/lang/String; = "com.android.mms.RATE_LIMIT_SURPASSED"

.field private static final TAG:Ljava/lang/String; = "RateController"

.field private static sInstance:Lcom/android/mms/util/RateController;

.field private static sMutexLock:Z


# instance fields
.field private mAnswer:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/mms/util/RateController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/RateController$1;-><init>(Lcom/android/mms/util/RateController;)V

    iput-object v0, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    iput-object p1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/util/RateController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/android/mms/util/RateController;->mAnswer:I

    return p1
.end method

.method public static getInstance()Lcom/android/mms/util/RateController;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    if-nez v0, :cond_1

    .line 93
    const-class v1, Lcom/android/mms/util/RateController;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    .line 97
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 83
    const-class v1, Lcom/android/mms/util/RateController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "RateController"

    const-string v2, "Already initialized."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    monitor-exit v1

    return-void

    .line 87
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/mms/util/RateController;

    invoke-direct {v0, p0}, Lcom/android/mms/util/RateController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized waitForAnswer()I
    .locals 3

    .prologue
    .line 157
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, t:I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/16 v1, 0x4e20

    if-ge v0, v1, :cond_0

    .line 162
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    :goto_1
    add-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 167
    :cond_0
    :try_start_2
    iget v1, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 163
    :catch_0
    move-exception v1

    goto :goto_1

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized isAllowedByUser()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    monitor-enter p0

    :goto_0
    :try_start_0
    sget-boolean v3, Lcom/android/mms/util/RateController;->sMutexLock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    .line 131
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v3

    goto :goto_0

    .line 136
    :cond_0
    const/4 v3, 0x1

    :try_start_2
    sput-boolean v3, Lcom/android/mms/util/RateController;->sMutexLock:Z

    .line 138
    iget-object v3, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.android.mms.RATE_LIMIT_CONFIRMED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 143
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.mms.RATE_LIMIT_SURPASSED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    iget-object v3, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    invoke-direct {p0}, Lcom/android/mms/util/RateController;->waitForAnswer()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-ne v3, v1, :cond_1

    .line 150
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/util/RateController;->sMutexLock:Z

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v1

    :cond_1
    move v1, v2

    .line 148
    goto :goto_1

    .line 150
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/util/RateController;->sMutexLock:Z

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 129
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final isLimitSurpassed()Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    sub-long v8, v0, v2

    .line 113
    .local v8, oneHourAgo:J
    iget-object v0, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Rate;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "COUNT(*) AS rate"

    aput-object v4, v3, v11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sent_time>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 116
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 118
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    move v0, v10

    .line 122
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 125
    :goto_1
    return v0

    :cond_0
    move v0, v11

    .line 119
    goto :goto_0

    .line 122
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v11

    .line 125
    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final update()V
    .locals 4

    .prologue
    .line 105
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 106
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "sent_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    iget-object v1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms$Rate;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 109
    return-void
.end method
