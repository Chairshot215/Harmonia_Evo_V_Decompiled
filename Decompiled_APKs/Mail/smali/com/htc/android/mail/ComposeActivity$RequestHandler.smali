.class Lcom/htc/android/mail/ComposeActivity$RequestHandler;
.super Lcom/htc/android/mail/MailRequestHandler;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/ComposeActivity$RequestHandler$DraftInfo;
    }
.end annotation


# instance fields
.field private final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/ComposeActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/ComposeActivity;)V
    .locals 1
    .parameter "context"
    .parameter "target"

    .prologue
    .line 12501
    invoke-direct {p0, p1}, Lcom/htc/android/mail/MailRequestHandler;-><init>(Landroid/content/Context;)V

    .line 12502
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/ComposeActivity$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    .line 12503
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "message"

    .prologue
    const/4 v11, 0x0

    .line 12507
    invoke-super {p0, p1}, Lcom/htc/android/mail/MailRequestHandler;->handleMessage(Landroid/os/Message;)V

    .line 12509
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "ComposeActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleMessage>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12511
    :cond_0
    iget-object v8, p0, Lcom/htc/android/mail/ComposeActivity$RequestHandler;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/ComposeActivity;

    .line 12512
    .local v7, target:Lcom/htc/android/mail/ComposeActivity;
    if-nez v7, :cond_2

    .line 12559
    :cond_1
    :goto_0
    return-void

    .line 12514
    :cond_2
    invoke-virtual {v7}, Lcom/htc/android/mail/ComposeActivity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_3

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mIsDestroyed:Z
    invoke-static {v7}, Lcom/htc/android/mail/ComposeActivity;->access$14000(Lcom/htc/android/mail/ComposeActivity;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 12515
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "ComposeActivity"

    const-string v9, "ComposeActivity is finishing"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12519
    :cond_4
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 12521
    :sswitch_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_1

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 12522
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/View;

    const v9, 0x7f09000f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/QuickContactBadge;

    .line 12523
    .local v0, attBtn:Lcom/htc/widget/QuickContactBadge;
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/android/mail/Attachment;

    iget-object v1, v8, Lcom/htc/android/mail/Attachment;->attachmentIconBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 12525
    .local v1, bmpd:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/htc/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 12526
    invoke-virtual {v0, v1}, Lcom/htc/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 12530
    .end local v0           #attBtn:Lcom/htc/widget/QuickContactBadge;
    .end local v1           #bmpd:Landroid/graphics/drawable/BitmapDrawable;
    :sswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/htc/android/mail/ComposeActivity$RequestHandler$DraftInfo;

    .line 12531
    .local v3, info:Lcom/htc/android/mail/ComposeActivity$RequestHandler$DraftInfo;
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mSavedMessageIdInHeader:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/mail/ComposeActivity;->access$6000(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    if-eqz v3, :cond_1

    iget-object v8, v3, Lcom/htc/android/mail/ComposeActivity$RequestHandler$DraftInfo;->key:Ljava/lang/String;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->mSavedMessageIdInHeader:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/android/mail/ComposeActivity;->access$6000(Lcom/htc/android/mail/ComposeActivity;)Ljava/lang/String;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 12532
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mLoadDataTask:Lcom/htc/android/mail/ComposeActivity$LoadDataTask;
    invoke-static {v7}, Lcom/htc/android/mail/ComposeActivity;->access$7300(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/ComposeActivity$LoadDataTask;

    move-result-object v8

    if-nez v8, :cond_1

    .line 12533
    invoke-virtual {v7}, Lcom/htc/android/mail/ComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 12534
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "cmd"

    const-string v9, "editdraft"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12535
    const-string v8, "draftId"

    iget-wide v9, v3, Lcom/htc/android/mail/ComposeActivity$RequestHandler$DraftInfo;->messageId:J

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 12536
    const-string v8, "editdraft"

    #setter for: Lcom/htc/android/mail/ComposeActivity;->cmd:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/htc/android/mail/ComposeActivity;->access$5102(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 12537
    new-instance v8, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;

    invoke-direct {v8, v7}, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;-><init>(Lcom/htc/android/mail/ComposeActivity;)V

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mLoadDataTask:Lcom/htc/android/mail/ComposeActivity$LoadDataTask;
    invoke-static {v7, v8}, Lcom/htc/android/mail/ComposeActivity;->access$7302(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ComposeActivity$LoadDataTask;)Lcom/htc/android/mail/ComposeActivity$LoadDataTask;

    .line 12538
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mLoadDataTask:Lcom/htc/android/mail/ComposeActivity$LoadDataTask;
    invoke-static {v7}, Lcom/htc/android/mail/ComposeActivity;->access$7300(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/ComposeActivity$LoadDataTask;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 12544
    .end local v3           #info:Lcom/htc/android/mail/ComposeActivity$RequestHandler$DraftInfo;
    .end local v4           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 12545
    .local v5, messageId:J
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mDraftMessageId:J
    invoke-static {v7}, Lcom/htc/android/mail/ComposeActivity;->access$3300(Lcom/htc/android/mail/ComposeActivity;)J

    move-result-wide v8

    cmp-long v8, v5, v8

    if-nez v8, :cond_1

    .line 12546
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 12547
    .local v2, done:I
    const/16 v8, 0x17

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/ComposeActivity;->removeDialog(I)V

    .line 12548
    const/4 v8, 0x1

    if-ne v2, v8, :cond_5

    .line 12549
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mLoadDataTask:Lcom/htc/android/mail/ComposeActivity$LoadDataTask;
    invoke-static {v7}, Lcom/htc/android/mail/ComposeActivity;->access$7300(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/ComposeActivity$LoadDataTask;

    move-result-object v8

    if-nez v8, :cond_1

    .line 12550
    new-instance v8, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;

    invoke-direct {v8, v7}, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;-><init>(Lcom/htc/android/mail/ComposeActivity;)V

    #setter for: Lcom/htc/android/mail/ComposeActivity;->mLoadDataTask:Lcom/htc/android/mail/ComposeActivity$LoadDataTask;
    invoke-static {v7, v8}, Lcom/htc/android/mail/ComposeActivity;->access$7302(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ComposeActivity$LoadDataTask;)Lcom/htc/android/mail/ComposeActivity$LoadDataTask;

    .line 12551
    #getter for: Lcom/htc/android/mail/ComposeActivity;->mLoadDataTask:Lcom/htc/android/mail/ComposeActivity$LoadDataTask;
    invoke-static {v7}, Lcom/htc/android/mail/ComposeActivity;->access$7300(Lcom/htc/android/mail/ComposeActivity;)Lcom/htc/android/mail/ComposeActivity$LoadDataTask;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/ComposeActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 12554
    :cond_5
    invoke-virtual {v7}, Lcom/htc/android/mail/ComposeActivity;->finish()V

    goto/16 :goto_0

    .line 12519
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x26 -> :sswitch_1
        0x27 -> :sswitch_2
    .end sparse-switch
.end method

.method public onFetchMessageComplete(JI)V
    .locals 4
    .parameter "messageId"
    .parameter "done"

    .prologue
    .line 12569
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ComposeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchDone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12570
    :cond_0
    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ComposeActivity$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 12571
    .local v0, message:Landroid/os/Message;
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12572
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 12573
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 12574
    return-void
.end method

.method public onSaveDraftComplete(Ljava/lang/String;J)V
    .locals 3
    .parameter "key"
    .parameter "messageId"

    .prologue
    .line 12578
    new-instance v0, Lcom/htc/android/mail/ComposeActivity$RequestHandler$DraftInfo;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ComposeActivity$RequestHandler$DraftInfo;-><init>(Lcom/htc/android/mail/ComposeActivity$RequestHandler;)V

    .line 12579
    .local v0, info:Lcom/htc/android/mail/ComposeActivity$RequestHandler$DraftInfo;
    iput-object p1, v0, Lcom/htc/android/mail/ComposeActivity$RequestHandler$DraftInfo;->key:Ljava/lang/String;

    .line 12580
    iput-wide p2, v0, Lcom/htc/android/mail/ComposeActivity$RequestHandler$DraftInfo;->messageId:J

    .line 12581
    const/16 v2, 0x26

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/ComposeActivity$RequestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 12582
    .local v1, message:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12583
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 12584
    return-void
.end method

.method public setAttachmentIndicatorIcon(Landroid/view/View;)V
    .locals 2
    .parameter "BtnView"

    .prologue
    .line 12563
    const/16 v1, 0x1b

    invoke-virtual {p0, v1, p1}, Lcom/htc/android/mail/ComposeActivity$RequestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 12564
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 12565
    return-void
.end method
