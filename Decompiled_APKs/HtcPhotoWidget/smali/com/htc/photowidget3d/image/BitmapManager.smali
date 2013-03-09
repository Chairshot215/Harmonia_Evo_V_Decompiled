.class public Lcom/htc/photowidget3d/image/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/photowidget3d/image/BitmapManager$1;,
        Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;,
        Lcom/htc/photowidget3d/image/BitmapManager$State;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BitmapManager"

.field private static sManager:Lcom/htc/photowidget3d/image/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/htc/photowidget3d/image/BitmapManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/image/BitmapManager;->LOG_TAG:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/photowidget3d/image/BitmapManager;->sManager:Lcom/htc/photowidget3d/image/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/photowidget3d/image/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    .line 68
    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;
    .locals 2
    .parameter "t"

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/photowidget3d/image/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;

    .line 75
    .local v0, status:Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;

    .end local v0           #status:Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;-><init>(Lcom/htc/photowidget3d/image/BitmapManager$1;)V

    .line 77
    .restart local v0       #status:Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;
    iget-object v1, p0, Lcom/htc/photowidget3d/image/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-object v0

    .line 74
    .end local v0           #status:Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized instance()Lcom/htc/photowidget3d/image/BitmapManager;
    .locals 2

    .prologue
    .line 170
    const-class v1, Lcom/htc/photowidget3d/image/BitmapManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/photowidget3d/image/BitmapManager;->sManager:Lcom/htc/photowidget3d/image/BitmapManager;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/htc/photowidget3d/image/BitmapManager;

    invoke-direct {v0}, Lcom/htc/photowidget3d/image/BitmapManager;-><init>()V

    sput-object v0, Lcom/htc/photowidget3d/image/BitmapManager;->sManager:Lcom/htc/photowidget3d/image/BitmapManager;

    .line 173
    :cond_0
    sget-object v0, Lcom/htc/photowidget3d/image/BitmapManager;->sManager:Lcom/htc/photowidget3d/image/BitmapManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .parameter "t"
    .parameter "options"

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/image/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;

    move-result-object v0

    iput-object p2, v0, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized allowThreadDecoding(Ljava/lang/Thread;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/image/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;

    move-result-object v0

    sget-object v1, Lcom/htc/photowidget3d/image/BitmapManager$State;->ALLOW:Lcom/htc/photowidget3d/image/BitmapManager$State;

    iput-object v1, v0, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;->mState:Lcom/htc/photowidget3d/image/BitmapManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .locals 4
    .parameter "t"

    .prologue
    const/4 v0, 0x1

    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/photowidget3d/image/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .local v1, status:Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;
    if-nez v1, :cond_0

    .line 108
    :goto_0
    monitor-exit p0

    return v0

    .line 107
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;->mState:Lcom/htc/photowidget3d/image/BitmapManager$State;

    sget-object v3, Lcom/htc/photowidget3d/image/BitmapManager$State;->CANCEL:Lcom/htc/photowidget3d/image/BitmapManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v3, :cond_1

    .line 108
    .local v0, result:Z
    :goto_1
    goto :goto_0

    .line 107
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 101
    .end local v1           #status:Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cancelThreadDecoding(Ljava/lang/Thread;Landroid/content/ContentResolver;)V
    .locals 6
    .parameter "t"
    .parameter "cr"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/image/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;

    move-result-object v1

    .line 117
    .local v1, status:Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;
    sget-object v2, Lcom/htc/photowidget3d/image/BitmapManager$State;->CANCEL:Lcom/htc/photowidget3d/image/BitmapManager$State;

    iput-object v2, v1, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;->mState:Lcom/htc/photowidget3d/image/BitmapManager$State;

    .line 118
    iget-object v2, v1, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, v1, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v2}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 123
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :goto_0
    :try_start_2
    iget-boolean v2, v1, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    if-eqz v2, :cond_1

    .line 130
    const-wide/16 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {p2, v2, v3, v4, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;JJ)V

    .line 131
    const-wide/16 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {p2, v2, v3, v4, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;JJ)V

    .line 132
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_4
    sget-object v2, Lcom/htc/photowidget3d/image/BitmapManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit p0

    return-void

    .line 134
    :cond_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 116
    .end local v1           #status:Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "fd"
    .parameter "options"

    .prologue
    const/4 v0, 0x0

    .line 181
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v2, :cond_0

    .line 195
    :goto_0
    return-object v0

    .line 185
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 186
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {p0, v1}, Lcom/htc/photowidget3d/image/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    const-string v2, "BitmapManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not allowed to decode."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/htc/photowidget3d/image/BitmapManager;->setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    .line 192
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Lcom/htc/photowidget3d/image/BitmapManager;->removeDecodingOptions(Ljava/lang/Thread;)V

    goto :goto_0
.end method

.method public getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "cr"
    .parameter "origId"
    .parameter "kind"
    .parameter "options"
    .parameter "isVideo"

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    .line 143
    .local v8, t:Ljava/lang/Thread;
    invoke-direct {p0, v8}, Lcom/htc/photowidget3d/image/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;

    move-result-object v7

    .line 145
    .local v7, status:Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;
    invoke-virtual {p0, v8}, Lcom/htc/photowidget3d/image/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string v1, "BitmapManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not allowed to decode."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_0
    return-object v0

    .line 151
    :cond_0
    :try_start_0
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 152
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, v7, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 153
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    if-eqz p6, :cond_1

    .line 155
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v0, p1

    move-wide v1, p2

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 162
    monitor-enter v7

    .line 163
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, v7, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 164
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 153
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 162
    :catchall_2
    move-exception v0

    monitor-enter v7

    .line 163
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, v7, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 164
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    .line 158
    :cond_1
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v0, p1

    move-wide v1, p2

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v0

    .line 162
    monitor-enter v7

    .line 163
    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, v7, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 164
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit v7

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0
.end method

.method declared-synchronized removeDecodingOptions(Ljava/lang/Thread;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/photowidget3d/image/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;

    .line 93
    .local v0, status:Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 92
    .end local v0           #status:Lcom/htc/photowidget3d/image/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
