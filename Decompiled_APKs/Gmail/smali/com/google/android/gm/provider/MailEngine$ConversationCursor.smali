.class Lcom/google/android/gm/provider/MailEngine$ConversationCursor;
.super Lcom/google/android/gm/provider/MailEngine$NetworkCursor;
.source "MailEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationCursor"
.end annotation


# instance fields
.field mContentsVisibleToUser:Z

.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;)V
    .locals 1
    .parameter
    .parameter "db"
    .parameter "driver"
    .parameter "editTable"
    .parameter "query"
    .parameter "logic"

    .prologue
    .line 5070
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->this$0:Lcom/google/android/gm/provider/MailEngine;

    .line 5071
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;)V

    .line 5067
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mContentsVisibleToUser:Z

    .line 5072
    return-void
.end method


# virtual methods
.method getActiveConversationLogicOrNull()Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    .locals 3

    .prologue
    .line 5164
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogicLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5165
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    .line 5166
    .local v0, conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->isActiveNetworkCursor()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5167
    monitor-exit v2

    .line 5170
    .end local v0           #conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    :goto_0
    return-object v0

    .line 5169
    .restart local v0       #conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    :cond_0
    monitor-exit v2

    .line 5170
    const/4 v0, 0x0

    goto :goto_0

    .line 5169
    .end local v0           #conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onMove(II)Z
    .locals 3
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 5094
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogicLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5095
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    .line 5096
    .local v0, conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5097
    invoke-virtual {v0, p1, p2, p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->onMove(IILcom/google/android/gm/provider/MailEngine$NetworkCursor;)V

    .line 5098
    invoke-super {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->onMove(II)Z

    move-result v1

    return v1

    .line 5096
    .end local v0           #conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requery()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5076
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->getActiveConversationLogicOrNull()Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    move-result-object v0

    .line 5077
    .local v0, logic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    if-eqz v0, :cond_0

    .line 5078
    iget-boolean v3, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mContentsVisibleToUser:Z

    invoke-virtual {v0, p0, v3}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->requery(Lcom/google/android/gm/provider/MailEngine$NetworkCursor;Z)V

    .line 5079
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v2

    .line 5080
    .local v2, selectionArguments:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 5081
    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->setSelectionArguments([Ljava/lang/String;)V

    .line 5084
    .end local v2           #selectionArguments:[Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->requery()Z

    move-result v1

    .line 5085
    .local v1, returnValue:Z
    if-eqz v0, :cond_1

    .line 5086
    invoke-virtual {v0, v4, v4, p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->onMove(IILcom/google/android/gm/provider/MailEngine$NetworkCursor;)V

    .line 5088
    :cond_1
    return v1
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .parameter "extras"

    .prologue
    .line 5103
    const-string v1, "command"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5104
    .local v6, command:Ljava/lang/String;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 5108
    .local v9, response:Landroid/os/Bundle;
    const-string v1, "setVisible"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "visible"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5110
    const-string v1, "commandResponse"

    const-string v3, "ok"

    invoke-virtual {v9, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5159
    .end local v9           #response:Landroid/os/Bundle;
    :goto_0
    return-object v9

    .line 5115
    .restart local v9       #response:Landroid/os/Bundle;
    :cond_0
    const-string v1, "activate"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5116
    iget-object v10, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogicLock:Ljava/lang/Object;

    monitor-enter v10

    .line 5117
    :try_start_0
    iget-object v7, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    check-cast v7, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    .line 5119
    .local v7, conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    invoke-virtual {v7}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 5120
    .local v2, query:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mLastQuery:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$3300(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5121
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v3, 0x1

    const/4 v4, 0x0

    #getter for: Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mBackwardsCompatMode:Z
    invoke-static {v7}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->access$3400(Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;-><init>(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;ZLjava/lang/Integer;Z)V

    .line 5125
    .local v0, newLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    invoke-virtual {v0, p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->configure(Lcom/google/android/gm/provider/MailEngine$NetworkCursor;)V

    .line 5126
    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    .line 5130
    .end local v0           #newLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5131
    const-string v1, "commandResponse"

    const-string v3, "ok"

    invoke-virtual {v9, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5128
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v7, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mIsActiveNetworkCursor:Z

    goto :goto_1

    .line 5130
    .end local v2           #query:Ljava/lang/String;
    .end local v7           #conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 5134
    :cond_2
    const-string v1, "deactivate"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5135
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogicLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5136
    :try_start_2
    iget-object v7, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    check-cast v7, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    .line 5138
    .restart local v7       #conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    invoke-virtual {v7}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->isActiveNetworkCursor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5139
    const/4 v1, 0x0

    iput-boolean v1, v7, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mIsActiveNetworkCursor:Z

    .line 5140
    const-string v1, "commandResponse"

    const-string v4, "ok"

    invoke-virtual {v9, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5146
    :goto_2
    monitor-exit v3

    goto :goto_0

    .end local v7           #conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 5143
    .restart local v7       #conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    :cond_3
    :try_start_3
    const-string v1, "commandResponse"

    const-string v4, "failed"

    invoke-virtual {v9, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 5148
    .end local v7           #conversationLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    :cond_4
    const-string v1, "setVisible"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5149
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursor;->getActiveConversationLogicOrNull()Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    move-result-object v8

    .line 5152
    .local v8, logic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    if-eqz v8, :cond_5

    .line 5153
    #calls: Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->clearMatchingNotifications()V
    invoke-static {v8}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->access$3500(Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;)V

    .line 5155
    :cond_5
    const-string v1, "commandResponse"

    const-string v3, "ok"

    invoke-virtual {v9, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5159
    .end local v8           #logic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    goto/16 :goto_0
.end method
