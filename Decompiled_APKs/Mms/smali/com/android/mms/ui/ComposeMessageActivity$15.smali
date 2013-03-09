.class Lcom/android/mms/ui/ComposeMessageActivity$15;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->resendShortMessage(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$msgId1:J

.field final synthetic val$threadId1:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5510
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-wide p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->val$msgId1:J

    iput-wide p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$15;->val$threadId1:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 5513
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$15;->val$msgId1:J

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 5514
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x4

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "address"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "body"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "thread_id"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "locked"

    aput-object v7, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 5517
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_2

    .line 5519
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5526
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5527
    .local v4, dest:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 5528
    .local v5, body:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 5529
    .local v8, realTid:J
    const/4 v1, 0x3

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v15, 0x1

    .line 5530
    .local v15, locked:Z
    :goto_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$15;->val$threadId1:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$15;->val$msgId1:J

    invoke-static/range {v4 .. v11}, Lcom/android/mms/ui/MessageUtils;->createSmsMessageSenderIntent(Ljava/lang/String;Ljava/lang/String;JJJ)Landroid/content/Intent;

    move-result-object v14

    .line 5533
    .local v14, intent:Landroid/content/Intent;
    if-eqz v15, :cond_0

    const-string v1, "locked"

    invoke-virtual {v14, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5534
    :cond_0
    new-instance v16, Lcom/android/mms/transaction/SmsMessageSender;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v14}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 5535
    .local v16, sender:Lcom/android/mms/transaction/MessageSender;
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$15;->val$threadId1:J

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 5536
    invoke-static {}, Lcom/android/mms/MmsApp;->isImproveSmsSending()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5539
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ComposeMessageActivity$15;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, v2, v3, v6, v7}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5546
    .end local v4           #dest:Ljava/lang/String;
    .end local v5           #body:Ljava/lang/String;
    .end local v8           #realTid:J
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #locked:Z
    .end local v16           #sender:Lcom/android/mms/transaction/MessageSender;
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 5550
    :cond_2
    :goto_1
    return-void

    .line 5529
    .restart local v4       #dest:Ljava/lang/String;
    .restart local v5       #body:Ljava/lang/String;
    .restart local v8       #realTid:J
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 5543
    .end local v4           #dest:Ljava/lang/String;
    .end local v5           #body:Ljava/lang/String;
    .end local v8           #realTid:J
    :catch_0
    move-exception v13

    .line 5544
    .local v13, e:Lcom/google/android/mms/MmsException;
    :try_start_1
    const-string v1, "ComposeMessageActivity"

    invoke-virtual {v13}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5546
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v13           #e:Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1
.end method
