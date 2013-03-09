.class public Lcom/android/mms/util/MmsAsyncWorkHandler;
.super Landroid/os/Handler;
.source "MmsAsyncWorkHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/MmsAsyncWorkHandler$1;,
        Lcom/android/mms/util/MmsAsyncWorkHandler$LongtermHandler;,
        Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;,
        Lcom/android/mms/util/MmsAsyncWorkHandler$bgWorkerHandler;,
        Lcom/android/mms/util/MmsAsyncWorkHandler$UIWorkerHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final SHOW_DEBUG_TIME:Ljava/lang/String; = "\nhandleMessage_Debug time = "

.field private static final SHOW_EXTRA_INFO:Ljava/lang/String; = "\nhandleMessage extra info = "

.field private static final SHOW_TOKEN:Ljava/lang/String; = "\nhandleMessage token = "

.field private static final TAG:Ljava/lang/String; = "MmsAsyncWorkHandler"

.field private static mBGWorkerHandler:Landroid/os/Handler;

.field private static mContext:Landroid/content/Context;

.field private static mLowPriorityThreadHandler:Lcom/android/mms/util/MmsAsyncWorkHandler$LongtermHandler;

.field protected static mResolver:Landroid/content/ContentResolver;

.field private static mUIWorkerThreadHandler:Landroid/os/Handler;

.field private static sConcurrentCursorObj:Ljava/lang/Object;

.field private static sCursorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private static sLooper:Landroid/os/Looper;

