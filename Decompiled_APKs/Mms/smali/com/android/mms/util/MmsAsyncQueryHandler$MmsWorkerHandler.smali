.class public Lcom/android/mms/util/MmsAsyncQueryHandler$MmsWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "MmsAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/MmsAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MmsWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/MmsAsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/android/mms/util/MmsAsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/mms/util/MmsAsyncQueryHandler$MmsWorkerHandler;->this$0:Lcom/android/mms/util/MmsAsyncQueryHandler;

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 76
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 80
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 82
    .local v8, args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    .line 83
    .local v20, token:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 84
    .local v11, event:I
    const-wide/16 v16, 0x0

    .local v16, time:J
    const-wide/16 v18, 0x0

    .line 86
    .local v18, time1:J
    packed-switch v11, :pswitch_data_0

    .line 146
    :goto_0
    iget-object v1, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    move/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    .line 147
    .local v15, reply:Landroid/os/Message;
    iput-object v8, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    iput v1, v15, Landroid/os/Message;->arg1:I

    .line 149
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void

    .line 90
    .end local v15           #reply:Landroid/os/Message;
    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/MmsAsyncQueryHandler;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 93
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/MmsAsyncQueryHandler$MmsWorkerHandler;->this$0:Lcom/android/mms/util/MmsAsyncQueryHandler;

    #getter for: Lcom/android/mms/util/MmsAsyncQueryHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/util/MmsAsyncQueryHandler;->access$100(Lcom/android/mms/util/MmsAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/MmsAsyncQueryHandler$MmsWorkerHandler;->this$0:Lcom/android/mms/util/MmsAsyncQueryHandler;

    #getter for: Lcom/android/mms/util/MmsAsyncQueryHandler;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/mms/util/MmsAsyncQueryHandler;->access$200(Lcom/android/mms/util/MmsAsyncQueryHandler;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v4, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v5, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v6, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 98
    .local v9, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/mms/util/MmsAsyncQueryHandler;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 100
    const-string v1, "Jerry1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsAsyncQuery args.uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 102
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    iget-object v1, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    array-length v1, v1

    if-ge v12, v1, :cond_1

    .line 103
    const-string v1, "Jerry1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsAsyncQuery args.projection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    aget-object v3, v3, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 104
    .end local v12           #i:I
    :cond_1
    const-string v1, "Jerry1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsAsyncQuery args.selection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v1, "Jerry1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsAsyncQuery time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v18, v16

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    if-eqz v9, :cond_3

    .line 110
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_3
    :goto_2
    iput-object v9, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 112
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 113
    .local v10, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    .restart local v9       #cursor:Landroid/database/Cursor;
    goto :goto_2

    .line 120
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #e:Ljava/lang/Exception;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/MmsAsyncQueryHandler$MmsWorkerHandler;->this$0:Lcom/android/mms/util/MmsAsyncQueryHandler;

    #getter for: Lcom/android/mms/util/MmsAsyncQueryHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/util/MmsAsyncQueryHandler;->access$100(Lcom/android/mms/util/MmsAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/MmsAsyncQueryHandler$MmsWorkerHandler;->this$0:Lcom/android/mms/util/MmsAsyncQueryHandler;

    #getter for: Lcom/android/mms/util/MmsAsyncQueryHandler;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/mms/util/MmsAsyncQueryHandler;->access$200(Lcom/android/mms/util/MmsAsyncQueryHandler;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v4, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 125
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/MmsAsyncQueryHandler$MmsWorkerHandler;->this$0:Lcom/android/mms/util/MmsAsyncQueryHandler;

    #getter for: Lcom/android/mms/util/MmsAsyncQueryHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/util/MmsAsyncQueryHandler;->access$100(Lcom/android/mms/util/MmsAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/MmsAsyncQueryHandler$MmsWorkerHandler;->this$0:Lcom/android/mms/util/MmsAsyncQueryHandler;

    #getter for: Lcom/android/mms/util/MmsAsyncQueryHandler;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/mms/util/MmsAsyncQueryHandler;->access$200(Lcom/android/mms/util/MmsAsyncQueryHandler;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v4, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v5, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v6, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 128
    .local v13, r:I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v13}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 133
    .end local v13           #r:I
    :pswitch_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/MmsAsyncQueryHandler$MmsWorkerHandler;->this$0:Lcom/android/mms/util/MmsAsyncQueryHandler;

    #getter for: Lcom/android/mms/util/MmsAsyncQueryHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/util/MmsAsyncQueryHandler;->access$100(Lcom/android/mms/util/MmsAsyncQueryHandler;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/util/MmsAsyncQueryHandler$MmsWorkerHandler;->this$0:Lcom/android/mms/util/MmsAsyncQueryHandler;

    #getter for: Lcom/android/mms/util/MmsAsyncQueryHandler;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/mms/util/MmsAsyncQueryHandler;->access$200(Lcom/android/mms/util/MmsAsyncQueryHandler;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v4, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v5, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 135
    .local v14, r2:I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v14}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 136
    .end local v14           #r2:I
    :catch_1
    move-exception v10

    .line 137
    .local v10, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 138
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
