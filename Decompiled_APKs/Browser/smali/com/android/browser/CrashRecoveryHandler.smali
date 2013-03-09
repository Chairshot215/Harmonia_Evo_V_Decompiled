.class public Lcom/android/browser/CrashRecoveryHandler;
.super Ljava/lang/Object;
.source "CrashRecoveryHandler.java"


# static fields
.field private static final BACKUP_DELAY:J = 0x1f4L

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final KEY_LAST_RECOVERED:Ljava/lang/String; = "last_recovered"

.field private static final LOGTAG:Ljava/lang/String; = "BrowserCrashRecovery"

.field private static final LOGV_ENABLED:Z = false

.field private static final MSG_CLEAR_STATE:I = 0x2

.field private static final MSG_PRELOAD_STATE:I = 0x3

.field private static final MSG_WRITE_STATE:I = 0x1

.field private static final PROMPT_INTERVAL:J = 0x493e0L

.field private static final RECOVERY_PREFERENCES:Ljava/lang/String; = "browser_recovery_prefs"

.field private static final STATE_FILE:Ljava/lang/String; = "browser_state.parcel"

.field private static sInstance:Lcom/android/browser/CrashRecoveryHandler;


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/browser/Controller;

.field private mCreateState:Ljava/lang/Runnable;

.field private mDidPreload:Z

.field private mForegroundHandler:Landroid/os/Handler;

.field private mIsPreloading:Z

.field private mRecoveryState:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Lcom/android/browser/Controller;)V
    .locals 2
    .parameter "controller"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mIsPreloading:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mDidPreload:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    .line 140
    new-instance v0, Lcom/android/browser/CrashRecoveryHandler$2;

    invoke-direct {v0, p0}, Lcom/android/browser/CrashRecoveryHandler$2;-><init>(Lcom/android/browser/CrashRecoveryHandler;)V

    iput-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mCreateState:Ljava/lang/Runnable;

    .line 79
    iput-object p1, p0, Lcom/android/browser/CrashRecoveryHandler;->mController:Lcom/android/browser/Controller;

    .line 80
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mForegroundHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/android/browser/CrashRecoveryHandler$1;

    invoke-static {}, Lcom/android/browser/BackgroundHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/browser/CrashRecoveryHandler$1;-><init>(Lcom/android/browser/CrashRecoveryHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mBackgroundHandler:Landroid/os/Handler;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/CrashRecoveryHandler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/browser/CrashRecoveryHandler;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/browser/CrashRecoveryHandler;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/browser/CrashRecoveryHandler;->loadCrashState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/browser/CrashRecoveryHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/browser/CrashRecoveryHandler;->mIsPreloading:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/browser/CrashRecoveryHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/browser/CrashRecoveryHandler;->mDidPreload:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/browser/CrashRecoveryHandler;)Lcom/android/browser/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mController:Lcom/android/browser/Controller;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/CrashRecoveryHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/CrashRecoveryHandler;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mCreateState:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/CrashRecoveryHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mForegroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/android/browser/CrashRecoveryHandler;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/browser/CrashRecoveryHandler;->sInstance:Lcom/android/browser/CrashRecoveryHandler;

    return-object v0
.end method

.method public static initialize(Lcom/android/browser/Controller;)Lcom/android/browser/CrashRecoveryHandler;
    .locals 1
    .parameter "controller"

    .prologue
    .line 66
    sget-object v0, Lcom/android/browser/CrashRecoveryHandler;->sInstance:Lcom/android/browser/CrashRecoveryHandler;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/browser/CrashRecoveryHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/CrashRecoveryHandler;-><init>(Lcom/android/browser/Controller;)V

    sput-object v0, Lcom/android/browser/CrashRecoveryHandler;->sInstance:Lcom/android/browser/CrashRecoveryHandler;

    .line 71
    :goto_0
    sget-object v0, Lcom/android/browser/CrashRecoveryHandler;->sInstance:Lcom/android/browser/CrashRecoveryHandler;

    return-object v0

    .line 69
    :cond_0
    sget-object v0, Lcom/android/browser/CrashRecoveryHandler;->sInstance:Lcom/android/browser/CrashRecoveryHandler;

    iput-object p0, v0, Lcom/android/browser/CrashRecoveryHandler;->mController:Lcom/android/browser/Controller;

    goto :goto_0
.end method

