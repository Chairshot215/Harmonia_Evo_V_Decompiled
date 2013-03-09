.class Lcom/htc/android/mail/MailList$24;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->saveAsTask(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;

.field final synthetic val$_id:J

.field final synthetic val$_subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2580
    iput-object p1, p0, Lcom/htc/android/mail/MailList$24;->this$0:Lcom/htc/android/mail/MailList;

    iput-wide p2, p0, Lcom/htc/android/mail/MailList$24;->val$_id:J

    iput-object p4, p0, Lcom/htc/android/mail/MailList$24;->val$_subject:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 2583
    const/4 v10, 0x0

    .line 2584
    .local v10, c:Landroid/database/Cursor;
    const-string v14, ""

    .line 2585
    .local v14, from:Ljava/lang/String;
    const-string v15, ""

    .line 2586
    .local v15, fromEmail:Ljava/lang/String;
    const-string v17, ""

    .line 2587
    .local v17, sender:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_from"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_fromEmail"

    aput-object v3, v4, v2

    .line 2588
    .local v4, projections:[Ljava/lang/String;
    const-string v5, "_id = ?"

    .line 2589
    .local v5, where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList$24;->val$_id:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 2590
    .local v6, args:[Ljava/lang/String;
    const-string v13, "MAIL"

    .line 2593
    .local v13, fieldName:Ljava/lang/String;
    :try_start_0
    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.htc.task.ACTION_CREATE_TASK"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2594
    .local v16, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/android/mail/MailList$24;->val$_id:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 2596
    .local v18, url:Landroid/net/Uri;
    const-string v2, "com.htc.task.TASK_TITLE"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/MailList$24;->val$_subject:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$24;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$3700(Lcom/htc/android/mail/MailList;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/android/mail/MailProvider;->sMessagesURI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2598
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2599
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2600
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2603
    :cond_0
    if-eqz v14, :cond_3

    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2604
    move-object/from16 v17, v14

    .line 2609
    :goto_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "From: %s\nSubject: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v17, v7, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/MailList$24;->val$_subject:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v7, v19

    invoke-static {v2, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2611
    .local v9, body:Ljava/lang/String;
    const-string v2, "com.htc.task.TASK_DESCRIPTION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "from "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2612
    const-string v2, "com.htc.task.IMPORTER"

    const-string v3, "com.htc.android.mail"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2614
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2615
    .local v11, data:Landroid/os/Bundle;
    const-string v2, "com.htc.task.ADDED_TITLE"

    invoke-virtual {v11, v2, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    const-string v2, "com.htc.task.ADDED_BODY"

    invoke-virtual {v11, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    const-string v2, "com.htc.task.ADDED_PINTENT_ACTION"

    const-string v3, "android.htc.mail.READ_MAIL"

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    const-string v2, "com.htc.task.ADDED_PINTENT_DATA"

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 2621
    .local v8, allData:Landroid/os/Bundle;
    invoke-virtual {v8, v13, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2622
    const-string v2, "com.htc.task.ADDED_FIELDS_BUNDLE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$24;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$3100(Lcom/htc/android/mail/MailList;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/MailList$24;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$3100(Lcom/htc/android/mail/MailList;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2634
    :cond_1
    if-eqz v10, :cond_2

    .line 2635
    .end local v8           #allData:Landroid/os/Bundle;
    .end local v9           #body:Ljava/lang/String;
    .end local v11           #data:Landroid/os/Bundle;
    .end local v16           #intent:Landroid/content/Intent;
    .end local v18           #url:Landroid/net/Uri;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2638
    :cond_2
    return-void

    .line 2606
    .restart local v16       #intent:Landroid/content/Intent;
    .restart local v18       #url:Landroid/net/Uri;
    :cond_3
    move-object/from16 v17, v15

    goto/16 :goto_0

    .line 2627
    .end local v16           #intent:Landroid/content/Intent;
    .end local v18           #url:Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 2628
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 2629
    instance-of v2, v12, Landroid/content/ActivityNotFoundException;

    if-eqz v2, :cond_4

    .line 2630
    const-string v2, "MailList"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2632
    :cond_4
    const-string v2, "MailList"

    const-string v3, "Save as task fail"

    invoke-static {v2, v3, v12}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2634
    if-eqz v10, :cond_2

    goto :goto_1

    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_5

    .line 2635
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2634
    :cond_5
    throw v2
.end method
