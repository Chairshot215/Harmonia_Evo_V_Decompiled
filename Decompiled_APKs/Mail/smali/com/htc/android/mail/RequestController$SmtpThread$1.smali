.class Lcom/htc/android/mail/RequestController$SmtpThread$1;
.super Ljava/lang/Object;
.source "RequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/RequestController$SmtpThread;->sendAllMail(Lcom/htc/android/mail/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/RequestController$SmtpThread;

.field final synthetic val$account:Lcom/htc/android/mail/Account;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/RequestController$SmtpThread;Lcom/htc/android/mail/Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1876
    iput-object p1, p0, Lcom/htc/android/mail/RequestController$SmtpThread$1;->this$1:Lcom/htc/android/mail/RequestController$SmtpThread;

    iput-object p2, p0, Lcom/htc/android/mail/RequestController$SmtpThread$1;->val$account:Lcom/htc/android/mail/Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1878
    const/4 v13, 0x0

    .line 1879
    .local v13, c:Landroid/database/Cursor;
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1880
    const-string v1, "RequestController"

    const-string v2, "enter sendAllMail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    const/4 v15, 0x0

    .line 1883
    .local v15, mailWithZeroRetryCount:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/RequestController$SmtpThread$1;->val$account:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getMessageTableName()Ljava/lang/String;

    move-result-object v17

    .line 1885
    .local v17, table:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/RequestController$SmtpThread$1;->val$account:Lcom/htc/android/mail/Account;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/RequestController$SmtpThread$1;->this$1:Lcom/htc/android/mail/RequestController$SmtpThread;

    iget-object v2, v2, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/Account;->getSqlWhereForSendingMail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1886
    .local v4, where:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const-string v9, "_account"

    aput-object v9, v3, v8

    const/4 v8, 0x2

    const-string v9, "_retryCount"

    aput-object v9, v3, v8

    const/4 v5, 0x0

    const-string v6, "_id desc"

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1888
    if-eqz v13, :cond_2

    .line 1891
    const/4 v10, 0x0

    .line 1892
    .local v10, retryCount:I
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1893
    const-string v1, "_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1894
    .local v6, messageId:J
    const-string v1, "_account"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1895
    .local v11, accountId:J
    const-string v1, "_retryCount"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1896
    if-nez v10, :cond_0

    .line 1897
    const/4 v15, 0x1

    .line 1898
    goto :goto_0

    .line 1900
    :cond_0
    new-instance v5, Lcom/htc/android/mail/MailMessage;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/htc/android/mail/MailMessage;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 1901
    .local v5, message:Lcom/htc/android/mail/MailMessage;
    invoke-virtual {v5, v11, v12}, Lcom/htc/android/mail/MailMessage;->setAccountId(J)V

    .line 1902
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/RequestController$SmtpThread$1;->this$1:Lcom/htc/android/mail/RequestController$SmtpThread;

    invoke-virtual {v1, v5}, Lcom/htc/android/mail/RequestController$SmtpThread;->addMessage(Lcom/htc/android/mail/MailMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1910
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #message:Lcom/htc/android/mail/MailMessage;
    .end local v6           #messageId:J
    .end local v10           #retryCount:I
    .end local v11           #accountId:J
    .end local v17           #table:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 1911
    .local v14, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "RequestController"

    const-string v2, "catch remote exception"

    invoke-static {v1, v2, v14}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1913
    if-eqz v13, :cond_1

    .end local v14           #e:Landroid/os/RemoteException;
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1915
    :cond_1
    return-void

    .line 1906
    .restart local v4       #where:Ljava/lang/String;
    .restart local v17       #table:Ljava/lang/String;
    :cond_2
    if-eqz v15, :cond_3

    .line 1907
    :try_start_2
    new-instance v16, Lcom/htc/android/mail/SendErrorNotification;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/RequestController$SmtpThread$1;->this$1:Lcom/htc/android/mail/RequestController$SmtpThread;

    iget-object v1, v1, Lcom/htc/android/mail/RequestController$SmtpThread;->this$0:Lcom/htc/android/mail/RequestController;

    #getter for: Lcom/htc/android/mail/RequestController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/android/mail/RequestController;->access$300(Lcom/htc/android/mail/RequestController;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 1908
    .local v16, sendNotify:Lcom/htc/android/mail/SendErrorNotification;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/RequestController$SmtpThread$1;->val$account:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/SendErrorNotification;->showNotification(JI)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1913
    .end local v16           #sendNotify:Lcom/htc/android/mail/SendErrorNotification;
    :cond_3
    if-eqz v13, :cond_1

    goto :goto_1

    .end local v4           #where:Ljava/lang/String;
    .end local v17           #table:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method