.field private static sLooper1:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 25
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->DEBUG:Z

    .line 31
    sput-object v3, Lcom/android/mms/util/MmsAsyncWorkHandler;->sLooper:Landroid/os/Looper;

    .line 32
    sput-object v3, Lcom/android/mms/util/MmsAsyncWorkHandler;->sLooper1:Landroid/os/Looper;

    .line 40
    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->sConcurrentCursorObj:Ljava/lang/Object;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->sCursorList:Ljava/util/ArrayList;

    .line 44
    const-class v3, Lcom/android/mms/util/MmsAsyncWorkHandler;

    monitor-enter v3

    .line 45
    :try_start_0
    sget-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->sLooper:Landroid/os/Looper;

    if-nez v2, :cond_1

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "MmsAsyncWorkHandler"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MmsAsyncLowPriorityHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, thread1:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 53
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sput-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->sLooper:Landroid/os/Looper;

    .line 54
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sput-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->sLooper1:Landroid/os/Looper;

    .line 55
    new-instance v2, Lcom/android/mms/util/MmsAsyncWorkHandler$UIWorkerHandler;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/mms/util/MmsAsyncWorkHandler$UIWorkerHandler;-><init>(Lcom/android/mms/util/MmsAsyncWorkHandler$1;)V

    sput-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->mUIWorkerThreadHandler:Landroid/os/Handler;

    .line 56
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->mContext:Landroid/content/Context;

    .line 57
    sget-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sput-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->mResolver:Landroid/content/ContentResolver;

    .line 59
    :cond_0
    new-instance v2, Lcom/android/mms/util/MmsAsyncWorkHandler$bgWorkerHandler;

    sget-object v4, Lcom/android/mms/util/MmsAsyncWorkHandler;->sLooper:Landroid/os/Looper;

    invoke-direct {v2, v4}, Lcom/android/mms/util/MmsAsyncWorkHandler$bgWorkerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->mBGWorkerHandler:Landroid/os/Handler;

    .line 60
    new-instance v2, Lcom/android/mms/util/MmsAsyncWorkHandler$LongtermHandler;

    sget-object v4, Lcom/android/mms/util/MmsAsyncWorkHandler;->sLooper1:Landroid/os/Looper;

    invoke-direct {v2, v4}, Lcom/android/mms/util/MmsAsyncWorkHandler$LongtermHandler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->mLowPriorityThreadHandler:Lcom/android/mms/util/MmsAsyncWorkHandler$LongtermHandler;

    .line 62
    :cond_1
    monitor-exit v3

    .line 63
    return-void

    .line 62
    .end local v1           #thread1:Landroid/os/HandlerThread;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->sLooper:Landroid/os/Looper;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->sLooper:Landroid/os/Looper;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    sput-object p1, Lcom/android/mms/util/MmsAsyncWorkHandler;->mContext:Landroid/content/Context;

    .line 77
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 81
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->sLooper:Landroid/os/Looper;

    invoke-direct {p0, v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 85
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->sLooper:Landroid/os/Looper;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 1
    .parameter "looper"
    .parameter "callback"

    .prologue
    .line 89
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->sLooper:Landroid/os/Looper;

    invoke-direct {p0, v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 90
    return-void
.end method

.method public static CloseCursorInBG(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;Z)V

    .line 108
    return-void
.end method

.method public static CloseCursorInBG(Landroid/database/Cursor;Z)V
    .locals 3
    .parameter "c"
    .parameter "highPriority"

    .prologue
    .line 112
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    sget-object v1, Lcom/android/mms/util/MmsAsyncWorkHandler;->mBGWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 114
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x2712

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 115
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    if-eqz p1, :cond_1

    .line 118
    sget-object v1, Lcom/android/mms/util/MmsAsyncWorkHandler;->mBGWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 119
    sget-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->sConcurrentCursorObj:Ljava/lang/Object;

    monitor-enter v2

    .line 120
    :try_start_0
    sget-object v1, Lcom/android/mms/util/MmsAsyncWorkHandler;->sCursorList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    monitor-exit v2

    .line 126
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 121
    .restart local v0       #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 123
    :cond_1
    sget-object v1, Lcom/android/mms/util/MmsAsyncWorkHandler;->mBGWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic access$100()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->sLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->mUIWorkerThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->sLooper1:Landroid/os/Looper;

    return-object v0
.end method

.method public static closeHighPriorityCursorInArray()V
    .locals 6

    .prologue
    .line 130
    sget-object v4, Lcom/android/mms/util/MmsAsyncWorkHandler;->sCursorList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, array:[Ljava/lang/Object;
    sget-object v5, Lcom/android/mms/util/MmsAsyncWorkHandler;->sConcurrentCursorObj:Ljava/lang/Object;

    monitor-enter v5

    .line 134
    :try_start_0
    sget-object v4, Lcom/android/mms/util/MmsAsyncWorkHandler;->sCursorList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 135
    sget-object v4, Lcom/android/mms/util/MmsAsyncWorkHandler;->sCursorList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 136
    monitor-exit v5

    .line 138
    if-nez v0, :cond_1

    .line 151
    :cond_0
    return-void

    .line 136
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 141
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 143
    :try_start_1
    aget-object v1, v0, v3

    check-cast v1, Landroid/database/Cursor;

    .line 144
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    .end local v1           #c:Landroid/database/Cursor;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getBGhandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->mBGWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getLowPriorityHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->mLowPriorityThreadHandler:Lcom/android/mms/util/MmsAsyncWorkHandler$LongtermHandler;

    return-object v0
.end method

.method public static queryDebug(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 274
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;-><init>()V

    .line 275
    .local v0, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    iput-object p0, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 276
    iput-object p1, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 277
    iput-object p2, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 278
    iput-object p3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 279
    iput-object p4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 281
    invoke-static {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->queryDebug(Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static queryDebug(Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;)Landroid/database/Cursor;
    .locals 14
    .parameter "args"

    .prologue
    .line 286
    const-wide/16 v10, 0x0

    .local v10, time:J
    const-wide/16 v12, 0x0

    .line 287
    .local v12, time1:J
    const/4 v7, 0x0

    .line 289
    .local v7, cursor:Landroid/database/Cursor;
    if-nez p0, :cond_0

    move-object v0, v7

    .line 341
    :goto_0
    return-object v0

    .line 292
    :cond_0
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    .line 293
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 294
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->mResolver:Landroid/content/ContentResolver;

    .line 302
    :cond_1
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->closeHighPriorityCursorInArray()V

    .line 305
    :try_start_0
    sget-boolean v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 308
    :cond_2
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/util/MmsAsyncWorkHandler;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 313
    sget-boolean v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 315
    const-string v0, "MmsAsyncWorkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nEVENT_ARG_QUERY args.uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 317
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    iget-object v0, p0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_4

    .line 318
    const-string v0, "MmsAsyncWorkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "args.projection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 296
    .end local v9           #i:I
    :cond_3
    const-string v0, "MmsAsyncWorkHandler"

    const-string v1, "why mContext is null ?!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 319
    :cond_4
    :try_start_1
    const-string v0, "MmsAsyncWorkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "args.selection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v0, "MmsAsyncWorkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v12, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_5
    if-eqz v7, :cond_6

    .line 326
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 327
    sget-boolean v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 329
    const-string v0, "MmsAsyncWorkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCount() time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v10, v12

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    :cond_6
    :goto_2
    iput-object v7, p0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->result:Ljava/lang/Object;

    move-object v0, v7

    .line 341
    goto/16 :goto_0

    .line 332
    :catch_0
    move-exception v8

    .line 333
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "MmsAsyncWorkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_CLOSE_CURSOR >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 335
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 336
    const/4 v7, 0x0

    goto :goto_2
.end method


# virtual methods
.method public final cancelOperation(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 251
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->mBGWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 166
    const-wide/16 v0, 0x0

    .local v0, time:J
    const-wide/16 v2, 0x0

    .line 167
    .local v2, time1:J
    sget-boolean v4, Lcom/android/mms/util/MmsAsyncWorkHandler;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/MmsAsyncWorkHandler;->handleMessage_Debug(Landroid/os/Message;)V

    .line 170
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->closeHighPriorityCursorInArray()V

    .line 172
    const-string v4, "MmsAsyncWorkHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nhandleMessage token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-boolean v4, Lcom/android/mms/util/MmsAsyncWorkHandler;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 175
    const-string v4, "MmsAsyncWorkHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nhandleMessage extra info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v4, "MmsAsyncWorkHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nhandleMessage_Debug time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_1
    return-void
.end method

.method public handleMessage_Debug(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 185
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 192
    return-void
.end method

.method public runFirstInUIthread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 100
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->mUIWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method public runInUIthread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 96
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->mUIWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public runInUIthread(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "r"
    .parameter "delay"

    .prologue
    .line 103
    sget-object v0, Lcom/android/mms/util/MmsAsyncWorkHandler;->mUIWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    return-void
.end method

.method public final startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 228
    sget-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->mBGWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 229
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x2711

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 230
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 232
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;-><init>()V

    .line 233
    .local v0, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    iput-object p0, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 234
    iput-object p3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 235
    iput-object p4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 236
    iput-object p5, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 237
    iput-object p6, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 238
    iput-object p7, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 239
    iput-object p2, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 240
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 242
    sget-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->mBGWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 243
    return-void
.end method

.method public final startQueryHighPriority(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 203
    sget-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->mBGWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 204
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x2711

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 205
    iput p1, v1, Landroid/os/Message;->arg2:I

    .line 207
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;-><init>()V

    .line 208
    .local v0, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    iput-object p0, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->handler:Landroid/os/Handler;

    .line 209
    iput-object p3, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->uri:Landroid/net/Uri;

    .line 210
    iput-object p4, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->projection:[Ljava/lang/String;

    .line 211
    iput-object p5, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 212
    iput-object p6, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    .line 213
    iput-object p7, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    .line 214
    iput-object p2, v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 215
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    sget-object v2, Lcom/android/mms/util/MmsAsyncWorkHandler;->mBGWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 218
    return-void
.end method
