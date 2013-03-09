.class Lcom/htc/android/mail/MailList$RequestHandler$5;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$RequestHandler;->onMoveMailComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList$RequestHandler;

.field final synthetic val$messageList:Ljava/util/ArrayList;

.field final synthetic val$target:Lcom/htc/android/mail/MailList;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$RequestHandler;Lcom/htc/android/mail/MailList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5486
    iput-object p1, p0, Lcom/htc/android/mail/MailList$RequestHandler$5;->this$0:Lcom/htc/android/mail/MailList$RequestHandler;

    iput-object p2, p0, Lcom/htc/android/mail/MailList$RequestHandler$5;->val$target:Lcom/htc/android/mail/MailList;

    iput-object p3, p0, Lcom/htc/android/mail/MailList$RequestHandler$5;->val$messageList:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 5488
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 5489
    .local v1, deleted:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/htc/android/mail/MailList$RequestHandler$5;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v7}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 5490
    iget-object v7, p0, Lcom/htc/android/mail/MailList$RequestHandler$5;->val$messageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/MailMessage;

    .line 5491
    .local v3, mailMessage:Lcom/htc/android/mail/MailMessage;
    iget-object v7, p0, Lcom/htc/android/mail/MailList$RequestHandler$5;->this$0:Lcom/htc/android/mail/MailList$RequestHandler;

    #calls: Lcom/htc/android/mail/MailList$RequestHandler;->deselectMailMessage(Lcom/htc/android/mail/MailMessage;Z)V
    invoke-static {v7, v3, v10}, Lcom/htc/android/mail/MailList$RequestHandler;->access$7300(Lcom/htc/android/mail/MailList$RequestHandler;Lcom/htc/android/mail/MailMessage;Z)V

    .line 5497
    iget-object v7, p0, Lcom/htc/android/mail/MailList$RequestHandler$5;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v7}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v7

    iget-object v6, v7, Lcom/htc/android/mail/MailList$TabInfo;->mPreMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    .line 5498
    .local v6, statusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;
    if-eqz v6, :cond_1

    .line 5499
    const-string v7, "DELETE"

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v5

    .line 5500
    .local v5, messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v5, :cond_1

    .line 5501
    iget-wide v7, v3, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->putLocal(JI)V

    .line 5504
    .end local v5           #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_1
    iget-object v7, p0, Lcom/htc/android/mail/MailList$RequestHandler$5;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v7}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v7

    iget-object v6, v7, Lcom/htc/android/mail/MailList$TabInfo;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    .line 5505
    if-eqz v6, :cond_2

    .line 5506
    const-string v7, "DELETE"

    invoke-virtual {v6, v7}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v5

    .line 5507
    .restart local v5       #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    if-eqz v5, :cond_2

    .line 5508
    iget-wide v7, v3, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->putLocal(JI)V

    .line 5511
    .end local v5           #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_2
    iget-object v7, p0, Lcom/htc/android/mail/MailList$RequestHandler$5;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v7}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v7

    iget-object v0, v7, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    .line 5512
    .local v0, absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    if-eqz v0, :cond_0

    .line 5513
    iget-wide v7, v3, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v0, v7, v8}, Lcom/htc/android/mail/database/AbstractMailCursor;->delete(J)V

    goto :goto_0

    .line 5518
    .end local v0           #absMailCursor:Lcom/htc/android/mail/database/AbstractMailCursor;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v6           #statusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;
    :cond_3
    iget-object v7, p0, Lcom/htc/android/mail/MailList$RequestHandler$5;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v7}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    if-eqz v7, :cond_4

    .line 5519
    iget-object v7, p0, Lcom/htc/android/mail/MailList$RequestHandler$5;->val$target:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v7}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/android/mail/MailList$TabInfo;->mExAdapter:Lcom/htc/android/mail/MailConversationExpandListAdapter;

    invoke-virtual {v7, v10}, Lcom/htc/android/mail/MailConversationExpandListAdapter;->notifyDataSetChanged(Z)V

    .line 5522
    :cond_4
    iget-object v7, p0, Lcom/htc/android/mail/MailList$RequestHandler$5;->this$0:Lcom/htc/android/mail/MailList$RequestHandler;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/MailList$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 5523
    .local v4, message:Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 5524
    return-void
.end method
