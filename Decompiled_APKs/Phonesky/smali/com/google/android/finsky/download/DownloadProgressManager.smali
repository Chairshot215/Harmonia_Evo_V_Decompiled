.class Lcom/google/android/finsky/download/DownloadProgressManager;
.super Ljava/lang/Object;
.source "DownloadProgressManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;
    }
.end annotation


# static fields
.field private static volatile sDownloadProgressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/finsky/download/DownloadProgress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mHandlerThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/finsky/download/DownloadProgressManager;->sDownloadProgressMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V
    .locals 2
    .parameter "downloadQueue"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    .line 63
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Download progress manager runner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThreadId:J

    .line 70
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/download/DownloadProgressManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/download/DownloadProgressManager$1;-><init>(Lcom/google/android/finsky/download/DownloadProgressManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/download/DownloadProgressManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/download/DownloadProgressManager;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadProgressManager;->makeCursorIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/download/DownloadProgressManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->onDownloadProgress()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/download/DownloadProgressManager;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/finsky/download/DownloadProgressManager;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/download/DownloadProgressManager;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/download/DownloadProgressManager;)Lcom/google/android/finsky/download/DownloadQueueImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mDownloadQueueImpl:Lcom/google/android/finsky/download/DownloadQueueImpl;

    return-object v0
.end method

.method private assertOnHandlerThread()V
    .locals 6

    .prologue
    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 103
    .local v0, curThreadId:J
    iget-wide v2, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThreadId:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 104
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This should only be run on DownloadProgressManager\'s handler thread ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandlerThreadId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Instead we\'re on thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_0
    return-void
.end method

.method private generateDownloadProgressFromCursor()Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/finsky/download/DownloadProgress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->assertOnHandlerThread()V

    .line 232
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v16, result:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/finsky/download/DownloadProgress;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->requery()Z

    move-result v19

    if-nez v19, :cond_0

    .line 235
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/finsky/download/DownloadProgressManager;->makeCursorIfNeeded(Landroid/content/Context;)V

    .line 239
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-lez v19, :cond_2

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string v20, "_id"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 241
    .local v13, indexId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string v20, "current_bytes"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 243
    .local v12, indexCurrentBytes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string v20, "total_bytes"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 245
    .local v15, indexTotalBytes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string v20, "status"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 252
    .local v14, indexStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    const-string v20, "allowed_network_types"

    invoke-interface/range {v19 .. v20}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 255
    .local v11, indexAllowedNetworks:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 258
    .local v9, id:J
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 259
    .local v18, uriString:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 261
    .local v17, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 262
    .local v7, status:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 263
    .local v5, totalBytes:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 268
    .local v3, currentBytes:J
    const/16 v19, 0xc3

    move/from16 v0, v19

    if-ne v7, v0, :cond_1

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_1

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 271
    .local v8, allowedNetworks:I
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v8, v0, :cond_1

    .line 272
    const/16 v7, 0xc4

    .line 276
    .end local v8           #allowedNetworks:I
    :cond_1
    new-instance v2, Lcom/google/android/finsky/download/DownloadProgress;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/finsky/download/DownloadProgress;-><init>(JJI)V

    .line 279
    .local v2, downloadProgress:Lcom/google/android/finsky/download/DownloadProgress;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 283
    .end local v2           #downloadProgress:Lcom/google/android/finsky/download/DownloadProgress;
    .end local v3           #currentBytes:J
    .end local v5           #totalBytes:J
    .end local v7           #status:I
    .end local v9           #id:J
    .end local v11           #indexAllowedNetworks:I
    .end local v12           #indexCurrentBytes:I
    .end local v13           #indexId:I
    .end local v14           #indexStatus:I
    .end local v15           #indexTotalBytes:I
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #uriString:Ljava/lang/String;
    :cond_2
    return-object v16
.end method

.method private static getCachedProgress()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/finsky/download/DownloadProgress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    sget-object v0, Lcom/google/android/finsky/download/DownloadProgressManager;->sDownloadProgressMap:Ljava/util/Map;

    return-object v0
.end method

.method private static getUris()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 214
    .local v3, uris:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-static {}, Lcom/google/android/finsky/download/DownloadProgressManager;->getCachedProgress()Ljava/util/Map;

    move-result-object v1

    .line 215
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/finsky/download/DownloadProgress;>;"
    if-eqz v1, :cond_0

    .line 216
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 217
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    return-object v3
.end method

.method private static makeCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 298
    invoke-static {}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUriForContentObserver()Landroid/net/Uri;

    move-result-object v1

    .line 299
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 300
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 301
    const-string v0, "Download progress cursor null: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 305
    :cond_0
    return-object v6
.end method

.method private makeCursorIfNeeded(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->assertOnHandlerThread()V

    .line 84
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 85
    invoke-static {p1}, Lcom/google/android/finsky/download/DownloadProgressManager;->makeCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    .line 86
    new-instance v0, Lcom/google/android/finsky/download/DownloadProgressManager$2;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/download/DownloadProgressManager$2;-><init>(Lcom/google/android/finsky/download/DownloadProgressManager;Landroid/os/Handler;)V

    .line 97
    .local v0, downloadObserver:Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 99
    .end local v0           #downloadObserver:Landroid/database/ContentObserver;
    :cond_0
    return-void
.end method

.method private onDownloadProgress()V
    .locals 7

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->assertOnHandlerThread()V

    .line 181
    invoke-static {}, Lcom/google/android/finsky/download/DownloadProgressManager;->getUris()Ljava/util/Set;

    move-result-object v3

    .line 184
    .local v3, oldUris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadProgressManager;->generateDownloadProgressFromCursor()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 189
    .local v1, downloadProgressMap:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/finsky/download/DownloadProgress;>;"
    invoke-static {}, Lcom/google/android/finsky/download/DownloadProgressManager;->getCachedProgress()Ljava/util/Map;

    move-result-object v0

    .line 190
    .local v0, cachedProgress:Ljava/util/Map;,"Ljava/util/Map<Landroid/net/Uri;Lcom/google/android/finsky/download/DownloadProgress;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 191
    :cond_0
    sput-object v1, Lcom/google/android/finsky/download/DownloadProgressManager;->sDownloadProgressMap:Ljava/util/Map;

    .line 195
    invoke-static {}, Lcom/google/android/finsky/download/DownloadProgressManager;->getUris()Ljava/util/Set;

    move-result-object v2

    .line 196
    .local v2, newUris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-interface {v3, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 197
    new-instance v4, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/google/android/finsky/download/DownloadProgressManager$ProgressRunnable;-><init>(Lcom/google/android/finsky/download/DownloadProgressManager;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 198
    .local v4, r:Ljava/lang/Runnable;
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    .end local v2           #newUris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    .end local v4           #r:Ljava/lang/Runnable;
    :cond_1
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadProgressManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/download/DownloadProgressManager$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/download/DownloadProgressManager$3;-><init>(Lcom/google/android/finsky/download/DownloadProgressManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method
