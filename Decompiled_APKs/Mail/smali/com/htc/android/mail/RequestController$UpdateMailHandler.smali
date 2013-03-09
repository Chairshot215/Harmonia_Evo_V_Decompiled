.class Lcom/htc/android/mail/RequestController$UpdateMailHandler;
.super Landroid/os/Handler;
.source "RequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateMailHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/RequestController;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/RequestController;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3874
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    .line 3875
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3876
    return-void
.end method

.method private getCombinedboxId(I)J
    .locals 2
    .parameter "mailboxKind"

    .prologue
    .line 4213
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 4214
    const-wide v0, 0x7fffffffffffffffL

    .line 4224
    :goto_0
    return-wide v0

    .line 4215
    :cond_0
    const v0, 0x7ffffffe

    if-ne p1, v0, :cond_1

    .line 4216
    const-wide v0, 0x7ffffffffffffffeL

    goto :goto_0

    .line 4217
    :cond_1
    const v0, 0x7ffffffd

    if-ne p1, v0, :cond_2

    .line 4218
    const-wide v0, 0x7ffffffffffffffdL

    goto :goto_0

    .line 4219
    :cond_2
    const v0, 0x7ffffffc

    if-ne p1, v0, :cond_3

    .line 4220
    const-wide v0, 0x7ffffffffffffffcL

    goto :goto_0

    .line 4221
    :cond_3
    const v0, 0x7ffffffb

    if-ne p1, v0, :cond_4

    .line 4222
    const-wide v0, 0x7ffffffffffffffbL

    goto :goto_0

    .line 4224
    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private notifyCombinedMailbox(JJLjava/lang/String;)V
    .locals 16
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "filter"

    .prologue
    .line 4228
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v4

    .line 4229
    .local v4, accountPool:Lcom/htc/android/mail/AccountPool;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v11

    move-wide/from16 v0, p1

    invoke-virtual {v4, v11, v0, v1}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v3

    .line 4230
    .local v3, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v10

    .line 4231
    .local v10, mailboxs:Lcom/htc/android/mail/Mailboxs;
    if-nez v10, :cond_1

    .line 4240
    :cond_0
    return-void

    .line 4232
    :cond_1
    invoke-virtual {v10}, Lcom/htc/android/mail/Mailboxs;->getCombinedMailboxs()[Lcom/htc/android/mail/Mailbox;

    move-result-object v7

    .line 4233
    .local v7, combinedMailboxs:[Lcom/htc/android/mail/Mailbox;
    move-object v5, v7

    .local v5, arr$:[Lcom/htc/android/mail/Mailbox;
    array-length v9, v5

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v6, v5, v8

    .line 4234
    .local v6, combinedMailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v6, :cond_3

    .line 4233
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4235
    :cond_3
    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Lcom/htc/android/mail/Mailbox;->contains(J)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4236
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mCResolver:Landroid/content/ContentResolver;
    invoke-static {v11}, Lcom/htc/android/mail/RequestController;->access$3100(Lcom/htc/android/mail/RequestController;)Landroid/content/ContentResolver;

    move-result-object v11

    iget-wide v12, v6, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v0, p1

    move-object/from16 v2, p5

    invoke-static {v0, v1, v12, v13, v2}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4237
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mCResolver:Landroid/content/ContentResolver;
    invoke-static {v11}, Lcom/htc/android/mail/RequestController;->access$3100(Lcom/htc/android/mail/RequestController;)Landroid/content/ContentResolver;

    move-result-object v11

    const-wide v12, 0x7fffffffffffffffL

    iget-wide v14, v6, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, p5

    invoke-static {v12, v13, v14, v15, v0}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 45
    .parameter "message"

    .prologue
    .line 3879
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Lcom/htc/android/mail/Request;

    .line 3880
    .local v42, r:Lcom/htc/android/mail/Request;
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    move-object/from16 v41, v0

    .line 3882
    .local v41, parameter:Landroid/os/Bundle;
    invoke-virtual/range {v42 .. v42}, Lcom/htc/android/mail/Request;->getAccount()Lcom/htc/android/mail/Account;

    move-result-object v25

    .line 3883
    .local v25, account:Lcom/htc/android/mail/Account;
    if-nez v25, :cond_1

    .line 3884
    if-eqz v42, :cond_0

    invoke-virtual/range {v42 .. v42}, Lcom/htc/android/mail/Request;->unregisterCollection()V

    .line 4210
    :cond_0
    :goto_0
    return-void

    .line 3888
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Lcom/htc/android/mail/database/LocalStore;->getInstance(Landroid/content/Context;Lcom/htc/android/mail/Account;)Lcom/htc/android/mail/database/LocalStore;

    move-result-object v7

    .line 3889
    .local v7, localStore:Lcom/htc/android/mail/database/LocalStore;
    const-string v2, "messageIdArray"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v36

    .line 3890
    .local v36, messageIdArray:[J
    const/16 v40, 0x0

    .line 3892
    .local v40, needCheckRequest:Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 4199
    .end local v7           #localStore:Lcom/htc/android/mail/database/LocalStore;
    :cond_2
    :goto_1
    :pswitch_0
    const-string v2, "messageIdArray"

    const/4 v3, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 4201
    if-eqz v40, :cond_1e

    .line 4202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$2000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3, v4, v9}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->checkRequestQueue(JI)Z

    move-result v32

    .line 4203
    .local v32, hasCmd:Z
    if-eqz v32, :cond_1e

    .line 4204
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RequestController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "already has request in queue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3894
    .end local v32           #hasCmd:Z
    .restart local v7       #localStore:Lcom/htc/android/mail/database/LocalStore;
    :pswitch_1
    const-string v2, "MailMessageList"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 3895
    .local v5, mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    const-string v2, "Mailbox"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailbox;

    .line 3898
    .local v6, mailbox:Lcom/htc/android/mail/Mailbox;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v6, v5, v3}, Lcom/htc/android/mail/database/LocalStore;->setUnreadMailLocal(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Z)V

    .line 3900
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    move-object v2, v7

    .line 3901
    check-cast v2, Lcom/htc/android/mail/database/ExchangeLocalStore;

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/htc/android/mail/database/ExchangeLocalStore;->updReadMailToTracking(JLjava/util/ArrayList;Lcom/htc/android/mail/Mailbox;I)V

    .line 3906
    .end local v7           #localStore:Lcom/htc/android/mail/database/LocalStore;
    :cond_3
    new-instance v31, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct/range {v31 .. v31}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    .line 3907
    .local v31, groups:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    sget-object v2, Lcom/htc/android/mail/AbsRequestController;->mGroupStatusMap:Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;

    const-string v3, "READ_UNCOMMIT"

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$GroupStatus;

    move-result-object v30

    .line 3908
    .local v30, groupStatus:Lcom/htc/android/mail/AbsRequestController$GroupStatus;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/htc/android/mail/MailMessage;

    .line 3909
    .local v35, mailMessage:Lcom/htc/android/mail/MailMessage;
    sget-object v2, Lcom/htc/android/mail/AbsRequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    const-string v3, "READ"

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v37

    .line 3910
    .local v37, messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/htc/android/mail/MailMessage;->id:J

    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->updateLocalCompleted(JI)V

    .line 3911
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/htc/android/mail/MailMessage;->accountId:J

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/android/mail/AbsRequestController$GroupStatus;->decrement(JLjava/lang/String;)V

    .line 3912
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/htc/android/mail/MailMessage;->accountId:J

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Set;

    .line 3913
    .local v29, groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v29, :cond_4

    .line 3914
    new-instance v29, Ljava/util/HashSet;

    .end local v29           #groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {v29 .. v29}, Ljava/util/HashSet;-><init>()V

    .line 3915
    .restart local v29       #groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/htc/android/mail/MailMessage;->accountId:J

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v3, v1}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 3917
    :cond_4
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3921
    .end local v29           #groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v35           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v37           #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_5
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-wide v13, v6, Lcom/htc/android/mail/Mailbox;->id:J

    const-string v4, "unread"

    invoke-static {v2, v3, v13, v14, v4}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v44

    .line 3922
    .local v44, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "RequestController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unread uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3923
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mCResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$3100(Lcom/htc/android/mail/RequestController;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3926
    iget v2, v6, Lcom/htc/android/mail/Mailbox;->kind:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->getCombinedboxId(I)J

    move-result-wide v26

    .line 3927
    .local v26, combinedboxId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v26, v2

    if-eqz v2, :cond_8

    .line 3928
    const-wide v2, 0x7fffffffffffffffL

    const-string v4, "unread"

    move-wide/from16 v0, v26

    invoke-static {v2, v3, v0, v1, v4}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v44

    .line 3929
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "RequestController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unread uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3930
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mCResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$3100(Lcom/htc/android/mail/RequestController;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3934
    :cond_8
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v8

    iget-wide v10, v6, Lcom/htc/android/mail/Mailbox;->id:J

    const-string v12, "unread"

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->notifyCombinedMailbox(JJLjava/lang/String;)V

    .line 3937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V

    .line 3941
    if-eqz v36, :cond_2

    .line 3942
    const-string v2, "messageIdArray"

    const/4 v3, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 3943
    sget-object v7, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v9

    const/4 v12, 0x0

    move-object/from16 v11, v36

    invoke-virtual/range {v7 .. v12}, Lcom/htc/android/mail/MailEventBroadcaster;->sendSetReadStatusIntent(Landroid/content/Context;J[JI)V

    goto/16 :goto_1

    .line 3948
    .end local v5           #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    .end local v6           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v26           #combinedboxId:J
    .end local v30           #groupStatus:Lcom/htc/android/mail/AbsRequestController$GroupStatus;
    .end local v31           #groups:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v44           #uri:Landroid/net/Uri;
    .restart local v7       #localStore:Lcom/htc/android/mail/database/LocalStore;
    :pswitch_2
    const-string v2, "Mailbox"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailbox;

    .line 3949
    .restart local v6       #mailbox:Lcom/htc/android/mail/Mailbox;
    const-string v2, "MailMessageList"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 3952
    .restart local v5       #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v6, v5, v3}, Lcom/htc/android/mail/database/LocalStore;->setReadMailLocal(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Z)V

    .line 3954
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    move-object v2, v7

    .line 3955
    check-cast v2, Lcom/htc/android/mail/database/ExchangeLocalStore;

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/htc/android/mail/database/ExchangeLocalStore;->updReadMailToTracking(JLjava/util/ArrayList;Lcom/htc/android/mail/Mailbox;I)V

    .line 3960
    .end local v7           #localStore:Lcom/htc/android/mail/database/LocalStore;
    :cond_9
    new-instance v31, Lcom/htc/android/mail/util/SparseArray;

    invoke-direct/range {v31 .. v31}, Lcom/htc/android/mail/util/SparseArray;-><init>()V

    .line 3961
    .restart local v31       #groups:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    sget-object v2, Lcom/htc/android/mail/AbsRequestController;->mGroupStatusMap:Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;

    const-string v3, "READ_UNCOMMIT"

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/AbsRequestController$GroupStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$GroupStatus;

    move-result-object v30

    .line 3962
    .restart local v30       #groupStatus:Lcom/htc/android/mail/AbsRequestController$GroupStatus;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .restart local v33       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/htc/android/mail/MailMessage;

    .line 3963
    .restart local v35       #mailMessage:Lcom/htc/android/mail/MailMessage;
    sget-object v2, Lcom/htc/android/mail/AbsRequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    const-string v3, "READ"

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v37

    .line 3964
    .restart local v37       #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/htc/android/mail/MailMessage;->id:J

    const/4 v4, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->updateLocalCompleted(JI)V

    .line 3965
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/htc/android/mail/MailMessage;->accountId:J

    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/android/mail/AbsRequestController$GroupStatus;->decrement(JLjava/lang/String;)V

    .line 3966
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/htc/android/mail/MailMessage;->accountId:J

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/util/SparseArray;->get(J)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Set;

    .line 3967
    .restart local v29       #groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v29, :cond_a

    .line 3968
    new-instance v29, Ljava/util/HashSet;

    .end local v29           #groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {v29 .. v29}, Ljava/util/HashSet;-><init>()V

    .line 3969
    .restart local v29       #groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/htc/android/mail/MailMessage;->accountId:J

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v3, v1}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 3971
    :cond_a
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/htc/android/mail/MailMessage;->group:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3978
    .end local v29           #groupSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v35           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v37           #messageStatus:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V

    .line 3982
    if-eqz v36, :cond_2

    .line 3983
    const-string v2, "messageIdArray"

    const/4 v3, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 3984
    sget-object v7, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v9

    const/4 v12, 0x1

    move-object/from16 v11, v36

    invoke-virtual/range {v7 .. v12}, Lcom/htc/android/mail/MailEventBroadcaster;->sendSetReadStatusIntent(Landroid/content/Context;J[JI)V

    goto/16 :goto_1

    .line 3989
    .end local v5           #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    .end local v6           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v30           #groupStatus:Lcom/htc/android/mail/AbsRequestController$GroupStatus;
    .end local v31           #groups:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v33           #i$:Ljava/util/Iterator;
    .restart local v7       #localStore:Lcom/htc/android/mail/database/LocalStore;
    :pswitch_3
    const-string v2, "MailMessage"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v35

    check-cast v35, Lcom/htc/android/mail/MailMessage;

    .line 3990
    .restart local v35       #mailMessage:Lcom/htc/android/mail/MailMessage;
    const-string v2, "Mailbox"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailbox;

    .line 3992
    .restart local v6       #mailbox:Lcom/htc/android/mail/Mailbox;
    const/16 v28, -0x1

    .line 3993
    .local v28, flag:I
    move-object/from16 v0, v35

    iget v0, v0, Lcom/htc/android/mail/MailMessage;->flags:I

    move/from16 v28, v0

    .line 3995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v7, v2, v0}, Lcom/htc/android/mail/database/LocalStore;->markStarLocal(Landroid/content/Context;Lcom/htc/android/mail/MailMessage;)V

    .line 3997
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    .line 3998
    check-cast v7, Lcom/htc/android/mail/database/ExchangeLocalStore;

    .end local v7           #localStore:Lcom/htc/android/mail/database/LocalStore;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    move-object/from16 v0, v35

    invoke-virtual {v7, v2, v3, v0, v6}, Lcom/htc/android/mail/database/ExchangeLocalStore;->updFlagMailToTracking(JLcom/htc/android/mail/MailMessage;Lcom/htc/android/mail/Mailbox;)V

    .line 4002
    :cond_c
    sget-object v2, Lcom/htc/android/mail/AbsRequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    const-string v3, "FLAG"

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v39

    .line 4003
    .local v39, messageStatusFlag:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/htc/android/mail/MailMessage;->id:J

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->updateLocalCompleted(J)V

    .line 4006
    const/4 v2, 0x2

    move/from16 v0, v28

    if-ne v0, v2, :cond_f

    .line 4007
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-wide v13, v6, Lcom/htc/android/mail/Mailbox;->id:J

    const-string v4, "markStar"

    invoke-static {v2, v3, v13, v14, v4}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v44

    .line 4008
    .restart local v44       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mCResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$3100(Lcom/htc/android/mail/RequestController;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4011
    iget v2, v6, Lcom/htc/android/mail/Mailbox;->kind:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->getCombinedboxId(I)J

    move-result-wide v26

    .line 4012
    .restart local v26       #combinedboxId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v26, v2

    if-eqz v2, :cond_e

    .line 4013
    const-wide v2, 0x7fffffffffffffffL

    const-string v4, "markStar"

    move-wide/from16 v0, v26

    invoke-static {v2, v3, v0, v1, v4}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v44

    .line 4014
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "RequestController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "markStar uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4015
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mCResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$3100(Lcom/htc/android/mail/RequestController;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4019
    :cond_e
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v8

    iget-wide v10, v6, Lcom/htc/android/mail/Mailbox;->id:J

    const-string v12, "markStar"

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->notifyCombinedMailbox(JJLjava/lang/String;)V

    .line 4023
    .end local v26           #combinedboxId:J
    .end local v44           #uri:Landroid/net/Uri;
    :cond_f
    if-eqz v36, :cond_2

    .line 4024
    const-string v2, "messageIdArray"

    const/4 v3, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 4025
    sget-object v7, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v9

    move-object/from16 v11, v36

    move/from16 v12, v28

    invoke-virtual/range {v7 .. v12}, Lcom/htc/android/mail/MailEventBroadcaster;->sendMarkStarIntent(Landroid/content/Context;J[JI)V

    goto/16 :goto_1

    .line 4030
    .end local v6           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v28           #flag:I
    .end local v35           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v39           #messageStatusFlag:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    .restart local v7       #localStore:Lcom/htc/android/mail/database/LocalStore;
    :pswitch_4
    const/4 v12, 0x1

    .line 4031
    .local v12, syncToRemote:Z
    const/4 v8, 0x0

    .line 4032
    .local v8, fromMailbox:Lcom/htc/android/mail/Mailbox;
    const/4 v10, 0x0

    .line 4033
    .local v10, toMailbox:Lcom/htc/android/mail/Mailbox;
    const/4 v5, 0x0

    .line 4034
    .restart local v5       #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_10

    .line 4035
    const-string v2, "FromMailbox"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8           #fromMailbox:Lcom/htc/android/mail/Mailbox;
    check-cast v8, Lcom/htc/android/mail/Mailbox;

    .line 4036
    .restart local v8       #fromMailbox:Lcom/htc/android/mail/Mailbox;
    const-string v2, "ToMailbox"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .end local v10           #toMailbox:Lcom/htc/android/mail/Mailbox;
    check-cast v10, Lcom/htc/android/mail/Mailbox;

    .line 4037
    .restart local v10       #toMailbox:Lcom/htc/android/mail/Mailbox;
    const-string v2, "MailMessageList"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4038
    const-string v2, "syncToRemote"

    const/4 v3, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 4039
    new-instance v11, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;

    invoke-direct {v11}, Lcom/htc/android/mail/eassvc/pim/EASMoveItems;-><init>()V

    .local v11, moveSvrItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    move-object v9, v5

    .line 4042
    invoke-virtual/range {v7 .. v12}, Lcom/htc/android/mail/database/LocalStore;->moveMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/eassvc/pim/EASMoveItems;Z)V

    .line 4043
    const-string v2, "EASMoveItems"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4054
    .end local v11           #moveSvrItems:Lcom/htc/android/mail/eassvc/pim/EASMoveItems;
    :goto_4
    sget-object v2, Lcom/htc/android/mail/AbsRequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    const-string v3, "DELETE"

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v38

    .line 4055
    .local v38, messageStatusDelete:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .restart local v33       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/htc/android/mail/MailMessage;

    .line 4056
    .restart local v35       #mailMessage:Lcom/htc/android/mail/MailMessage;
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/htc/android/mail/MailMessage;->id:J

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->updateLocalCompleted(J)V

    goto :goto_5

    .line 4045
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v35           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v38           #messageStatusDelete:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_10
    const-string v2, "FromMailbox"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8           #fromMailbox:Lcom/htc/android/mail/Mailbox;
    check-cast v8, Lcom/htc/android/mail/Mailbox;

    .line 4046
    .restart local v8       #fromMailbox:Lcom/htc/android/mail/Mailbox;
    const-string v2, "MailMessageList"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4047
    const-string v2, "ToMailbox"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .end local v10           #toMailbox:Lcom/htc/android/mail/Mailbox;
    check-cast v10, Lcom/htc/android/mail/Mailbox;

    .line 4050
    .restart local v10       #toMailbox:Lcom/htc/android/mail/Mailbox;
    invoke-virtual {v7, v8, v5, v10}, Lcom/htc/android/mail/database/LocalStore;->moveMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;Lcom/htc/android/mail/Mailbox;)V

    goto :goto_4

    .line 4067
    .restart local v33       #i$:Ljava/util/Iterator;
    .restart local v38       #messageStatusDelete:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_11
    iget v2, v8, Lcom/htc/android/mail/Mailbox;->kind:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->getCombinedboxId(I)J

    move-result-wide v26

    .line 4068
    .restart local v26       #combinedboxId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v26, v2

    if-eqz v2, :cond_12

    .line 4069
    const-wide v2, 0x7fffffffffffffffL

    const-string v4, "threadParent"

    move-wide/from16 v0, v26

    invoke-static {v2, v3, v0, v1, v4}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v44

    .line 4070
    .restart local v44       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mCResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$3100(Lcom/htc/android/mail/RequestController;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4074
    .end local v44           #uri:Landroid/net/Uri;
    :cond_12
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v14

    iget-wide v0, v8, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v16, v0

    const-string v18, "threadParent"

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v18}, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->notifyCombinedMailbox(JJLjava/lang/String;)V

    .line 4077
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    iget-wide v13, v10, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v2, v3, v13, v14}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v44

    .line 4078
    .restart local v44       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mCResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$3100(Lcom/htc/android/mail/RequestController;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4081
    iget v2, v10, Lcom/htc/android/mail/Mailbox;->kind:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->getCombinedboxId(I)J

    move-result-wide v26

    .line 4082
    const-wide/16 v2, -0x1

    cmp-long v2, v26, v2

    if-eqz v2, :cond_13

    .line 4083
    const-wide v2, 0x7fffffffffffffffL

    move-wide/from16 v0, v26

    invoke-static {v2, v3, v0, v1}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v44

    .line 4084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mCResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$3100(Lcom/htc/android/mail/RequestController;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4088
    :cond_13
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v14

    iget-wide v0, v10, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v18}, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->notifyCombinedMailbox(JJLjava/lang/String;)V

    .line 4090
    sget v2, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_16

    .line 4091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/NewMailNotification;->clearNotificationInLine(Landroid/content/Context;J)I

    .line 4097
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    iget-wide v3, v8, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, v25

    #calls: Lcom/htc/android/mail/RequestController;->clearSendErrorInOutbox(Lcom/htc/android/mail/Account;J)V
    invoke-static {v2, v0, v3, v4}, Lcom/htc/android/mail/RequestController;->access$3200(Lcom/htc/android/mail/RequestController;Lcom/htc/android/mail/Account;J)V

    .line 4100
    if-eqz v36, :cond_15

    .line 4101
    const-string v2, "messageIdArray"

    const/4 v3, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 4102
    sget-object v2, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v13

    move-object/from16 v0, v36

    invoke-virtual {v2, v3, v13, v14, v0}, Lcom/htc/android/mail/MailEventBroadcaster;->sendDeleteMailIntent(Landroid/content/Context;J[J)V

    .line 4104
    :cond_15
    if-nez v12, :cond_2

    goto/16 :goto_0

    .line 4092
    :cond_16
    sget v2, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 4093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V

    goto :goto_6

    .line 4110
    .end local v5           #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    .end local v8           #fromMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v10           #toMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v12           #syncToRemote:Z
    .end local v26           #combinedboxId:J
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v38           #messageStatusDelete:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    .end local v44           #uri:Landroid/net/Uri;
    :pswitch_5
    const-string v2, "IsOldDraft"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v34

    .line 4111
    .local v34, isOldDraft:Z
    const/4 v6, 0x0

    .line 4113
    .restart local v6       #mailbox:Lcom/htc/android/mail/Mailbox;
    if-nez v34, :cond_19

    .line 4114
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    .line 4115
    const-string v2, "Mailbox"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6           #mailbox:Lcom/htc/android/mail/Mailbox;
    check-cast v6, Lcom/htc/android/mail/Mailbox;

    .line 4116
    .restart local v6       #mailbox:Lcom/htc/android/mail/Mailbox;
    const-string v2, "MailMessageList"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4117
    .restart local v5       #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    const-string v2, "addToTracking"

    const/4 v3, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 4120
    .local v18, addToTracking:Ljava/lang/Boolean;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v16

    move-object v13, v7

    move-object v14, v6

    move-object v15, v5

    invoke-virtual/range {v13 .. v18}, Lcom/htc/android/mail/database/LocalStore;->deleteMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;JLjava/lang/Boolean;)V

    .line 4121
    const/16 v40, 0x1

    .line 4134
    .end local v18           #addToTracking:Ljava/lang/Boolean;
    :goto_7
    invoke-static {}, Lcom/htc/android/mail/RequestController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "RequestController"

    const-string v3, "[ATS][com.htc.android.mail][delete_mail][successful]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    :cond_17
    sget-object v2, Lcom/htc/android/mail/AbsRequestController;->mMessageStatusMap:Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;

    const-string v3, "DELETE"

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/AbsRequestController$MessageStatusMap;->get(Ljava/lang/String;)Lcom/htc/android/mail/AbsRequestController$MessageStatus;

    move-result-object v38

    .line 4138
    .restart local v38       #messageStatusDelete:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .restart local v33       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/htc/android/mail/MailMessage;

    .line 4139
    .restart local v35       #mailMessage:Lcom/htc/android/mail/MailMessage;
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/htc/android/mail/MailMessage;->id:J

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/AbsRequestController$MessageStatus;->updateLocalCompleted(J)V

    goto :goto_8

    .line 4123
    .end local v5           #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v35           #mailMessage:Lcom/htc/android/mail/MailMessage;
    .end local v38           #messageStatusDelete:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_18
    const-string v2, "Mailbox"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6           #mailbox:Lcom/htc/android/mail/Mailbox;
    check-cast v6, Lcom/htc/android/mail/Mailbox;

    .line 4124
    .restart local v6       #mailbox:Lcom/htc/android/mail/Mailbox;
    const-string v2, "MailMessageList"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4127
    .restart local v5       #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    invoke-virtual {v7, v6, v5}, Lcom/htc/android/mail/database/LocalStore;->deleteMailLocal(Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;)V

    goto :goto_7

    .line 4130
    .end local v5           #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    :cond_19
    const-string v2, "Mailbox"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6           #mailbox:Lcom/htc/android/mail/Mailbox;
    check-cast v6, Lcom/htc/android/mail/Mailbox;

    .line 4131
    .restart local v6       #mailbox:Lcom/htc/android/mail/Mailbox;
    const-string v2, "MailMessageList"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4132
    .restart local v5       #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v7, v2, v6, v5}, Lcom/htc/android/mail/database/LocalStore;->deleteOldDraftLocal(Landroid/content/Context;Lcom/htc/android/mail/Mailbox;Ljava/util/ArrayList;)V

    goto :goto_7

    .line 4158
    .restart local v33       #i$:Ljava/util/Iterator;
    .restart local v38       #messageStatusDelete:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    :cond_1a
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v20

    iget-wide v0, v6, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v22, v0

    const-string v24, "threadParent"

    move-object/from16 v19, p0

    invoke-direct/range {v19 .. v24}, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->notifyCombinedMailbox(JJLjava/lang/String;)V

    .line 4161
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/Mailboxs;->getTrashMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v43

    .line 4162
    .local v43, trashFolder:Lcom/htc/android/mail/Mailbox;
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    move-object/from16 v0, v43

    iget-wide v13, v0, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-static {v2, v3, v13, v14}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v44

    .line 4163
    .restart local v44       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mCResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$3100(Lcom/htc/android/mail/RequestController;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4166
    move-object/from16 v0, v43

    iget v2, v0, Lcom/htc/android/mail/Mailbox;->kind:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->getCombinedboxId(I)J

    move-result-wide v26

    .line 4167
    .restart local v26       #combinedboxId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v26, v2

    if-eqz v2, :cond_1b

    .line 4168
    const-wide v2, 0x7fffffffffffffffL

    move-wide/from16 v0, v26

    invoke-static {v2, v3, v0, v1}, Lcom/htc/android/mail/MailCommon;->getSummariesUri(JJ)Landroid/net/Uri;

    move-result-object v44

    .line 4169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mCResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$3100(Lcom/htc/android/mail/RequestController;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4173
    :cond_1b
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v20

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v19, p0

    invoke-direct/range {v19 .. v24}, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->notifyCombinedMailbox(JJLjava/lang/String;)V

    .line 4175
    sget v2, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    .line 4176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/NewMailNotification;->clearNotificationInLine(Landroid/content/Context;J)I

    .line 4182
    :cond_1c
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    iget-wide v3, v6, Lcom/htc/android/mail/Mailbox;->id:J

    move-object/from16 v0, v25

    #calls: Lcom/htc/android/mail/RequestController;->clearSendErrorInOutbox(Lcom/htc/android/mail/Account;J)V
    invoke-static {v2, v0, v3, v4}, Lcom/htc/android/mail/RequestController;->access$3200(Lcom/htc/android/mail/RequestController;Lcom/htc/android/mail/Account;J)V

    .line 4185
    if-eqz v36, :cond_2

    .line 4186
    const-string v2, "messageIdArray"

    const/4 v3, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 4187
    sget-object v2, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v13

    move-object/from16 v0, v36

    invoke-virtual {v2, v3, v13, v14, v0}, Lcom/htc/android/mail/MailEventBroadcaster;->sendDeleteMailIntent(Landroid/content/Context;J[J)V

    goto/16 :goto_1

    .line 4177
    :cond_1d
    sget v2, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 4178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V

    goto :goto_9

    .line 4192
    .end local v5           #mailMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/MailMessage;>;"
    .end local v6           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v26           #combinedboxId:J
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v34           #isOldDraft:Z
    .end local v38           #messageStatusDelete:Lcom/htc/android/mail/AbsRequestController$MessageStatus;
    .end local v43           #trashFolder:Lcom/htc/android/mail/Mailbox;
    .end local v44           #uri:Landroid/net/Uri;
    :pswitch_6
    const-string v2, "Mailbox"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/Mailbox;

    .line 4193
    .restart local v6       #mailbox:Lcom/htc/android/mail/Mailbox;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$1200(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v21

    iget-wide v0, v6, Lcom/htc/android/mail/Mailbox;->id:J

    move-wide/from16 v23, v0

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v24}, Lcom/htc/android/mail/database/LocalStore;->emptyMailbox(Landroid/content/Context;JJ)V

    goto/16 :goto_1

    .line 4209
    .end local v6           #mailbox:Lcom/htc/android/mail/Mailbox;
    .end local v7           #localStore:Lcom/htc/android/mail/database/LocalStore;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$UpdateMailHandler;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mMainRequestQueueThread:Lcom/htc/android/mail/RequestController$MainRequestQueueThread;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$2000(Lcom/htc/android/mail/RequestController;)Lcom/htc/android/mail/RequestController$MainRequestQueueThread;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Lcom/htc/android/mail/RequestController$MainRequestQueueThread;->addRequest(Lcom/htc/android/mail/Request;)V

    goto/16 :goto_0

    .line 3892
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
