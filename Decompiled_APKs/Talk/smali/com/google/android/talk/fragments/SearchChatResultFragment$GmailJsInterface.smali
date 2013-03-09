.class final Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;
.super Ljava/lang/Object;
.source "SearchChatResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/SearchChatResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GmailJsInterface"
.end annotation


# instance fields
.field private mLastAddressLine:Ljava/lang/String;

.field private mLastMessageId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    return-void
.end method


# virtual methods
.method public forward(Ljava/lang/String;)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    const/4 v1, 0x1

    #calls: Lcom/google/android/talk/fragments/SearchChatResultFragment;->launchReplyOrForward(ZLjava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$000(Lcom/google/android/talk/fragments/SearchChatResultFragment;ZLjava/lang/String;)V

    .line 390
    return-void
.end method

.method public getAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "messageId"

    .prologue
    .line 408
    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->mLastMessageId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 409
    iget-object v3, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->mLastAddressLine:Ljava/lang/String;

    .line 417
    :goto_0
    return-object v3

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #calls: Lcom/google/android/talk/fragments/SearchChatResultFragment;->getId(Ljava/lang/String;)J
    invoke-static {v4, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$400(Lcom/google/android/talk/fragments/SearchChatResultFragment;Ljava/lang/String;)J

    move-result-wide v1

    .line 412
    .local v1, id:J
    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;
    invoke-static {v4}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$600(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$500(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2}, Lcom/google/android/talk/GmailProviderWrapper;->getMessageCursorForMessageId(Ljava/lang/String;J)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-result-object v0

    .line 414
    .local v0, cursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->moveTo(I)Z

    .line 415
    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #calls: Lcom/google/android/talk/fragments/SearchChatResultFragment;->getAddressesLine(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$700(Lcom/google/android/talk/fragments/SearchChatResultFragment;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, result:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getCollapsedSnippet(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "messageId"

    .prologue
    const/4 v8, 0x0

    .line 461
    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #calls: Lcom/google/android/talk/fragments/SearchChatResultFragment;->getId(Ljava/lang/String;)J
    invoke-static {v4, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$400(Lcom/google/android/talk/fragments/SearchChatResultFragment;Ljava/lang/String;)J

    move-result-wide v1

    .line 464
    .local v1, id:J
    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mExpandedMessageIds:Ljava/util/Map;
    invoke-static {v4}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$800(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    .line 465
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mExpandedMessageIds:Ljava/util/Map;
    invoke-static {v4}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$800(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;
    invoke-static {v4}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$600(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$500(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2}, Lcom/google/android/talk/GmailProviderWrapper;->getMessageCursorForMessageId(Ljava/lang/String;J)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-result-object v0

    .line 470
    .local v0, cursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    invoke-virtual {v0, v8}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->moveTo(I)Z

    .line 471
    iget-object v4, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #calls: Lcom/google/android/talk/fragments/SearchChatResultFragment;->getSnippet(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1300(Lcom/google/android/talk/fragments/SearchChatResultFragment;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, result:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<div class=\"snippetDiv\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</div>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 466
    .end local v0           #cursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    .end local v3           #result:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getMessageBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "messageId"

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 431
    iput-object p1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->mLastMessageId:Ljava/lang/String;

    .line 433
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #calls: Lcom/google/android/talk/fragments/SearchChatResultFragment;->getId(Ljava/lang/String;)J
    invoke-static {v2, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$400(Lcom/google/android/talk/fragments/SearchChatResultFragment;Ljava/lang/String;)J

    move-result-wide v10

    .line 436
    .local v10, id:J
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mExpandedMessageIds:Ljava/util/Map;
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$800(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 437
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mExpandedMessageIds:Ljava/util/Map;
    invoke-static {v3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$800(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mGmail:Lcom/google/android/talk/GmailProviderWrapper;
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$600(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mAccount:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$500(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v10, v11}, Lcom/google/android/talk/GmailProviderWrapper;->getMessageCursorForMessageId(Ljava/lang/String;J)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-result-object v9

    .line 442
    .local v9, cursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    invoke-virtual {v9, v0}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->moveTo(I)Z

    .line 444
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$200(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    invoke-static {v3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$200(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->count()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->moveTo(I)Z

    .line 445
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$200(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v9}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getMessageId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 447
    .local v8, isLast:Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x4000

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 448
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-virtual {v9}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getBody()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyString:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$900(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mForwardString:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1000(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mReplyByChatString:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1100(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getBodyEmbedsExternalResources()Z

    move-result v7

    move-object v3, p1

    #calls: Lcom/google/android/talk/fragments/SearchChatResultFragment;->addExpandedBody(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    invoke-static/range {v0 .. v8}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1200(Lcom/google/android/talk/fragments/SearchChatResultFragment;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 452
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #calls: Lcom/google/android/talk/fragments/SearchChatResultFragment;->getAddressesLine(Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$700(Lcom/google/android/talk/fragments/SearchChatResultFragment;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->mLastAddressLine:Ljava/lang/String;

    .line 453
    invoke-virtual {v9}, Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 454
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 438
    .end local v1           #sb:Ljava/lang/StringBuilder;
    .end local v8           #isLast:Z
    .end local v9           #cursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .restart local v9       #cursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    :cond_0
    move v8, v0

    .line 445
    goto :goto_0
.end method

.method public getMessageHeaders(II)Ljava/lang/String;
    .locals 3
    .parameter "first"
    .parameter "last"

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mMessageCursor:Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;
    invoke-static {v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$200(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;

    move-result-object v2

    #calls: Lcom/google/android/talk/fragments/SearchChatResultFragment;->addCollapsedHeaders(Ljava/lang/StringBuilder;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;II)V
    invoke-static {v1, v0, v2, p1, p2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$300(Lcom/google/android/talk/fragments/SearchChatResultFragment;Ljava/lang/StringBuilder;Lcom/google/android/talk/GmailProviderWrapper$MessageCursor;II)V

    .line 400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public reply(Ljava/lang/String;)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    const/4 v1, 0x0

    #calls: Lcom/google/android/talk/fragments/SearchChatResultFragment;->launchReplyOrForward(ZLjava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$000(Lcom/google/android/talk/fragments/SearchChatResultFragment;ZLjava/lang/String;)V

    .line 382
    return-void
.end method

.method public replyByChat(Ljava/lang/String;)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$GmailJsInterface;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    #calls: Lcom/google/android/talk/fragments/SearchChatResultFragment;->launchReplyByChat(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$100(Lcom/google/android/talk/fragments/SearchChatResultFragment;Ljava/lang/String;)V

    .line 386
    return-void
.end method
