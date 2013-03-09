.class public abstract Lcom/htc/music/widget/HTCAsyncQueryHandler;
.super Landroid/os/Handler;
.source "HTCAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerHandler;,
        Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;
    }
.end annotation


# static fields
.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_QUERY_ENTITIES:I = 0x5

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "[AsyncQuery]"

.field private static final localLOGV:Z

.field private static final mTraceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field final mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->sLooper:Landroid/os/Looper;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    const-class v2, Lcom/htc/music/widget/HTCAsyncQueryHandler;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/music/widget/HTCAsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HTCAsyncQueryWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/htc/music/widget/HTCAsyncQueryHandler;->sLooper:Landroid/os/Looper;

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/htc/music/widget/HTCAsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v1}, Lcom/htc/music/widget/HTCAsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final cancelOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerHandler;-><init>(Lcom/htc/music/widget/HTCAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v3, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v4

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v4, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/music/widget/HTCAsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/content/EntityIterator;

    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/music/widget/HTCAsyncQueryHandler;->onQueryEntitiesComplete(ILjava/lang/Object;Landroid/content/EntityIterator;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/music/widget/HTCAsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/music/widget/HTCAsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    :pswitch_4
    iget-object v4, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v3, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/music/widget/HTCAsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method protected onQueryEntitiesComplete(ILjava/lang/Object;Landroid/content/EntityIterator;)V
    .locals 0

    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method protected final setDebugTrace(Landroid/database/Cursor;Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;)V
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/database/CursorWrapper;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/database/CursorWrapper;

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->setAsyncQueryStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_0
    return-void
.end method

.method public final startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p5, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput v4, v2, Landroid/os/Message;->arg1:I

    new-instance v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p4, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iput-object p5, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p6, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object p7, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    iput-object p2, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v3

    if-ne v4, v3, :cond_0

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    sget-object v3, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mTraceMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v3, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startQueryEntities(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p4, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p5, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object p6, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    iput-object p2, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iput-object p5, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p6, v0, Lcom/htc/music/widget/HTCAsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/music/widget/HTCAsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
