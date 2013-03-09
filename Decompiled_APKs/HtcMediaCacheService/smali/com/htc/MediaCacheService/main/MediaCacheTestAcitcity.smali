.class public Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;
.super Landroid/app/Activity;
.source "MediaCacheTestAcitcity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity$IncomingHandler;
    }
.end annotation


# static fields
.field private static final DATE_MODIFIED_IMAGES_COLUMN_INDEX:I = 0x2

.field private static final ID_IMAGES_COLUMN_INDEX:I = 0x0

.field private static final IMAGES_PROJECTION:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final PATH_IMAGES_COLUMN_INDEX:I = 0x1

.field static mbAddMenued:Z


# instance fields
.field private mBucketNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheProvider:Landroid/content/IContentProvider;

.field private mConnection:Landroid/content/ServiceConnection;

.field final mMessenger:Landroid/os/Messenger;

.field private mService:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    const-class v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    .line 31
    sput-boolean v2, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mbAddMenued:Z

    .line 278
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->IMAGES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity$IncomingHandler;-><init>(Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mMessenger:Landroid/os/Messenger;

    .line 44
    iput-object v2, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mService:Landroid/os/Messenger;

    .line 71
    new-instance v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity$1;

    invoke-direct {v0, p0}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity$1;-><init>(Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;)V

    iput-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mConnection:Landroid/content/ServiceConnection;

    .line 275
    iput-object v2, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mCacheProvider:Landroid/content/IContentProvider;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mBucketNames:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mService:Landroid/os/Messenger;

    return-object p1
.end method


# virtual methods
.method public BindMediaService()V
    .locals 4

    .prologue
    .line 229
    sget-object v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaCacheProvider][MediaCacheTestAcitcity][BindMediaService]+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/MediaCacheService/main/MediaCacheService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 232
    return-void
.end method

.method public InitProvider()V
    .locals 4

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htcmediacache"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mCacheProvider:Landroid/content/IContentProvider;

    .line 293
    sget-object v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaCacheProvider][MediaCacheTestAcitcity][InitProvider]-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mCacheProvider:Landroid/content/IContentProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public InitService()V
    .locals 5

    .prologue
    .line 213
    sget-object v1, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MediaCacheProvider][MediaCacheTestAcitcity][InitService]+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/htc/MediaCacheService/utils/ServiceIntent;->getBindIntent()Landroid/content/Intent;

    move-result-object v0

    .line 216
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 217
    return-void
.end method

.method public SendServiceMessage()V
    .locals 6

    .prologue
    .line 255
    iget-object v2, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mService:Landroid/os/Messenger;

    if-nez v2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 259
    :cond_0
    sget-object v2, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MediaCacheProvider][MediaCacheTestAcitcity][SendServiceMessage]+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 266
    .local v1, msg:Landroid/os/Message;
    :try_start_0
    iget-object v2, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public TestCacheProvider()V
    .locals 9

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mCacheProvider:Landroid/content/IContentProvider;

    if-nez v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const/4 v6, 0x0

    .line 309
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mCacheProvider:Landroid/content/IContentProvider;

    const-string v1, "external"

    invoke-static {v1}, Lcom/htc/MediaCacheService/main/MediaCacheStore$Images$Media;->getBucketNameUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bucket_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 313
    if-eqz v6, :cond_2

    .line 315
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 319
    .local v8, s:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mBucketNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaCacheProvider][MediaCacheTestAcitcity][TestProvider]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 325
    .end local v8           #s:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 328
    .local v7, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    if-eqz v6, :cond_0

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 335
    const/4 v6, 0x0

    goto :goto_0

    .line 332
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_2
    if-eqz v6, :cond_0

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 335
    const/4 v6, 0x0

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 334
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 335
    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method public TestCacheProvider2(Ljava/lang/String;)V
    .locals 8
    .parameter "bucketname"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mCacheProvider:Landroid/content/IContentProvider;

    if-nez v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const/4 v6, 0x0

    .line 350
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mCacheProvider:Landroid/content/IContentProvider;

    sget-object v1, Lcom/htc/MediaCacheService/main/MediaCacheStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_display_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 354
    if-eqz v6, :cond_2

    .line 356
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 363
    :catch_0
    move-exception v7

    .line 366
    .local v7, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    if-eqz v6, :cond_0

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 373
    const/4 v6, 0x0

    goto :goto_0

    .line 370
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_2
    if-eqz v6, :cond_0

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 373
    const/4 v6, 0x0

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 373
    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method public UnBindMediaService()V
    .locals 5

    .prologue
    .line 236
    sget-object v1, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MediaCacheProvider][MediaCacheTestAcitcity][UnBindMediaService]+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mService:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 241
    const/4 v1, 0x0

    const/4 v2, 0x2

    :try_start_0
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 242
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 243
    iget-object v1, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 251
    return-void

    .line 244
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public UnInitService()V
    .locals 5

    .prologue
    .line 221
    sget-object v1, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MediaCacheProvider][MediaCacheTestAcitcity][UnInitService]+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/htc/MediaCacheService/utils/ServiceIntent;->getBindIntent()Landroid/content/Intent;

    move-result-object v0

    .line 224
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->stopService(Landroid/content/Intent;)Z

    .line 225
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 38
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 117
    sget-object v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaCacheProvider][MediaCacheTestAcitcity][onCreate]+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 186
    sget-object v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaCacheProvider][MediaCacheTestAcitcity][onDestroy]+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 190
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 5
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 151
    sget-object v1, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MediaCacheProvider][MediaCacheTestAcitcity][onMenuItemSelected]+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 179
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 156
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->InitService()V

    goto :goto_0

    .line 159
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->UnInitService()V

    goto :goto_0

    .line 162
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->BindMediaService()V

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->UnBindMediaService()V

    goto :goto_0

    .line 168
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->SendServiceMessage()V

    goto :goto_0

    .line 171
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->InitProvider()V

    goto :goto_0

    .line 174
    :pswitch_6
    invoke-virtual {p0}, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->TestCacheProvider()V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 196
    sget-object v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaCacheProvider][MediaCacheTestAcitcity][onPause]+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 199
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 128
    sget-object v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaCacheProvider][MediaCacheTestAcitcity][onPrepareOptionsMenu]+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-boolean v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mbAddMenued:Z

    if-nez v0, :cond_0

    .line 137
    const-string v0, "SendServiceMessage"

    invoke-interface {p1, v4, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 138
    const-string v0, "InitProvider"

    invoke-interface {p1, v5, v5, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 139
    const-string v0, "TestProvider"

    invoke-interface {p1, v6, v6, v6, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 141
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->mbAddMenued:Z

    .line 144
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 205
    sget-object v0, Lcom/htc/MediaCacheService/main/MediaCacheTestAcitcity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaCacheProvider][MediaCacheTestAcitcity][onStop]+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/MediaCacheService/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 208
    return-void
.end method
