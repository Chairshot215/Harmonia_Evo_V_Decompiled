.class Lcom/htc/android/mail/MailList$RequestHandler$3;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$RequestHandler;->onSetReadStatusComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList$RequestHandler;

.field final synthetic val$messageList:Ljava/util/ArrayList;

.field final synthetic val$status:Ljava/lang/Integer;

.field final synthetic val$target:Lcom/htc/android/mail/MailList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$RequestHandler;Ljava/util/ArrayList;Lcom/htc/android/mail/MailList;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5395
    iput-object p1, p0, Lcom/htc/android/mail/MailList$RequestHandler$3;->this$0:Lcom/htc/android/mail/MailList$RequestHandler;

    iput-object p2, p0, Lcom/htc/android/mail/MailList$RequestHandler$3;->val$messageList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/htc/android/mail/MailList$RequestHandler$3;->val$target:Lcom/htc/android/mail/MailList;

    iput-object p4, p0, Lcom/htc/android/mail/MailList$RequestHandler$3;->val$status:Ljava/lang/Integer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 5397
    iget-object v5, p0, Lcom/htc/android/mail/MailList$RequestHandler$3;->val$messageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/MailMessage;

    .line 5406
    .local v2, mailMessage:Lcom/htc/android/mail/MailMessage;
    iget-object v5, p0, Lcom/htc/android/mail/MailList$RequestHandler$3;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v5

    iget v5, v5, Lcom/htc/android/mail/MailList$TabInfo;->mId:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 5407
    iget-object v5, p0, Lcom/htc/android/mail/MailList$RequestHandler$3;->val$status:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 5412
    :pswitch_0
    iget-object v5, p0, Lcom/htc/android/mail/MailList$RequestHandler$3;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/android/mail/MailList$TabInfo;->mReadMessageIds:Lcom/htc/android/mail/util/IdStore;

    iget-wide v6, v2, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/util/IdStore;->delete(J)V

    goto :goto_0

    .line 5409
    :pswitch_1
    iget-object v5, p0, Lcom/htc/android/mail/MailList$RequestHandler$3;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/android/mail/MailList$TabInfo;->mReadMessageIds:Lcom/htc/android/mail/util/IdStore;

    iget-wide v6, v2, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/util/IdStore;->put(J)V

    goto :goto_0

    .line 5418
    .end local v2           #mailMessage:Lcom/htc/android/mail/MailMessage;
    :cond_1
    iget-object v5, p0, Lcom/htc/android/mail/MailList$RequestHandler$3;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v5

    iget-boolean v5, v5, Lcom/htc/android/mail/MailList$TabInfo;->mIsThreadTab:Z

    if-eqz v5, :cond_2

    .line 5419
    iget-object v5, p0, Lcom/htc/android/mail/MailList$RequestHandler$3;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v5

    #calls: Lcom/htc/android/mail/MailList;->getConversationGroupCursor(Lcom/htc/android/mail/MailList$TabInfo;)Lcom/htc/android/mail/database/ConversationGroupCursor;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$3000(Lcom/htc/android/mail/MailList$TabInfo;)Lcom/htc/android/mail/database/ConversationGroupCursor;

    move-result-object v0

    .line 5420
    .local v0, groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/htc/android/mail/MailList$RequestHandler$3;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    if-eqz v5, :cond_2

    .line 5421
    iget-object v5, p0, Lcom/htc/android/mail/MailList$RequestHandler$3;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v5}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    const-string v6, "READ"

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v4

    .line 5422
    .local v4, readStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    invoke-virtual {v0, v4}, Lcom/htc/android/mail/database/ConversationGroupCursor;->updateReadStatus(Lcom/htc/android/mail/AbsRequestController$MessageStatus;)V

    .line 5426
    .end local v0           #groupCursor:Lcom/htc/android/mail/database/ConversationGroupCursor;
    .end local v4           #readStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/MailList$RequestHandler$3;->this$0:Lcom/htc/android/mail/MailList$RequestHandler;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 5427
    .local v3, message:Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 5428
    return-void

    .line 5407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