.method private loadCrashState()Landroid/os/Bundle;
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 184
    invoke-direct {p0}, Lcom/android/browser/CrashRecoveryHandler;->shouldRestore()Z

    move-result v11

    if-nez v11, :cond_1

    move-object v8, v10

    .line 218
    :cond_0
    :goto_0
    return-object v8

    .line 187
    :cond_1
    const/4 v8, 0x0

    .line 188
    .local v8, state:Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 189
    .local v6, parcel:Landroid/os/Parcel;
    const/4 v4, 0x0

    .line 191
    .local v4, fin:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v9, Ljava/io/File;

    iget-object v11, p0, Lcom/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    const-string v12, "browser_state.parcel"

    invoke-direct {v9, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    .local v9, stateFile:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 193
    .end local v4           #fin:Ljava/io/FileInputStream;
    .local v5, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 194
    .local v2, dataStream:Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x1000

    new-array v0, v11, [B

    .line 196
    .local v0, buffer:[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    .local v7, read:I
    if-lez v7, :cond_3

    .line 197
    const/4 v11, 0x0

    invoke-virtual {v2, v0, v11, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_1

    .line 206
    .end local v0           #buffer:[B
    .end local v2           #dataStream:Ljava/io/ByteArrayOutputStream;
    .end local v7           #read:I
    :catch_0
    move-exception v11

    move-object v4, v5

    .line 211
    .end local v5           #fin:Ljava/io/FileInputStream;
    .end local v9           #stateFile:Ljava/io/File;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 212
    if-eqz v4, :cond_2

    .line 214
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_2
    :goto_3
    move-object v8, v10

    .line 218
    goto :goto_0

    .line 199
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #dataStream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v7       #read:I
    .restart local v9       #stateFile:Ljava/io/File;
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 200
    .local v1, data:[B
    const/4 v11, 0x0

    array-length v12, v1

    invoke-virtual {v6, v1, v11, v12}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 201
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 202
    invoke-virtual {v6}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 203
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7

    move-result v11

    if-nez v11, :cond_4

    .line 211
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 212
    if-eqz v5, :cond_0

    .line 214
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 215
    :catch_1
    move-exception v10

    goto :goto_0

    .line 211
    :cond_4
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 212
    if-eqz v5, :cond_6

    .line 214
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v4, v5

    .line 215
    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catch_2
    move-exception v11

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .line 208
    .end local v0           #buffer:[B
    .end local v1           #data:[B
    .end local v2           #dataStream:Ljava/io/ByteArrayOutputStream;
    .end local v7           #read:I
    .end local v9           #stateFile:Ljava/io/File;
    :catch_3
    move-exception v3

    .line 209
    .local v3, e:Ljava/lang/Throwable;
    :goto_4
    :try_start_6
    const-string v11, "BrowserCrashRecovery"

    const-string v12, "Failed to recover state!"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 211
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 212
    if-eqz v4, :cond_2

    .line 214
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 215
    :catch_4
    move-exception v11

    goto :goto_3

    .line 211
    .end local v3           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    :goto_5
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 212
    if-eqz v4, :cond_5

    .line 214
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 215
    :cond_5
    :goto_6
    throw v10

    :catch_5
    move-exception v11

    goto :goto_3

    :catch_6
    move-exception v11

    goto :goto_6

    .line 211
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v9       #stateFile:Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_5

    .line 208
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_4

    .line 206
    .end local v9           #stateFile:Ljava/io/File;
    :catch_8
    move-exception v11

    goto :goto_2

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #data:[B
    .restart local v2       #dataStream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    .restart local v7       #read:I
    .restart local v9       #stateFile:Ljava/io/File;
    :cond_6
    move-object v4, v5

    .end local v5           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private shouldRestore()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 165
    iget-object v6, p0, Lcom/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    const-string v7, "browser_recovery_prefs"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 167
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v6, "last_recovered"

    const-wide/16 v7, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 168
    .local v0, lastRecovered:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v0

    .line 169
    .local v3, timeSinceLastRecover:J
    const-wide/32 v6, 0x493e0

    cmp-long v6, v3, v6

    if-lez v6, :cond_0

    .line 170
    const/4 v5, 0x1

    .line 172
    :cond_0
    return v5
.end method

.method private updateLastRecovered(J)V
    .locals 4
    .parameter "time"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/browser/CrashRecoveryHandler;->mContext:Landroid/content/Context;

    const-string v2, "browser_recovery_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_recovered"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    return-void
.end method


# virtual methods
.method public backupState()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mForegroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/CrashRecoveryHandler;->mCreateState:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    return-void
.end method

.method public clearState()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 161
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/browser/CrashRecoveryHandler;->updateLastRecovered(J)V

    .line 162
    return-void
.end method

.method public preloadCrashState()V
    .locals 2

    .prologue
    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget-boolean v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mIsPreloading:Z

    if-eqz v0, :cond_0

    .line 241
    monitor-exit p0

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mIsPreloading:Z

    .line 244
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startRecovery(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 222
    monitor-enter p0

    .line 223
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mIsPreloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 225
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0

    .line 228
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    iget-boolean v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mDidPreload:Z

    if-nez v0, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/android/browser/CrashRecoveryHandler;->loadCrashState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/browser/CrashRecoveryHandler;->updateLastRecovered(J)V

    .line 234
    iget-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mController:Lcom/android/browser/Controller;

    iget-object v1, p0, Lcom/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/browser/Controller;->doStart(Landroid/os/Bundle;Landroid/content/Intent;Z)V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/CrashRecoveryHandler;->mRecoveryState:Landroid/os/Bundle;

    .line 236
    return-void

    .line 228
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 232
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method
