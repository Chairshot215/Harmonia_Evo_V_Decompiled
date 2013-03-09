.class abstract Lcom/htc/content/AsyncQueryHandler;
.super Landroid/os/Handler;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/content/AsyncQueryHandler$OperationQueue;,
        Lcom/htc/content/AsyncQueryHandler$Operation;,
        Lcom/htc/content/AsyncQueryHandler$WorkerHandler;,
        Lcom/htc/content/AsyncQueryHandler$WorkerArgs;
    }
.end annotation


# static fields
.field private static final EVENT_ARG_ADD_TAB_COMPLETE:I = 0x8

.field private static final EVENT_ARG_BATCH:I = 0x7

.field private static final EVENT_ARG_CHECK_INSERT_UPDATE:I = 0x6

.field private static final EVENT_ARG_DELETE:I = 0x4

.field private static final EVENT_ARG_EXCEPTION:I = 0x5

.field private static final EVENT_ARG_INSERT:I = 0x2

.field private static final EVENT_ARG_QUERY:I = 0x1

.field private static final EVENT_ARG_UPDATE:I = 0x3

.field private static final EVENT_CHECK_INSERT:I = 0x64

.field private static final EVENT_CHECK_UPDATE:I = 0x65

.field static final LOCAL_LOGV:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "AsyncQueryHandler"

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field private mIsMemoryMode:Z

.field private mIsNoEditor:Z

.field private mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

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

    sput-object v0, Lcom/htc/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/content/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    const-class v2, Lcom/htc/content/AsyncQueryHandler;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/htc/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AsyncQueryWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/htc/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/htc/content/AsyncQueryHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v1}, Lcom/htc/content/AsyncQueryHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-direct {v1, p0}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;-><init>(Lcom/htc/content/AsyncQueryHandler;)V

    iput-object v1, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/content/AsyncQueryHandler;->mIsMemoryMode:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Lcom/htc/content/AsyncQueryHandler;)Lcom/htc/content/AsyncQueryHandler$OperationQueue;
    .locals 1

    iget-object v0, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/content/AsyncQueryHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/content/AsyncQueryHandler;->mIsNoEditor:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/content/AsyncQueryHandler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/content/AsyncQueryHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/content/AsyncQueryHandler;->mIsMemoryMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/content/AsyncQueryHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/content/AsyncQueryHandler;->setMemoryMode(Z)V

    return-void
.end method

.method private setMemoryMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/content/AsyncQueryHandler;->mIsMemoryMode:Z

    return-void
.end method


# virtual methods
.method public IsProcessingRightAway()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-virtual {v0}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->IsProcessingRightAway()Z

    move-result v0

    return v0
.end method

.method protected addTabMemoryMode(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final cancelOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    new-instance v0, Lcom/htc/content/AsyncQueryHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/htc/content/AsyncQueryHandler$WorkerHandler;-><init>(Lcom/htc/content/AsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v9, p1, Landroid/os/Message;->arg1:I

    packed-switch v9, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/content/AsyncQueryHandler;->onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_3
    iget-object v2, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/content/AsyncQueryHandler;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0

    :pswitch_4
    iget-object v2, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v0, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/htc/content/AsyncQueryHandler;->onDeleteComplete(ILjava/lang/Object;I)V

    goto :goto_0

    :pswitch_5
    iget-object v2, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v5, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v6, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v7, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/content/AsyncQueryHandler;->onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iget-object v2, v8, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/content/AsyncQueryHandler;->onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/htc/content/AsyncQueryHandler;->onAddTabComplete()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method protected isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onAddTabComplete()V
    .locals 0

    return-void
.end method

.method protected onCheckInsertOrUpdateComplete(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method protected onExceptionHandle(ILjava/lang/Object;ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
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

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method protected prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V
    .locals 0

    return-void
.end method

.method public setNoEditorMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/content/AsyncQueryHandler;->mIsNoEditor:Z

    invoke-direct {p0, p1}, Lcom/htc/content/AsyncQueryHandler;->setMemoryMode(Z)V

    return-void
.end method

.method public setToQueueMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-virtual {v0, p1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->setToQueueMode(Z)V

    return-void
.end method

.method public final startCheckInsertOrUpdate(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p4, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iput-object p5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p6, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object p7, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    iput-object p2, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-virtual {v2}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->IsProcessingRightAway()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/content/AsyncQueryHandler;->mIsNoEditor:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/content/AsyncQueryHandler;->addTabMemoryMode(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/htc/content/AsyncQueryHandler;->onAddTabComplete()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-virtual {v2, v1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->add(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public final startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startProcessingOperations()V
    .locals 1

    iget-object v0, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-virtual {v0}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->startProcessingOperations()V

    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p4, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iput-object p5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p6, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object p7, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    iput-object p2, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    invoke-direct {v0}, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;-><init>()V

    iput-object p0, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iput-object p3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iput-object p2, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    iput-object p4, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iput-object p5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iput-object p6, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-virtual {v2}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->IsProcessingRightAway()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/content/AsyncQueryHandler;->mIsNoEditor:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {p0, p1, v2}, Lcom/htc/content/AsyncQueryHandler;->updateTabMemoryMode(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/htc/content/AsyncQueryHandler;->onAddTabComplete()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/content/AsyncQueryHandler;->mOperationHandlingQueue:Lcom/htc/content/AsyncQueryHandler$OperationQueue;

    invoke-virtual {v2, v1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->add(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected updateTabMemoryMode(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method
