.class Lcom/htc/android/mail/mailservice/EASNotification$1;
.super Ljava/lang/Object;
.source "EASNotification.java"

# interfaces
.implements Lcom/htc/android/mail/eassvc/util/ThreadHandler$ThreadAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/EASNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/mailservice/EASNotification;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/mailservice/EASNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 38
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/content/Intent;

    .line 39
    .local v13, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    const-string v3, "accountId"

    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    invoke-virtual {v13, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    #setter for: Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J
    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/mailservice/EASNotification;->access$002(Lcom/htc/android/mail/mailservice/EASNotification;J)J

    .line 40
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, action:Ljava/lang/String;
    const-string v2, "android.intent.action.mail.force_default_account"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.mail.sync_finish"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.mail.reset_default_account"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.mail.boot_complete"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$000(Lcom/htc/android/mail/mailservice/EASNotification;)J

    move-result-wide v2

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-gez v2, :cond_1

    .line 46
    const-string v2, "EAS_NOTIFI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Exchange Account! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v2, "android.intent.action.mail.cleanNotification"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    const-string v2, "isDeleteAccount"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 54
    .local v14, isDeleteAccount:Z
    :try_start_0
    new-instance v15, Lcom/htc/android/mail/SMTPAccountErrorNotification;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/htc/android/mail/SMTPAccountErrorNotification;-><init>(Landroid/content/Context;)V

    .line 55
    .local v15, notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$000(Lcom/htc/android/mail/mailservice/EASNotification;)J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->clearNotification(J)I

    .line 56
    new-instance v16, Lcom/htc/android/mail/SendErrorNotification;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 57
    .local v16, notify2:Lcom/htc/android/mail/SendErrorNotification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$000(Lcom/htc/android/mail/mailservice/EASNotification;)J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/SendErrorNotification;->clearNotification(J)I

    .line 58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J
    invoke-static {v3}, Lcom/htc/android/mail/mailservice/EASNotification;->access$000(Lcom/htc/android/mail/mailservice/EASNotification;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/NewMailNotification;->clearNotification(Landroid/content/Context;J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v15           #notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    .end local v16           #notify2:Lcom/htc/android/mail/SendErrorNotification;
    :catch_0
    move-exception v10

    .line 60
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v10           #e:Ljava/lang/Exception;
    .end local v14           #isDeleteAccount:Z
    :cond_2
    const-string v2, "android.intent.action.mail.cleanSendErrorNotification"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    const-string v2, "EAS_NOTIFI"

    const-string v3, "cleanSendErrorNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_1
    new-instance v16, Lcom/htc/android/mail/SendErrorNotification;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 66
    .restart local v16       #notify2:Lcom/htc/android/mail/SendErrorNotification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$000(Lcom/htc/android/mail/mailservice/EASNotification;)J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/SendErrorNotification;->clearNotification(J)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 68
    .end local v16           #notify2:Lcom/htc/android/mail/SendErrorNotification;
    :catch_1
    move-exception v10

    .line 69
    .restart local v10       #e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 71
    .end local v10           #e:Ljava/lang/Exception;
    :cond_3
    const-string v2, "android.intent.action.mail.sendErrorNotification"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 72
    const-string v2, "extra.eas.mail.sendmailErrorcode"

    const/4 v3, 0x2

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 74
    .local v17, type:I
    const-string v2, "errorCode"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 77
    .local v11, errorCode:I
    const/16 v2, 0x2eb

    if-ne v11, v2, :cond_4

    .line 78
    :try_start_2
    const-string v2, "EAS_NOTIFI"

    const-string v3, "sendmail fail (INSUFFICIENT_SERVER_STORAGE)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v15, Lcom/htc/android/mail/SendErrorNotification;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 80
    .local v15, notify:Lcom/htc/android/mail/SendErrorNotification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$000(Lcom/htc/android/mail/mailservice/EASNotification;)J

    move-result-wide v2

    const/16 v4, 0x2eb

    invoke-virtual {v15, v2, v3, v4}, Lcom/htc/android/mail/SendErrorNotification;->showNotification(JI)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 91
    .end local v15           #notify:Lcom/htc/android/mail/SendErrorNotification;
    :catch_2
    move-exception v10

    .line 92
    .restart local v10       #e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 81
    .end local v10           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_5

    .line 82
    :try_start_3
    const-string v2, "EAS_NOTIFI"

    const-string v3, "sendmail fail (account error)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v15, Lcom/htc/android/mail/SMTPAccountErrorNotification;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/htc/android/mail/SMTPAccountErrorNotification;-><init>(Landroid/content/Context;)V

    .line 84
    .local v15, notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$000(Lcom/htc/android/mail/mailservice/EASNotification;)J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->showNotification(J)I

    goto/16 :goto_0

    .line 87
    .end local v15           #notify:Lcom/htc/android/mail/SMTPAccountErrorNotification;
    :cond_5
    const-string v2, "EAS_NOTIFI"

    const-string v3, "sendmail fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v15, Lcom/htc/android/mail/SendErrorNotification;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/htc/android/mail/SendErrorNotification;-><init>(Landroid/content/Context;)V

    .line 89
    .local v15, notify:Lcom/htc/android/mail/SendErrorNotification;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$000(Lcom/htc/android/mail/mailservice/EASNotification;)J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lcom/htc/android/mail/SendErrorNotification;->showNotification(J)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 94
    .end local v11           #errorCode:I
    .end local v15           #notify:Lcom/htc/android/mail/SendErrorNotification;
    .end local v17           #type:I
    :cond_6
    const-string v2, "android.intent.action.mail.newMailNotification"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const-string v2, "android.intent.action.CONTACT_DB_CORRUPT"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 97
    new-instance v12, Landroid/content/Intent;

    const-string v2, "com.htc.android.eas.syncContacts"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v12, i:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 100
    .end local v12           #i:Landroid/content/Intent;
    :cond_7
    const-string v2, "android.intent.action.mail.updateShortcut"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 102
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J
    invoke-static {v3}, Lcom/htc/android/mail/mailservice/EASNotification;->access$000(Lcom/htc/android/mail/mailservice/EASNotification;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcutInLine(Landroid/content/Context;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 103
    :catch_3
    move-exception v10

    .line 104
    .restart local v10       #e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 106
    .end local v10           #e:Ljava/lang/Exception;
    :cond_8
    const-string v2, "android.intent.action.mail.new_mail_notification"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 107
    const-string v2, "unreadCount"

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 108
    .local v5, unreadCount:I
    const-string v2, "firstRecordId"

    const-wide/16 v3, -0x1

    invoke-virtual {v13, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 110
    .local v6, firstRecordId:J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J
    invoke-static {v3}, Lcom/htc/android/mail/mailservice/EASNotification;->access$000(Lcom/htc/android/mail/mailservice/EASNotification;)J

    move-result-wide v3

    invoke-static/range {v2 .. v7}, Lcom/htc/android/mail/NewMailNotification;->showNotificationInLine(Landroid/content/Context;JIJ)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 111
    :catch_4
    move-exception v10

    .line 112
    .restart local v10       #e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 114
    .end local v5           #unreadCount:I
    .end local v6           #firstRecordId:J
    .end local v10           #e:Ljava/lang/Exception;
    :cond_9
    const-string v2, "android.intent.action.mail.sync_finish"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 115
    sget-object v2, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J
    invoke-static {v3}, Lcom/htc/android/mail/mailservice/EASNotification;->access$000(Lcom/htc/android/mail/mailservice/EASNotification;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/MailEventBroadcaster;->setMailSyncFinish(J)V

    .line 116
    sget-object v2, Lcom/htc/android/mail/Mail;->mMailEvent:Lcom/htc/android/mail/MailEventBroadcaster;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailEventBroadcaster;->flush(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 117
    :cond_a
    const-string v2, "android.intent.action.mail.force_default_account"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 118
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/htc/android/mail/MailProvider;->getAccountCount(Z)I

    move-result v9

    .line 119
    .local v9, count:I
    if-lez v9, :cond_0

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/Account;->forceDefaultAccount(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 122
    .end local v9           #count:I
    :cond_b
    const-string v2, "android.intent.action.mail.reset_default_account"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 123
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->resetDefaultAccount()V

    goto/16 :goto_0

    .line 124
    :cond_c
    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.mail.account_last_update_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 126
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->accountId:J
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$000(Lcom/htc/android/mail/mailservice/EASNotification;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/htc/android/mail/MailProvider;->updateAccountLastUpdateTime(J)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 127
    :catch_5
    move-exception v10

    .line 128
    .restart local v10       #e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 130
    .end local v10           #e:Ljava/lang/Exception;
    :cond_d
    const-string v2, "android.intent.action.mail.boot_complete"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/NewMailNotification;->showAllNewMailNotificaition(Landroid/content/Context;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/SMTPAccountErrorNotification;->showAllSMTPAccountErrorNotificaition(Landroid/content/Context;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/mailservice/EASNotification$1;->this$0:Lcom/htc/android/mail/mailservice/EASNotification;

    #getter for: Lcom/htc/android/mail/mailservice/EASNotification;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/EASNotification;->access$100(Lcom/htc/android/mail/mailservice/EASNotification;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/mail/SendErrorNotification;->showAllSendErrorNotificaition(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 135
    :catch_6
    move-exception v10

    .line 136
    .restart local v10       #e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
