.class public Lcom/htc/android/mail/content/MailAsyncQueryHandler$WorkerHandler;
.super Landroid/os/Handler;
.source "MailAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/content/MailAsyncQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/content/MailAsyncQueryHandler;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/content/MailAsyncQueryHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/android/mail/content/MailAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/android/mail/content/MailAsyncQueryHandler;

    .line 51
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/content/MailAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/android/mail/content/MailAsyncQueryHandler;

    iget-object v2, v2, Lcom/htc/android/mail/content/MailAsyncQueryHandler;->mResolver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentResolver;

    .line 57
    .local v1, resolver:Landroid/content/ContentResolver;
    if-nez v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 59
    :cond_0
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 61
    .local v9, args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    .line 62
    .local v17, token:I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 64
    .local v12, event:I
    packed-switch v12, :pswitch_data_0

    .line 129
    :goto_1
    iget-object v2, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    .line 130
    .local v13, reply:Landroid/os/Message;
    iput-object v9, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    iput v2, v13, Landroid/os/Message;->arg1:I

    .line 133
    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 67
    .end local v13           #reply:Landroid/os/Message;
    :pswitch_0
    const/4 v7, 0x0

    .line 70
    .local v7, absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    :try_start_0
    iget-object v0, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->cookie:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/android/mail/MailList$TabInfo;

    .line 72
    .local v16, tabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/MailList$TabInfo;->taskBeforeQuery()V

    .line 74
    invoke-virtual/range {v16 .. v16}, Lcom/htc/android/mail/MailList$TabInfo;->getSqlWhere()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 77
    .local v14, startTime:J
    iget-object v2, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->projection:[Ljava/lang/String;

    iget-object v4, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v5, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 81
    .local v10, cursor:Landroid/database/Cursor;
    const-string v2, "MailQuery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query Take: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-eqz v10, :cond_1

    .line 86
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    .line 88
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/htc/android/mail/MailList$TabInfo;->mIsExpandListAdapter:Z

    if-nez v2, :cond_2

    .line 89
    new-instance v8, Lcom/htc/android/mail/database/MailCursor;

    invoke-direct {v8, v10}, Lcom/htc/android/mail/database/MailCursor;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v7           #absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    .local v8, absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    :try_start_1
    invoke-virtual {v8}, Lcom/htc/android/mail/database/MailCursor;->prepareIdToPosMap()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 95
    .end local v8           #absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    .restart local v7       #absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/content/MailAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/android/mail/content/MailAsyncQueryHandler;

    #getter for: Lcom/htc/android/mail/content/MailAsyncQueryHandler;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;
    invoke-static {v2}, Lcom/htc/android/mail/content/MailAsyncQueryHandler;->access$000(Lcom/htc/android/mail/content/MailAsyncQueryHandler;)Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/content/MailAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/android/mail/content/MailAsyncQueryHandler;

    #getter for: Lcom/htc/android/mail/content/MailAsyncQueryHandler;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;
    invoke-static {v2}, Lcom/htc/android/mail/content/MailAsyncQueryHandler;->access$000(Lcom/htc/android/mail/content/MailAsyncQueryHandler;)Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-result-object v2

    const-string v3, "DELETE"

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/htc/android/mail/database/AbstractMailCursor;->setMessageStatusDelete(Lcom/htc/android/mail/AbsRequestController$MessageStatus;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/content/MailAsyncQueryHandler$WorkerHandler;->this$0:Lcom/htc/android/mail/content/MailAsyncQueryHandler;

    #getter for: Lcom/htc/android/mail/content/MailAsyncQueryHandler;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;
    invoke-static {v2}, Lcom/htc/android/mail/content/MailAsyncQueryHandler;->access$000(Lcom/htc/android/mail/content/MailAsyncQueryHandler;)Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    move-result-object v2

    const-string v3, "READ"

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/htc/android/mail/database/AbstractMailCursor;->setMessageStatusRead(Lcom/htc/android/mail/AbsRequestController$MessageStatus;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    .end local v14           #startTime:J
    .end local v16           #tabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    :cond_1
    :goto_3
    iput-object v7, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_1

    .line 92
    .restart local v14       #startTime:J
    .restart local v16       #tabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    :cond_2
    :try_start_3
    new-instance v8, Lcom/htc/android/mail/database/ConversationGroupCursor;

    invoke-direct {v8, v10}, Lcom/htc/android/mail/database/ConversationGroupCursor;-><init>(Landroid/database/Cursor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v7           #absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    .restart local v8       #absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    move-object v7, v8

    .end local v8           #absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    .restart local v7       #absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    goto :goto_2

    .line 103
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v14           #startTime:J
    .end local v16           #tabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    :catch_0
    move-exception v11

    .line 104
    .local v11, e:Ljava/lang/Exception;
    :goto_4
    const-string v2, "MailAsyncQueryHandler"

    const-string v3, "catch exception"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const/4 v10, 0x0

    .line 106
    .restart local v10       #cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    goto :goto_3

    .line 113
    .end local v7           #absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #e:Ljava/lang/Exception;
    :pswitch_1
    iget-object v2, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_1

    .line 117
    :pswitch_2
    iget-object v2, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v4, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v5, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_1

    .line 122
    :pswitch_3
    iget-object v2, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v3, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v9, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto/16 :goto_1

    .line 103
    .restart local v8       #absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v14       #startTime:J
    .restart local v16       #tabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    :catch_1
    move-exception v11

    move-object v7, v8

    .end local v8           #absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    .restart local v7       #absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    goto :goto_4

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
