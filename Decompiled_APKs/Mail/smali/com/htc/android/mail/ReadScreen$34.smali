.class Lcom/htc/android/mail/ReadScreen$34;
.super Ljava/lang/Object;
.source "ReadScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ReadScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ReadScreen;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ReadScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 4379
    iput-object p1, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 4381
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-static {v2}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4383
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ReadScreen;->showDialog(I)V

    .line 4480
    :cond_0
    :goto_0
    return-void

    .line 4387
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget v3, v3, Lcom/htc/android/mail/ReadScreen;->mTotalSize:I

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/ReadScreen;->checkUnfinishedSpace(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4388
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    invoke-virtual {v2, v7}, Lcom/htc/android/mail/ReadScreen;->showDialog(I)V

    goto :goto_0

    .line 4403
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/Request;

    .line 4404
    .local v0, RemainRequest:Lcom/htc/android/mail/Request;
    if-nez v0, :cond_8

    .line 4405
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    new-instance v3, Lcom/htc/android/mail/Request;

    invoke-direct {v3}, Lcom/htc/android/mail/Request;-><init>()V

    #setter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2, v3}, Lcom/htc/android/mail/ReadScreen;->access$5302(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/Request;)Lcom/htc/android/mail/Request;

    .line 4407
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ReadScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add request> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v4}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4408
    :cond_3
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v3

    #calls: Lcom/htc/android/mail/ReadScreen;->startGetUnfinishedAnimation(Lcom/htc/android/mail/Request;)V
    invoke-static {v2, v3}, Lcom/htc/android/mail/ReadScreen;->access$5400(Lcom/htc/android/mail/ReadScreen;Lcom/htc/android/mail/Request;)V

    .line 4419
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-eq v2, v7, :cond_4

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-ne v2, v6, :cond_c

    .line 4420
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ReadScreen"

    const-string v3, "imap/exchange get whole mail."

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4423
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$5600(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    .line 4424
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    iput-boolean v5, v2, Lcom/htc/android/mail/Request;->isWifiActiveMode:Z

    .line 4425
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-ne v2, v6, :cond_b

    .line 4426
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "ReadScreen"

    const-string v3, "exchagne get whole mail"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4427
    :cond_6
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    const/16 v3, 0x1ff

    iput v3, v2, Lcom/htc/android/mail/Request;->command:I

    .line 4428
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    const/16 v3, 0x9

    iput v3, v2, Lcom/htc/android/mail/Request;->messageWhat:I

    .line 4433
    :goto_1
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    iput-boolean v5, v2, Lcom/htc/android/mail/Request;->isStopOnLeave:Z

    .line 4434
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4438
    .local v1, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mFromSearchSvrMailView:Z
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$600(Lcom/htc/android/mail/ReadScreen;)Z

    move-result v2

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccount:Lcom/htc/android/mail/Account;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$900(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    if-ne v2, v6, :cond_7

    .line 4439
    const-string v2, "collectionId"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->searchMailCollectinId:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$5700(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4441
    :cond_7
    const-string v2, "Mailbox"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$4800(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4442
    const-string v2, "UID"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v3, v3, Lcom/htc/android/mail/ReadScreen;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4443
    const-string v2, "MSGID"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-wide v3, v3, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4444
    const-string v2, "BodyID"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-wide v3, v3, Lcom/htc/android/mail/ReadScreen;->mBodyPartID:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4445
    const-string v2, "Index"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v3, v3, Lcom/htc/android/mail/ReadScreen;->mBodyIndex:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4446
    const-string v2, "ENCODE"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v3, v3, Lcom/htc/android/mail/ReadScreen;->mBodyEncode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4447
    const-string v2, "CharsetOrFileName"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v3, v3, Lcom/htc/android/mail/ReadScreen;->mBodyCharset:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4448
    const-string v2, "MimeType"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v3, v3, Lcom/htc/android/mail/ReadScreen;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4449
    const-string v2, "SaveAsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4451
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    iput-object v1, v2, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 4452
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccountId:J
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$5800(Lcom/htc/android/mail/ReadScreen;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 4453
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$1400(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$1400(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/AbsRequestController;->addRequest(Lcom/htc/android/mail/Request;)V

    goto/16 :goto_0

    .line 4410
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_8
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$1400(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$1400(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/AbsRequestController;->removeRequest(Lcom/htc/android/mail/Request;)V

    .line 4411
    :cond_9
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "ReadScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove request> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4413
    :cond_a
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #calls: Lcom/htc/android/mail/ReadScreen;->stopGetUnfinishedAnimation()V
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5500(Lcom/htc/android/mail/ReadScreen;)V

    goto/16 :goto_0

    .line 4430
    :cond_b
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    const/16 v3, 0x6e

    iput v3, v2, Lcom/htc/android/mail/Request;->command:I

    .line 4431
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    const/16 v3, 0x8

    iput v3, v2, Lcom/htc/android/mail/Request;->messageWhat:I

    goto/16 :goto_1

    .line 4456
    :cond_c
    invoke-static {}, Lcom/htc/android/mail/ReadScreen;->access$400()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "ReadScreen"

    const-string v3, "pop get whole mail."

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4460
    :cond_d
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$5600(Lcom/htc/android/mail/ReadScreen;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    .line 4461
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    iput-boolean v5, v2, Lcom/htc/android/mail/Request;->isWifiActiveMode:Z

    .line 4462
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    const/16 v3, 0xca

    iput v3, v2, Lcom/htc/android/mail/Request;->command:I

    .line 4463
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    const/4 v3, 0x7

    iput v3, v2, Lcom/htc/android/mail/Request;->messageWhat:I

    .line 4464
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    iput-boolean v5, v2, Lcom/htc/android/mail/Request;->isStopOnLeave:Z

    .line 4465
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4466
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v2, "messageId"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-wide v3, v3, Lcom/htc/android/mail/ReadScreen;->mMessageID:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4467
    const-string v2, "UIDL"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget-object v3, v3, Lcom/htc/android/mail/ReadScreen;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4468
    const-string v2, "TotalSize"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    iget v3, v3, Lcom/htc/android/mail/ReadScreen;->mTotalSize:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4469
    const-string v2, "Mailbox"

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$4800(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4470
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    iput-object v1, v2, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 4471
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mAccountId:J
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$5800(Lcom/htc/android/mail/ReadScreen;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 4472
    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$1400(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mRequestController:Lcom/htc/android/mail/AbsRequestController;
    invoke-static {v2}, Lcom/htc/android/mail/ReadScreen;->access$1400(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/AbsRequestController;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/ReadScreen$34;->this$0:Lcom/htc/android/mail/ReadScreen;

    #getter for: Lcom/htc/android/mail/ReadScreen;->mDLRemainRequest:Lcom/htc/android/mail/Request;
    invoke-static {v3}, Lcom/htc/android/mail/ReadScreen;->access$5300(Lcom/htc/android/mail/ReadScreen;)Lcom/htc/android/mail/Request;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/AbsRequestController;->addRequest(Lcom/htc/android/mail/Request;)V

    goto/16 :goto_0
.end method
