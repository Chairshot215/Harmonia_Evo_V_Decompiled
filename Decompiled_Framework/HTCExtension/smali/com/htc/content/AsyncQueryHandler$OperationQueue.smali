.class Lcom/htc/content/AsyncQueryHandler$OperationQueue;
.super Ljava/lang/Object;
.source "AsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/content/AsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OperationQueue"
.end annotation


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mOperations:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/htc/content/AsyncQueryHandler$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessingRightAway:Z

.field final synthetic this$0:Lcom/htc/content/AsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/htc/content/AsyncQueryHandler;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mOperations:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mProcessingRightAway:Z

    return-void
.end method

.method private checkIsExist(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_1
    const-string v2, "task_tag"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method private processUnhandledQueries(I)V
    .locals 8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    iget-object v5, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/content/AsyncQueryHandler$Operation;

    iget-object v4, v1, Lcom/htc/content/AsyncQueryHandler$Operation;->mMsg:Landroid/os/Message;

    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    iget v2, v4, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    iget v6, v1, Lcom/htc/content/AsyncQueryHandler$Operation;->mToken:I

    iget-object v7, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7}, Lcom/htc/content/AsyncQueryHandler;->updateTabMemoryMode(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    iget v6, v1, Lcom/htc/content/AsyncQueryHandler$Operation;->mToken:I

    iget-object v7, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/htc/content/AsyncQueryHandler;->addTabMemoryMode(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public IsProcessingRightAway()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mProcessingRightAway:Z

    return v0
.end method

.method public add(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mOperations:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public forceProcessingOperations()V
    .locals 34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    iget-object v3, v3, Lcom/htc/content/AsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentResolver;

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mOperations:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/4 v9, 0x0

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mOperations:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mOperations:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Message;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    move-object/from16 v0, v23

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mAuthority:Ljava/lang/String;

    packed-switch v20, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mIsMemoryMode:Z
    invoke-static {v3}, Lcom/htc/content/AsyncQueryHandler;->access$300(Lcom/htc/content/AsyncQueryHandler;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    const-string v5, "taskTag"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v9, v1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->checkIsExist(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->isMinorUpdateRequired(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    const/16 v3, 0x65

    move-object/from16 v0, v23

    iput v3, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v24

    new-instance v25, Lcom/htc/content/AsyncQueryHandler$Operation;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v4, v1, v2}, Lcom/htc/content/AsyncQueryHandler$Operation;-><init>(ILandroid/content/ContentProviderOperation;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Lcom/htc/content/AsyncQueryHandler;->updateTabMemoryMode(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    const/4 v5, 0x1

    #calls: Lcom/htc/content/AsyncQueryHandler;->setMemoryMode(Z)V
    invoke-static {v3, v5}, Lcom/htc/content/AsyncQueryHandler;->access$400(Lcom/htc/content/AsyncQueryHandler;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->processUnhandledQueries(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Lcom/htc/content/AsyncQueryHandler;->updateTabMemoryMode(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v32, v0

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mIsMemoryMode:Z
    invoke-static {v3}, Lcom/htc/content/AsyncQueryHandler;->access$300(Lcom/htc/content/AsyncQueryHandler;)Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v21, 0x0

    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    const-string v28, ""

    if-nez v9, :cond_6

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    new-array v14, v3, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :cond_6
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    const/4 v3, 0x1

    aget-object v29, v31, v3

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v9, v1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->checkIsExist(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    move-object v13, v9

    move-object/from16 v14, v33

    move-object/from16 v15, v32

    invoke-virtual/range {v11 .. v16}, Lcom/htc/content/AsyncQueryHandler;->isUpdateRequired(Ljava/lang/Object;Landroid/database/Cursor;Landroid/content/ContentValues;[I[Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v4, v32, v3

    const/4 v3, 0x0

    aget-object v28, v16, v3

    const/16 v3, 0x65

    move-object/from16 v0, v23

    iput v3, v0, Landroid/os/Message;->arg2:I

    const/16 v3, 0x3f0

    if-eq v4, v3, :cond_7

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "task_tag=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v24

    new-instance v25, Lcom/htc/content/AsyncQueryHandler$Operation;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v4, v1, v2}, Lcom/htc/content/AsyncQueryHandler$Operation;-><init>(ILandroid/content/ContentProviderOperation;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    :cond_7
    const/16 v21, 0x1

    :cond_8
    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v3, v5, v0, v1}, Lcom/htc/content/AsyncQueryHandler;->prepareForInsertion(Ljava/lang/Object;Landroid/content/ContentValues;[I)V

    const/4 v3, 0x0

    aget v4, v32, v3

    const/16 v3, 0x64

    move-object/from16 v0, v23

    iput v3, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v24

    new-instance v25, Lcom/htc/content/AsyncQueryHandler$Operation;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v4, v1, v2}, Lcom/htc/content/AsyncQueryHandler$Operation;-><init>(ILandroid/content/ContentProviderOperation;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/htc/content/AsyncQueryHandler;->addTabMemoryMode(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    const/4 v5, 0x1

    #calls: Lcom/htc/content/AsyncQueryHandler;->setMemoryMode(Z)V
    invoke-static {v3, v5}, Lcom/htc/content/AsyncQueryHandler;->access$400(Lcom/htc/content/AsyncQueryHandler;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->processUnhandledQueries(I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/htc/content/AsyncQueryHandler;->addTabMemoryMode(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_b
    if-eqz v9, :cond_c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mIsMemoryMode:Z
    invoke-static {v3}, Lcom/htc/content/AsyncQueryHandler;->access$300(Lcom/htc/content/AsyncQueryHandler;)Z

    move-result v3

    if-nez v3, :cond_d

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mAuthority:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v10, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->setPendingMessageResults(I[Landroid/content/ContentProviderResult;)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->sendsPendingMessages(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v19

    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/database/SQLException;

    if-nez v3, :cond_0

    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/content/OperationApplicationException;

    if-nez v3, :cond_0

    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/os/RemoteException;

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mIsNoEditor:Z
    invoke-static {v3}, Lcom/htc/content/AsyncQueryHandler;->access$100(Lcom/htc/content/AsyncQueryHandler;)Z

    move-result v3

    if-nez v3, :cond_e

    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v26

    const/16 v3, 0x8

    move-object/from16 v0, v26

    iput v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v26 .. v26}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    invoke-virtual {v3}, Lcom/htc/content/AsyncQueryHandler;->onAddTabComplete()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isMinorUpdateRequired(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/database/Cursor;)Z
    .locals 11

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v10, 0x1

    :goto_0
    return v10

    :pswitch_1
    const-string v10, "countTextVisible"

    invoke-virtual {p2, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v10, "count_text_visible"

    move-object/from16 v0, p6

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eq v7, v8, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :pswitch_2
    const-string v10, "countText"

    invoke-virtual {p2, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "count_text"

    move-object/from16 v0, p6

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :pswitch_3
    const-string v10, "alternativeName"

    invoke-virtual {p2, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "alternative_name"

    move-object/from16 v0, p6

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method sendsPendingMessages(I)V
    .locals 7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v5, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/content/AsyncQueryHandler$Operation;

    iget-object v3, v1, Lcom/htc/content/AsyncQueryHandler$Operation;->mMsg:Landroid/os/Message;

    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    iget-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    iget v6, v1, Lcom/htc/content/AsyncQueryHandler$Operation;->mToken:I

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v5, v3, Landroid/os/Message;->arg1:I

    iput v5, v4, Landroid/os/Message;->arg1:I

    iget v5, v3, Landroid/os/Message;->arg2:I

    iput v5, v4, Landroid/os/Message;->arg2:I

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setPendingMessageResults(I[Landroid/content/ContentProviderResult;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mPendingMessages:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/content/AsyncQueryHandler$Operation;

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, v1, Lcom/htc/content/AsyncQueryHandler$Operation;->mMsg:Landroid/os/Message;

    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;

    iget v5, v4, Landroid/os/Message;->arg2:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_3

    aget-object v5, p2, v2

    iget-object v5, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    iput-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget v5, v4, Landroid/os/Message;->arg2:I

    const/16 v6, 0x65

    if-ne v5, v6, :cond_2

    aget-object v5, p2, v2

    iget-object v5, v5, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    iput-object v5, v0, Lcom/htc/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1
.end method

.method public setToQueueMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mProcessingRightAway:Z

    return-void
.end method

.method public startProcessingOperations()V
    .locals 3

    const/4 v2, 0x7

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mProcessingRightAway:Z

    iget-object v1, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mIsNoEditor:Z
    invoke-static {v1}, Lcom/htc/content/AsyncQueryHandler;->access$100(Lcom/htc/content/AsyncQueryHandler;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/content/AsyncQueryHandler;->access$200(Lcom/htc/content/AsyncQueryHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->mOperations:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->this$0:Lcom/htc/content/AsyncQueryHandler;

    #getter for: Lcom/htc/content/AsyncQueryHandler;->mWorkerThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/content/AsyncQueryHandler;->access$200(Lcom/htc/content/AsyncQueryHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/content/AsyncQueryHandler$OperationQueue;->forceProcessingOperations()V

    goto :goto_0
.end method
