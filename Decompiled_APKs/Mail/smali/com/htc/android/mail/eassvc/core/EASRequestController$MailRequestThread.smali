.class Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;
.super Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;
.source "EASRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailRequestThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;)V
    .locals 1
    .parameter
    .parameter "syncManager"

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    .line 1693
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;I)V

    .line 1695
    return-void
.end method


# virtual methods
.method public check_ResendMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 21
    .parameter "exSyncSources"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1913
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v5, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    .line 1914
    .local v5, accountId:J
    const/16 v16, 0x0

    .line 1915
    .local v16, unsendMailAry:[Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Lcom/htc/android/mail/eassvc/mail/MailSender;->getUnSendMail(JLandroid/content/ContentResolver;)[Ljava/lang/Long;

    move-result-object v16

    .line 1916
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 1917
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "EASRequestController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "check_ResendMail: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1918
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v5, v6, v0}, Lcom/htc/android/mail/database/ExchangeUtil;->getOutboxId(JLandroid/content/ContentResolver;)J

    move-result-wide v11

    .line 1919
    .local v11, mailboxId:J
    move-object/from16 v7, v16

    .local v7, arr$:[Ljava/lang/Long;
    array-length v10, v7

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v15, v7, v9

    .line 1920
    .local v15, unSend:Ljava/lang/Long;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1921
    .local v8, bundle:Landroid/os/Bundle;
    const-string v17, "id"

    invoke-virtual {v15}, Ljava/lang/Long;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1922
    const-string v17, "account"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1923
    const-string v17, "mailboxId"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v17, v0

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lcom/htc/android/mail/eassvc/mail/MailSender;->getSendMailItem(Landroid/os/Bundle;Landroid/content/Context;)Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;

    move-result-object v14

    .line 1925
    .local v14, sendItem:Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;
    if-nez v14, :cond_1

    .line 1919
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1926
    :cond_1
    iget v0, v14, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->meetingResp:I

    move/from16 v17, v0

    iget-object v0, v14, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/mail/MailSender;->encapsulateSendMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;ILcom/htc/android/mail/eassvc/pim/EASMailSendItem;ZZ)Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-result-object v13

    .line 1927
    .local v13, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_1

    .line 1930
    .end local v7           #arr$:[Ljava/lang/Long;
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #mailboxId:J
    .end local v13           #request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    .end local v14           #sendItem:Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;
    .end local v15           #unSend:Ljava/lang/Long;
    :cond_2
    return-void
.end method

.method public check_emptyFolderContents(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 9
    .parameter "exSyncSources"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 1933
    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    .line 1934
    .local v0, accountId:J
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/htc/android/mail/database/ExchangeUtil;->getDeleteboxSvrId(JLandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 1935
    .local v3, collId:Ljava/lang/String;
    iget-object v5, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v5, v3}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getEmptyFolderCommand(Ljava/lang/String;)Z

    move-result v2

    .line 1936
    .local v2, cmd:Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    .line 1937
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "EASRequestController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check_emptyFolderContents: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1938
    :cond_0
    new-instance v4, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v4}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 1939
    .local v4, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 1940
    iput v8, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 1941
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$1200(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v5

    iget-wide v6, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1942
    const/16 v5, 0x39

    iput v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 1943
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 1944
    iget-object v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v6, "parameter.collection_id"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    iget-object v5, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v6, "parameter.mail.empty_subfolders"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1946
    iput v8, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1947
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v5, v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1949
    .end local v4           #request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    :cond_1
    return-void
.end method

.method public check_meetingResp(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 10
    .parameter "exSyncSources"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 1882
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    .line 1883
    .local v0, accountId:J
    const/4 v4, 0x0

    .line 1884
    .local v4, meetingRespList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;>;"
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v6}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getMeetingResp()Ljava/util/ArrayList;

    move-result-object v4

    .line 1885
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1886
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "EASRequestController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check_meetingResp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p1, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1887
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;

    .line 1888
    .local v3, item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;
    new-instance v5, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v5}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>()V

    .line 1889
    .local v5, request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-wide v0, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    .line 1890
    iput v9, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->syncSourceType:I

    .line 1891
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;
    invoke-static {v6}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$1200(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v6

    iget-wide v7, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-virtual {v6, v7, v8}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1892
    const/16 v6, 0x33

    iput v6, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    .line 1893
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 1894
    iget-object v6, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v7, "parameter.collection_id"

    iget-object v8, v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;->collId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    iget-object v6, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v7, "parameter.mail.message_uid"

    iget-object v8, v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;->requestId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    iget-object v6, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v7, "parameter.mail.meetingResp.cmd"

    iget v8, v3, Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;->meetResp:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1897
    iput v9, v5, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1898
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-virtual {v6, v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0

    .line 1901
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/htc/android/mail/eassvc/common/EASSyncCommon$EASMeetingResp;
    .end local v5           #request:Lcom/htc/android/mail/eassvc/core/EASRequest;
    :cond_1
    return-void
.end method

.method public check_showSendMailErrNotification(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V
    .locals 7
    .parameter "exSyncSources"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1904
    iget-object v3, p1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v0, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    .line 1905
    .local v0, accountId:J
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/htc/android/mail/eassvc/mail/MailSender;->getSentFailedMail(JILandroid/content/ContentResolver;)[Ljava/lang/Long;

    move-result-object v2

    .line 1906
    .local v2, list:[Ljava/lang/Long;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 1907
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "EASRequestController"

    const-string v4, "check_showSendMailErrNotification"

    invoke-static {v3, v0, v1, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1908
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    iget-wide v4, v4, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->broadcastSendMailFailedNotification(Landroid/content/Context;JI)V

    .line 1910
    :cond_1
    return-void
.end method

.method public run()V
    .locals 31

    .prologue
    .line 1698
    const/4 v15, 0x0

    .line 1699
    .local v15, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    const/16 v25, 0x0

    .line 1700
    .local v25, syncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;
    const/16 v23, 0x0

    .line 1701
    .local v23, stopRunning:Z
    const/4 v5, 0x0

    .line 1702
    .local v5, bNeedRetry:Z
    const/4 v6, 0x1

    .line 1703
    .local v6, bUpdateInfo:Z
    const/16 v24, 0x1

    .line 1704
    .local v24, syncResult:I
    const/4 v14, 0x0

    .line 1705
    .local v14, errorCode:I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mIsStop:Z

    move/from16 v26, v0

    if-nez v26, :cond_2

    .line 1706
    const/4 v8, 0x0

    .line 1707
    .local v8, collIdList:[Ljava/lang/String;
    const/4 v6, 0x1

    .line 1708
    const/4 v5, 0x0

    .line 1709
    const/16 v24, 0x1

    .line 1710
    const/4 v14, 0x0

    .line 1712
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v15, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1714
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v25, v0

    .line 1715
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->resetCancelFlag()V

    .line 1716
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v26

    if-eqz v26, :cond_0

    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "> "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v15, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1718
    :cond_0
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->beginSync()V

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncStartAfter(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 1722
    :cond_1
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    invoke-virtual {v15}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->isPasswordSufficient()Z

    move-result v26

    if-nez v26, :cond_3

    .line 1723
    new-instance v26, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v27, 0x400

    const-string v28, "Device password expiration."

    invoke-direct/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1793
    :catch_0
    move-exception v13

    .line 1794
    .local v13, err:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1795
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " get a OutOfMemoryError!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1796
    const/16 v24, 0x1

    .line 1797
    const/16 v14, 0x32a

    .line 1817
    if-eqz v23, :cond_1a

    .line 1879
    .end local v8           #collIdList:[Ljava/lang/String;
    .end local v13           #err:Ljava/lang/OutOfMemoryError;
    :cond_2
    return-void

    .line 1725
    .restart local v8       #collIdList:[Ljava/lang/String;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v26

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->aggregateProvisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->checkPolicySufficient(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move/from16 v26, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    packed-switch v26, :pswitch_data_0

    .line 1817
    :goto_1
    :pswitch_0
    if-nez v23, :cond_2

    .line 1820
    if-nez v15, :cond_57

    .line 1821
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! ExchangeSyncSources is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    :goto_2
    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1728
    :pswitch_1
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->isEnabled()Z

    move-result v26

    if-nez v26, :cond_5

    .line 1729
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v26

    if-eqz v26, :cond_4

    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "> "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": syncSource is not enabled, stop this sync. "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getType()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v15, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1730
    :cond_4
    const/4 v6, 0x0

    .line 1817
    if-nez v23, :cond_2

    .line 1820
    if-nez v15, :cond_4d

    .line 1821
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! ExchangeSyncSources is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_2

    .line 1733
    :cond_5
    :try_start_4
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setCheckPoint()V

    .line 1734
    const/16 v18, 0x0

    .line 1735
    .local v18, isDirectpush:Z
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->LOCK:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1736
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->folderSynckey:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1737
    .local v17, folderSynckey:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_6

    const-string v26, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 1738
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/SyncManager;->updateEASFolderHierarchy(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)I

    .line 1740
    :cond_7
    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1741
    :try_start_6
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setCheckPoint()V

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "parameter.collection_id"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1744
    .local v7, collId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "parameter.current_mailbox_id"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 1745
    .local v19, mailboxId:J
    const-wide/16 v26, 0x0

    cmp-long v26, v19, v26

    if-eqz v26, :cond_8

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v26

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v27, v0

    invoke-static/range {v26 .. v28}, Lcom/htc/android/mail/AccountPool$Proxy;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v4

    .line 1747
    .local v4, account:Lcom/htc/android/mail/Account;
    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v21

    .line 1748
    .local v21, mailboxs:Lcom/htc/android/mail/Mailboxs;
    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v11

    .line 1749
    .local v11, curMailbox:Lcom/htc/android/mail/Mailbox;
    iget-object v7, v11, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    .line 1751
    .end local v4           #account:Lcom/htc/android/mail/Account;
    .end local v11           #curMailbox:Lcom/htc/android/mail/Mailbox;
    .end local v21           #mailboxs:Lcom/htc/android/mail/Mailboxs;
    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_b

    .line 1752
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v9, v0, [Ljava/lang/String;

    const/16 v26, 0x0

    aput-object v7, v9, v26

    .end local v8           #collIdList:[Ljava/lang/String;
    .local v9, collIdList:[Ljava/lang/String;
    move-object v8, v9

    .line 1760
    .end local v9           #collIdList:[Ljava/lang/String;
    .restart local v8       #collIdList:[Ljava/lang/String;
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "extra.isDirectpush"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 1764
    .end local v7           #collId:Ljava/lang/String;
    .end local v19           #mailboxId:J
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->check_meetingResp(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 1766
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->check_emptyFolderContents(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 1768
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->check_showSendMailErrNotification(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 1770
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->check_ResendMail(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)V

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v15, v8, v1, v2}, Lcom/htc/android/mail/eassvc/core/SyncManager;->doSync(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;[Ljava/lang/String;ZLcom/htc/android/mail/eassvc/core/EASRequest;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1773
    const/16 v24, 0x0

    .line 1774
    goto/16 :goto_1

    .line 1740
    .end local v17           #folderSynckey:Ljava/lang/String;
    :catchall_0
    move-exception v26

    :try_start_7
    monitor-exit v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1798
    .end local v18           #isDirectpush:Z
    :catch_1
    move-exception v12

    .line 1799
    .local v12, e:Ljava/lang/InterruptedException;
    :try_start_9
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ":stop running"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v15, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1800
    const/16 v23, 0x1

    .line 1817
    if-nez v23, :cond_2

    .line 1820
    if-nez v15, :cond_25

    .line 1821
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! ExchangeSyncSources is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_2

    .line 1754
    .end local v12           #e:Ljava/lang/InterruptedException;
    .restart local v7       #collId:Ljava/lang/String;
    .restart local v17       #folderSynckey:Ljava/lang/String;
    .restart local v18       #isDirectpush:Z
    .restart local v19       #mailboxId:J
    :cond_b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v27, "parameter.collection_id_list"

    invoke-virtual/range {v26 .. v27}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1755
    if-nez v8, :cond_9

    .line 1756
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getDefaultSyncMailbox()[Ljava/lang/String;

    move-result-object v8

    .line 1757
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "COMMAND_DO_SYNC(): getDefaultSyncMailbox - "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v15, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_3

    .line 1801
    .end local v7           #collId:Ljava/lang/String;
    .end local v17           #folderSynckey:Ljava/lang/String;
    .end local v18           #isDirectpush:Z
    .end local v19           #mailboxId:J
    :catch_2
    move-exception v12

    .line 1802
    .local v12, e:Ljava/lang/Exception;
    :try_start_b
    const-string v26, "EASRequestController"

    move-object/from16 v0, v26

    invoke-static {v0, v15, v12}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/Exception;)V

    .line 1803
    if-nez v15, :cond_e

    .line 1804
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! ExchangeSyncSources is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1817
    if-nez v23, :cond_2

    .line 1820
    if-nez v15, :cond_2f

    .line 1821
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! ExchangeSyncSources is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_2

    .line 1776
    .end local v12           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_c
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->LOCK:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 1777
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    move-object/from16 v26, v0

    const-string v28, "parameter.update_sync_info"

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1780
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/eassvc/core/SyncManager;->updateEASFolderHierarchy(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)I

    move-result v10

    .line 1781
    .local v10, count:I
    if-lez v10, :cond_d

    .line 1782
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 1783
    .local v22, msg:Landroid/os/Message;
    const/16 v26, 0x202

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1784
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1785
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v28, "accountId"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v29, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 1788
    .end local v22           #msg:Landroid/os/Message;
    :cond_d
    monitor-exit v27

    .line 1789
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1788
    .end local v10           #count:I
    :catchall_1
    move-exception v26

    monitor-exit v27
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v26
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 1817
    :catchall_2
    move-exception v26

    if-nez v23, :cond_2

    .line 1820
    if-nez v15, :cond_11

    .line 1821
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! ExchangeSyncSources is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_2

    .line 1807
    .restart local v12       #e:Ljava/lang/Exception;
    :cond_e
    if-nez v25, :cond_f

    .line 1808
    :try_start_f
    const-string v26, "EASRequestController"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Error! syncSource is null."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1817
    if-nez v23, :cond_2

    .line 1820
    if-nez v15, :cond_39

    .line 1821
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! ExchangeSyncSources is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_2

    .line 1812
    :cond_f
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->handleException(Ljava/lang/Exception;Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;Lcom/htc/android/mail/eassvc/core/SyncSource;)Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;

    move-result-object v16

    .line 1813
    .local v16, exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    move-object/from16 v0, v16

    iget v14, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->errorCode:I

    .line 1814
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    move/from16 v24, v0

    .line 1815
    move-object/from16 v0, v16

    iget-boolean v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->needRetry:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1817
    if-nez v23, :cond_2

    .line 1820
    if-nez v15, :cond_43

    .line 1821
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! ExchangeSyncSources is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_2

    .line 1870
    .end local v12           #e:Ljava/lang/Exception;
    .end local v16           #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    :catch_3
    move-exception v12

    .line 1871
    .restart local v12       #e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 1874
    .end local v12           #e:Ljava/lang/Exception;
    :cond_10
    :goto_4
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->resetCancelFlag()V

    .line 1875
    const/4 v15, 0x0

    .line 1876
    const/16 v25, 0x0

    .line 1817
    throw v26

    .line 1824
    :cond_11
    if-nez v25, :cond_12

    .line 1825
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! SyncSource is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    :goto_5
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v15, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1828
    :cond_12
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseHttpClient()V

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v27, v0

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v27

    if-nez v27, :cond_13

    .line 1830
    invoke-virtual {v15}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1832
    :cond_13
    if-nez v24, :cond_18

    .line 1840
    :goto_6
    if-eqz v5, :cond_14

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v27, v0

    const/16 v28, 0x5

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1844
    :cond_14
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->endSync(IZ)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v27, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1846
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v27

    if-eqz v27, :cond_15

    const-string v27, "EASRequestController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "< "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ": "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v15, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1847
    :cond_15
    if-nez v5, :cond_16

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v27, v0

    if-eqz v27, :cond_16

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/ConditionVariable;->open()V

    .line 1854
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1856
    const/16 v28, 0x0

    :try_start_11
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1857
    monitor-exit v27
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1859
    if-eqz v8, :cond_17

    array-length v0, v8

    move/from16 v27, v0

    if-lez v27, :cond_17

    .line 1860
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 1861
    .restart local v22       #msg:Landroid/os/Message;
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1862
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1863
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v27

    const-string v28, "collId"

    array-length v0, v8

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    aget-object v29, v8, v29

    invoke-virtual/range {v27 .. v29}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v27

    const-string v28, "accountId"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v29, v0

    invoke-virtual/range {v27 .. v30}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 1867
    .end local v22           #msg:Landroid/os/Message;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 1869
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-interface {v0, v15, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    goto/16 :goto_4

    .line 1834
    :cond_18
    const/16 v27, -0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    .line 1835
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto/16 :goto_6

    .line 1837
    :cond_19
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1838
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_6

    .line 1857
    :catchall_3
    move-exception v26

    :try_start_13
    monitor-exit v27
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    throw v26

    .line 1820
    .restart local v13       #err:Ljava/lang/OutOfMemoryError;
    :cond_1a
    if-nez v15, :cond_1b

    .line 1821
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! ExchangeSyncSources is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_2

    .line 1824
    :cond_1b
    if-nez v25, :cond_1c

    .line 1825
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! SyncSource is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_5

    .line 1828
    :cond_1c
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseHttpClient()V

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v26

    if-nez v26, :cond_1d

    .line 1830
    invoke-virtual {v15}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1832
    :cond_1d
    if-nez v24, :cond_23

    .line 1840
    :goto_7
    if-eqz v5, :cond_1e

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1844
    :cond_1e
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->endSync(IZ)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1846
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v26

    if-eqz v26, :cond_1f

    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "< "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v15, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1847
    :cond_1f
    if-nez v5, :cond_20

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_20

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/ConditionVariable;->open()V

    .line 1854
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1856
    const/16 v26, 0x0

    :try_start_14
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1857
    monitor-exit v27
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 1859
    if-eqz v8, :cond_21

    array-length v0, v8

    move/from16 v26, v0

    if-lez v26, :cond_21

    .line 1860
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 1861
    .restart local v22       #msg:Landroid/os/Message;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1862
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1863
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "collId"

    array-length v0, v8

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aget-object v28, v8, v28

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "accountId"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 1867
    .end local v22           #msg:Landroid/os/Message;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_22

    .line 1869
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v15, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    .line 1874
    :cond_22
    :goto_8
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->resetCancelFlag()V

    .line 1875
    .end local v13           #err:Ljava/lang/OutOfMemoryError;
    :goto_9
    const/4 v15, 0x0

    .line 1876
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1834
    .restart local v13       #err:Ljava/lang/OutOfMemoryError;
    :cond_23
    const/16 v26, -0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_24

    .line 1835
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto/16 :goto_7

    .line 1837
    :cond_24
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1838
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_7

    .line 1857
    :catchall_4
    move-exception v26

    :try_start_16
    monitor-exit v27
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v26

    .line 1870
    :catch_4
    move-exception v12

    .line 1871
    .restart local v12       #e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 1824
    .end local v13           #err:Ljava/lang/OutOfMemoryError;
    .local v12, e:Ljava/lang/InterruptedException;
    :cond_25
    if-nez v25, :cond_26

    .line 1825
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! SyncSource is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_5

    .line 1828
    :cond_26
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseHttpClient()V

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v26

    if-nez v26, :cond_27

    .line 1830
    invoke-virtual {v15}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1832
    :cond_27
    if-nez v24, :cond_2d

    .line 1840
    :goto_a
    if-eqz v5, :cond_28

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1844
    :cond_28
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->endSync(IZ)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1846
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v26

    if-eqz v26, :cond_29

    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "< "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v15, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1847
    :cond_29
    if-nez v5, :cond_2a

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2a

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/ConditionVariable;->open()V

    .line 1854
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1856
    const/16 v26, 0x0

    :try_start_17
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1857
    monitor-exit v27
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 1859
    if-eqz v8, :cond_2b

    array-length v0, v8

    move/from16 v26, v0

    if-lez v26, :cond_2b

    .line 1860
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 1861
    .restart local v22       #msg:Landroid/os/Message;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1862
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1863
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "collId"

    array-length v0, v8

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aget-object v28, v8, v28

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "accountId"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 1867
    .end local v22           #msg:Landroid/os/Message;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2c

    .line 1869
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v15, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5

    .line 1874
    .end local v12           #e:Ljava/lang/InterruptedException;
    :cond_2c
    :goto_b
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->resetCancelFlag()V

    goto/16 :goto_9

    .line 1834
    .restart local v12       #e:Ljava/lang/InterruptedException;
    :cond_2d
    const/16 v26, -0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_2e

    .line 1835
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto/16 :goto_a

    .line 1837
    :cond_2e
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1838
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_a

    .line 1857
    :catchall_5
    move-exception v26

    :try_start_19
    monitor-exit v27
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    throw v26

    .line 1870
    :catch_5
    move-exception v12

    .line 1871
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 1824
    :cond_2f
    if-nez v25, :cond_30

    .line 1825
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! SyncSource is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_5

    .line 1828
    :cond_30
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseHttpClient()V

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v26

    if-nez v26, :cond_31

    .line 1830
    invoke-virtual {v15}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1832
    :cond_31
    if-nez v24, :cond_37

    .line 1840
    :goto_c
    if-eqz v5, :cond_32

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1844
    :cond_32
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->endSync(IZ)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1846
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v26

    if-eqz v26, :cond_33

    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "< "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v15, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1847
    :cond_33
    if-nez v5, :cond_34

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_34

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/ConditionVariable;->open()V

    .line 1854
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1856
    const/16 v26, 0x0

    :try_start_1a
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1857
    monitor-exit v27
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 1859
    if-eqz v8, :cond_35

    array-length v0, v8

    move/from16 v26, v0

    if-lez v26, :cond_35

    .line 1860
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 1861
    .restart local v22       #msg:Landroid/os/Message;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1862
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1863
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "collId"

    array-length v0, v8

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aget-object v28, v8, v28

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "accountId"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 1867
    .end local v22           #msg:Landroid/os/Message;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_36

    .line 1869
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v15, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6

    .line 1874
    :cond_36
    :goto_d
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->resetCancelFlag()V

    goto/16 :goto_9

    .line 1834
    :cond_37
    const/16 v26, -0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_38

    .line 1835
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto/16 :goto_c

    .line 1837
    :cond_38
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1838
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_c

    .line 1857
    :catchall_6
    move-exception v26

    :try_start_1c
    monitor-exit v27
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    throw v26

    .line 1870
    :catch_6
    move-exception v12

    .line 1871
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 1824
    :cond_39
    if-nez v25, :cond_3a

    .line 1825
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! SyncSource is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_5

    .line 1828
    :cond_3a
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseHttpClient()V

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v26

    if-nez v26, :cond_3b

    .line 1830
    invoke-virtual {v15}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1832
    :cond_3b
    if-nez v24, :cond_41

    .line 1840
    :goto_e
    if-eqz v5, :cond_3c

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1844
    :cond_3c
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->endSync(IZ)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1846
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v26

    if-eqz v26, :cond_3d

    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "< "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v15, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1847
    :cond_3d
    if-nez v5, :cond_3e

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3e

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/ConditionVariable;->open()V

    .line 1854
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1856
    const/16 v26, 0x0

    :try_start_1d
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1857
    monitor-exit v27
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    .line 1859
    if-eqz v8, :cond_3f

    array-length v0, v8

    move/from16 v26, v0

    if-lez v26, :cond_3f

    .line 1860
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 1861
    .restart local v22       #msg:Landroid/os/Message;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1862
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1863
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "collId"

    array-length v0, v8

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aget-object v28, v8, v28

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "accountId"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 1867
    .end local v22           #msg:Landroid/os/Message;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_40

    .line 1869
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v15, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_7

    .line 1874
    :cond_40
    :goto_f
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->resetCancelFlag()V

    goto/16 :goto_9

    .line 1834
    :cond_41
    const/16 v26, -0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_42

    .line 1835
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto/16 :goto_e

    .line 1837
    :cond_42
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1838
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_e

    .line 1857
    :catchall_7
    move-exception v26

    :try_start_1f
    monitor-exit v27
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    throw v26

    .line 1870
    :catch_7
    move-exception v12

    .line 1871
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 1824
    .restart local v16       #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    :cond_43
    if-nez v25, :cond_44

    .line 1825
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! SyncSource is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_5

    .line 1828
    :cond_44
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseHttpClient()V

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v26

    if-nez v26, :cond_45

    .line 1830
    invoke-virtual {v15}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1832
    :cond_45
    if-nez v24, :cond_4b

    .line 1840
    :goto_10
    if-eqz v5, :cond_46

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1844
    :cond_46
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->endSync(IZ)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1846
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v26

    if-eqz v26, :cond_47

    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "< "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v15, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1847
    :cond_47
    if-nez v5, :cond_48

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_48

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/ConditionVariable;->open()V

    .line 1854
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1856
    const/16 v26, 0x0

    :try_start_20
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1857
    monitor-exit v27
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 1859
    if-eqz v8, :cond_49

    array-length v0, v8

    move/from16 v26, v0

    if-lez v26, :cond_49

    .line 1860
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 1861
    .restart local v22       #msg:Landroid/os/Message;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1862
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1863
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "collId"

    array-length v0, v8

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aget-object v28, v8, v28

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "accountId"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 1867
    .end local v22           #msg:Landroid/os/Message;
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4a

    .line 1869
    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v15, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8

    .line 1874
    :cond_4a
    :goto_11
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->resetCancelFlag()V

    goto/16 :goto_9

    .line 1834
    :cond_4b
    const/16 v26, -0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_4c

    .line 1835
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto/16 :goto_10

    .line 1837
    :cond_4c
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1838
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_10

    .line 1857
    :catchall_8
    move-exception v26

    :try_start_22
    monitor-exit v27
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    throw v26

    .line 1870
    :catch_8
    move-exception v12

    .line 1871
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    .line 1824
    .end local v12           #e:Ljava/lang/Exception;
    .end local v16           #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    :cond_4d
    if-nez v25, :cond_4e

    .line 1825
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! SyncSource is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_5

    .line 1828
    :cond_4e
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseHttpClient()V

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v26

    if-nez v26, :cond_4f

    .line 1830
    invoke-virtual {v15}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1832
    :cond_4f
    if-nez v24, :cond_55

    .line 1840
    :goto_12
    if-eqz v5, :cond_50

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1844
    :cond_50
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->endSync(IZ)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1846
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v26

    if-eqz v26, :cond_51

    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "< "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v15, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1847
    :cond_51
    if-nez v5, :cond_52

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_52

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/ConditionVariable;->open()V

    .line 1854
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1856
    const/16 v26, 0x0

    :try_start_23
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1857
    monitor-exit v27
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .line 1859
    if-eqz v8, :cond_53

    array-length v0, v8

    move/from16 v26, v0

    if-lez v26, :cond_53

    .line 1860
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 1861
    .restart local v22       #msg:Landroid/os/Message;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1862
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1863
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "collId"

    array-length v0, v8

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aget-object v28, v8, v28

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "accountId"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 1867
    .end local v22           #msg:Landroid/os/Message;
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_54

    .line 1869
    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v15, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_9

    .line 1874
    :cond_54
    :goto_13
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->resetCancelFlag()V

    goto/16 :goto_9

    .line 1834
    :cond_55
    const/16 v26, -0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_56

    .line 1835
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto/16 :goto_12

    .line 1837
    :cond_56
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1838
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_12

    .line 1857
    :catchall_9
    move-exception v26

    :try_start_25
    monitor-exit v27
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    throw v26

    .line 1870
    :catch_9
    move-exception v12

    .line 1871
    .restart local v12       #e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 1824
    .end local v12           #e:Ljava/lang/Exception;
    :cond_57
    if-nez v25, :cond_58

    .line 1825
    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Error! SyncSource is null."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_5

    .line 1828
    :cond_58
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->releaseHttpClient()V

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isAccountBusy(J)Z

    move-result v26

    if-nez v26, :cond_59

    .line 1830
    invoke-virtual {v15}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1832
    :cond_59
    if-nez v24, :cond_5f

    .line 1840
    :goto_14
    if-eqz v5, :cond_5a

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->priority:I

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1844
    :cond_5a
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1, v6}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->endSync(IZ)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1846
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v26

    if-eqz v26, :cond_5b

    const-string v26, "EASRequestController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "< "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v15, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1847
    :cond_5b
    if-nez v5, :cond_5c

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5c

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->blockCondition:Landroid/os/ConditionVariable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/ConditionVariable;->open()V

    .line 1854
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mSyncObject:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1856
    const/16 v26, 0x0

    :try_start_26
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRunningRequest:Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 1857
    monitor-exit v27
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    .line 1859
    if-eqz v8, :cond_5d

    array-length v0, v8

    move/from16 v26, v0

    if-lez v26, :cond_5d

    .line 1860
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 1861
    .restart local v22       #msg:Landroid/os/Message;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->what:I

    .line 1862
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1863
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "collId"

    array-length v0, v8

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aget-object v28, v8, v28

    invoke-virtual/range {v26 .. v28}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v26

    const-string v27, "accountId"

    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$MailRequestThread;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 1867
    .end local v22           #msg:Landroid/os/Message;
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5e

    .line 1869
    :try_start_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$BaseRequestThread;->mRequestListener:Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v15, v1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;->syncEnd(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/SyncSource;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_a

    .line 1874
    :cond_5e
    :goto_15
    invoke-virtual/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->resetCancelFlag()V

    goto/16 :goto_9

    .line 1834
    :cond_5f
    const/16 v26, -0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_60

    .line 1835
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    goto/16 :goto_14

    .line 1837
    :cond_60
    iget-object v0, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->syncSuccessChecker:Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/eassvc/util/SyncSuccessChecker;->markAsFail(Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 1838
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->setLastSyncErrorCode(I)V

    goto/16 :goto_14

    .line 1857
    :catchall_a
    move-exception v26

    :try_start_28
    monitor-exit v27
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    throw v26

    .line 1870
    :catch_a
    move-exception v12

    .line 1871
    .restart local v12       #e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 1726
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
