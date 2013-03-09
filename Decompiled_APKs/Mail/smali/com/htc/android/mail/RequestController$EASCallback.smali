.class Lcom/htc/android/mail/RequestController$EASCallback;
.super Lcom/htc/android/mail/eassvc/pim/EASEventCallback$Stub;
.source "RequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EASCallback"
.end annotation


# instance fields
.field private mAccount:Lcom/htc/android/mail/Account;

.field final synthetic this$0:Lcom/htc/android/mail/RequestController;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/RequestController;Lcom/htc/android/mail/Account;)V
    .locals 0
    .parameter
    .parameter "account"

    .prologue
    .line 3590
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$EASCallback;->this$0:Lcom/htc/android/mail/RequestController;

    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/pim/EASEventCallback$Stub;-><init>()V

    .line 3591
    iput-object p2, p0, Lcom/htc/android/mail/RequestController$EASCallback;->mAccount:Lcom/htc/android/mail/Account;

    .line 3592
    return-void
.end method


# virtual methods
.method public callback(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/RequestController;->access$2800(Lcom/htc/android/mail/RequestController;)Ljava/util/Vector;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v25

    if-lez v25, :cond_d

    .line 3595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/android/mail/RequestController;->mWeakMailRequestHandlers:Ljava/util/Vector;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/RequestController;->access$2800(Lcom/htc/android/mail/RequestController;)Ljava/util/Vector;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 3596
    .local v6, allHandler:[Ljava/lang/Object;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    .line 3719
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v25

    if-eqz v25, :cond_0

    const-string v25, "RequestController"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "callback: unhandle message: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    .end local v6           #allHandler:[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 3598
    .restart local v6       #allHandler:[Ljava/lang/Object;
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 3654
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 3655
    const-string v25, "RequestController"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "callback: unhandle arg1: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "for Server.EXCHG_refresh"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3601
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 3602
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v25

    const-string v26, "accountId"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3603
    .local v4, accountId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/android/mail/RequestController;->mAccountPool:Lcom/htc/android/mail/AccountPool;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/RequestController;->access$3000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/AccountPool;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4, v5}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/RequestController$EASCallback;->mAccount:Lcom/htc/android/mail/Account;

    .line 3605
    .end local v4           #accountId:J
    :cond_1
    new-instance v13, Landroid/os/Message;

    invoke-direct {v13}, Landroid/os/Message;-><init>()V

    .line 3606
    .local v13, msg1:Landroid/os/Message;
    const/16 v25, 0xd

    move/from16 v0, v25

    iput v0, v13, Landroid/os/Message;->what:I

    .line 3607
    const-string v25, ""

    move-object/from16 v0, v25

    iput-object v0, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #setter for: Lcom/htc/android/mail/RequestController;->mCurrentProgressStatusMsg:Landroid/os/Message;
    invoke-static {v0, v13}, Lcom/htc/android/mail/RequestController;->access$2902(Lcom/htc/android/mail/RequestController;Landroid/os/Message;)Landroid/os/Message;

    .line 3609
    move-object v7, v6

    .local v7, arr$:[Ljava/lang/Object;
    array-length v12, v7

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v12, :cond_0

    aget-object v17, v7, v11

    .line 3610
    .local v17, obj:Ljava/lang/Object;
    check-cast v17, Ljava/lang/ref/WeakReference;

    .end local v17           #obj:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/MailRequestHandler;

    .line 3611
    .local v10, handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v10, :cond_2

    .line 3612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Lcom/htc/android/mail/MailRequestHandler;->onShowProgressForRefresh(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;)V

    .line 3613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v10, v0, v13}, Lcom/htc/android/mail/MailRequestHandler;->onUpdateProgressStatus(Lcom/htc/android/mail/Account;Landroid/os/Message;)V

    .line 3609
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 3621
    .end local v7           #arr$:[Ljava/lang/Object;
    .end local v10           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #msg1:Landroid/os/Message;
    :pswitch_1
    const-string v22, ""

    .line 3622
    .local v22, str:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v25

    const-string v26, "current"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 3623
    .local v15, num:J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v25

    const-string v26, "total"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 3624
    .local v23, total:J
    const-wide/16 v25, 0x0

    cmp-long v25, v23, v25

    if-lez v25, :cond_0

    .line 3625
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 3627
    .local v21, status:Ljava/lang/StringBuilder;
    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3628
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 3629
    .local v14, msg2:Landroid/os/Message;
    const/16 v25, 0xd

    move/from16 v0, v25

    iput v0, v14, Landroid/os/Message;->what:I

    .line 3630
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #setter for: Lcom/htc/android/mail/RequestController;->mCurrentProgressStatusMsg:Landroid/os/Message;
    invoke-static {v0, v14}, Lcom/htc/android/mail/RequestController;->access$2902(Lcom/htc/android/mail/RequestController;Landroid/os/Message;)Landroid/os/Message;

    .line 3632
    move-object v7, v6

    .restart local v7       #arr$:[Ljava/lang/Object;
    array-length v12, v7

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_2
    if-ge v11, v12, :cond_0

    aget-object v17, v7, v11

    .line 3633
    .restart local v17       #obj:Ljava/lang/Object;
    check-cast v17, Ljava/lang/ref/WeakReference;

    .end local v17           #obj:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/MailRequestHandler;

    .line 3634
    .restart local v10       #handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v10, :cond_3

    .line 3635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v10, v0, v14}, Lcom/htc/android/mail/MailRequestHandler;->onUpdateProgressStatus(Lcom/htc/android/mail/Account;Landroid/os/Message;)V

    .line 3632
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 3640
    .end local v7           #arr$:[Ljava/lang/Object;
    .end local v10           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v14           #msg2:Landroid/os/Message;
    .end local v15           #num:J
    .end local v21           #status:Ljava/lang/StringBuilder;
    .end local v22           #str:Ljava/lang/String;
    .end local v23           #total:J
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/MailProvider;->updateAccountLastUpdateTime(J)I

    .line 3641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/RequestController;->access$2000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v26

    const/16 v28, 0x1

    invoke-virtual/range {v25 .. v28}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->checkRequestQueue(JI)Z

    move-result v8

    .line 3642
    .local v8, bQueue:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/RequestController;->access$2000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->getRunningRequest()Lcom/htc/android/mail/Request;

    move-result-object v19

    .line 3643
    .local v19, request:Lcom/htc/android/mail/Request;
    if-nez v8, :cond_0

    if-eqz v19, :cond_4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/android/mail/Request;->command:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 3645
    :cond_4
    move-object v7, v6

    .restart local v7       #arr$:[Ljava/lang/Object;
    array-length v12, v7

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_3
    if-ge v11, v12, :cond_0

    aget-object v17, v7, v11

    .line 3646
    .restart local v17       #obj:Ljava/lang/Object;
    check-cast v17, Ljava/lang/ref/WeakReference;

    .end local v17           #obj:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/MailRequestHandler;

    .line 3647
    .restart local v10       #handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v10, :cond_5

    .line 3648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->mAccount:Lcom/htc/android/mail/Account;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v10, v0, v1, v2}, Lcom/htc/android/mail/MailRequestHandler;->onRefreshComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V

    .line 3645
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 3661
    .end local v7           #arr$:[Ljava/lang/Object;
    .end local v8           #bQueue:Z
    .end local v10           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v19           #request:Lcom/htc/android/mail/Request;
    :sswitch_1
    const/4 v3, 0x0

    .line 3662
    .local v3, account:Lcom/htc/android/mail/Account;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v25

    const-string v26, "ret"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 3663
    .local v20, ret:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v25

    const-string v26, "accountId"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3664
    .restart local v4       #accountId:J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v25

    const-string v26, "filereference"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3665
    .local v9, filereference:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v25

    if-eqz v25, :cond_6

    const-string v25, "RequestController"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Server.EXCHG_fetchMailAttach: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3666
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_1

    .line 3702
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 3703
    const-string v25, "RequestController"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "callback: unhandle arg1: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "for Server.EXCHG_fetchMailAttach"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3668
    :pswitch_3
    invoke-static {v4, v5}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v3

    .line 3669
    move-object v7, v6

    .restart local v7       #arr$:[Ljava/lang/Object;
    array-length v12, v7

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_4
    if-ge v11, v12, :cond_0

    aget-object v17, v7, v11

    .line 3670
    .restart local v17       #obj:Ljava/lang/Object;
    check-cast v17, Ljava/lang/ref/WeakReference;

    .end local v17           #obj:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/MailRequestHandler;

    .line 3671
    .restart local v10       #handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v10, :cond_7

    .line 3672
    move-object/from16 v0, p1

    invoke-virtual {v10, v3, v0}, Lcom/htc/android/mail/MailRequestHandler;->onDownloadAttachStart(Lcom/htc/android/mail/Account;Landroid/os/Message;)V

    .line 3669
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 3681
    .end local v7           #arr$:[Ljava/lang/Object;
    .end local v10           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :pswitch_4
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v25

    if-eqz v25, :cond_8

    const-string v25, "RequestController"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Server.EXCHG_fetchMailAttach(end): "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3682
    :cond_8
    invoke-static {v4, v5}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v3

    .line 3683
    move-object v7, v6

    .restart local v7       #arr$:[Ljava/lang/Object;
    array-length v12, v7

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_5
    if-ge v11, v12, :cond_0

    aget-object v17, v7, v11

    .line 3684
    .restart local v17       #obj:Ljava/lang/Object;
    check-cast v17, Ljava/lang/ref/WeakReference;

    .end local v17           #obj:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/MailRequestHandler;

    .line 3685
    .restart local v10       #handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v10, :cond_9

    .line 3686
    move-object/from16 v0, p1

    invoke-virtual {v10, v3, v0}, Lcom/htc/android/mail/MailRequestHandler;->onDownloadAttachComplete(Lcom/htc/android/mail/Account;Landroid/os/Message;)V

    .line 3683
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 3691
    .end local v7           #arr$:[Ljava/lang/Object;
    .end local v10           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v25

    const-string v26, "percentage"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 3692
    .local v18, percentage:I
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v25

    if-eqz v25, :cond_a

    const-string v25, "RequestController"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Server.EXCHG_fetchMailAttach(change): "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3693
    :cond_a
    invoke-static {v4, v5}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v3

    .line 3694
    move-object v7, v6

    .restart local v7       #arr$:[Ljava/lang/Object;
    array-length v12, v7

    .restart local v12       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_6
    if-ge v11, v12, :cond_0

    aget-object v17, v7, v11

    .line 3695
    .restart local v17       #obj:Ljava/lang/Object;
    check-cast v17, Ljava/lang/ref/WeakReference;

    .end local v17           #obj:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/MailRequestHandler;

    .line 3696
    .restart local v10       #handler:Lcom/htc/android/mail/MailRequestHandler;
    if-eqz v10, :cond_b

    .line 3697
    move-object/from16 v0, p1

    invoke-virtual {v10, v3, v0}, Lcom/htc/android/mail/MailRequestHandler;->onAttachProgressChange(Lcom/htc/android/mail/Account;Landroid/os/Message;)V

    .line 3694
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 3709
    .end local v3           #account:Lcom/htc/android/mail/Account;
    .end local v4           #accountId:J
    .end local v7           #arr$:[Ljava/lang/Object;
    .end local v9           #filereference:Ljava/lang/String;
    .end local v10           #handler:Lcom/htc/android/mail/MailRequestHandler;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v18           #percentage:I
    .end local v20           #ret:I
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v25

    const-string v26, "accountId"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3710
    .restart local v4       #accountId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v25, v0

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/RequestController$EASCallback;->this$0:Lcom/htc/android/mail/RequestController;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4, v5}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v3

    .line 3711
    .restart local v3       #account:Lcom/htc/android/mail/Account;
    if-eqz v3, :cond_c

    .line 3712
    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->reloadMailboxs()V

    goto/16 :goto_0

    .line 3714
    :cond_c
    const-string v25, "RequestController"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "folder refresh: can not get account: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3723
    .end local v3           #account:Lcom/htc/android/mail/Account;
    .end local v4           #accountId:J
    .end local v6           #allHandler:[Ljava/lang/Object;
    :cond_d
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v25

    if-eqz v25, :cond_0

    const-string v25, "RequestController"

    const-string v26, "mMailRequestHandler.size() = 0"

    invoke-static/range {v25 .. v26}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3596
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x1fe -> :sswitch_1
        0x202 -> :sswitch_2
    .end sparse-switch

    .line 3598
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 3666
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
