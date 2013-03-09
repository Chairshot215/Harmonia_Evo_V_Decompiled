.class Lcom/android/mms/ui/PreHandleIntentActivity$1;
.super Lcom/android/mms/util/MmsAsyncWorkHandler;
.source "PreHandleIntentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/PreHandleIntentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/PreHandleIntentActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/PreHandleIntentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/mms/ui/PreHandleIntentActivity$1;->this$0:Lcom/android/mms/ui/PreHandleIntentActivity;

    invoke-direct {p0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage_Debug(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 320
    iget v10, p1, Landroid/os/Message;->what:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 321
    .local v9, token:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 325
    :sswitch_0
    iget-object v10, p0, Lcom/android/mms/ui/PreHandleIntentActivity$1;->this$0:Lcom/android/mms/ui/PreHandleIntentActivity;

    invoke-virtual {v10}, Lcom/android/mms/ui/PreHandleIntentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 326
    .local v5, it:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 327
    .local v2, data:Landroid/net/Uri;
    const-string v10, "sms_body"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, body:Ljava/lang/String;
    const-string v10, "exit_on_sent"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 329
    .local v3, exitOnSent:Z
    const-string v10, "thread_id"

    const-wide/16 v11, 0x0

    invoke-virtual {v5, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 330
    .local v7, threadID:J
    const/4 v0, 0x0

    .line 331
    .local v0, address:Ljava/lang/String;
    const/4 v6, 0x0

    .line 332
    .local v6, scheme:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 333
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 334
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 335
    const-string v10, "PreHandleIntentActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scheme: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMms()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMS2Email()Z

    move-result v10

    if-nez v10, :cond_2

    .line 340
    invoke-static {v0}, Landroid/provider/Telephony$Sms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 341
    const-string v10, "PreHandleIntentActivity"

    const-string v11, "don\'t support sms to email. return"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v10, p0, Lcom/android/mms/ui/PreHandleIntentActivity$1;->this$0:Lcom/android/mms/ui/PreHandleIntentActivity;

    invoke-virtual {v10}, Lcom/android/mms/ui/PreHandleIntentActivity;->isFinishing()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/PreHandleIntentActivity$1;->this$0:Lcom/android/mms/ui/PreHandleIntentActivity;

    invoke-virtual {v10}, Lcom/android/mms/ui/PreHandleIntentActivity;->finish()V

    goto :goto_0

    .line 347
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    if-lez v10, :cond_6

    .line 349
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 351
    const-string v10, "PreHandleIntentActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "thread id before mapping: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v10, p0, Lcom/android/mms/ui/PreHandleIntentActivity$1;->this$0:Lcom/android/mms/ui/PreHandleIntentActivity;

    invoke-virtual {v10}, Lcom/android/mms/ui/PreHandleIntentActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-static {v10, v7, v8, v11, v12}, Lcom/android/mms/ui/MessageUtils;->getContactIdFromThreadID(Landroid/content/Context;JJ)J

    move-result-wide v7

    .line 361
    :cond_3
    :goto_1
    const-string v10, "PreHandleIntentActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SENDTO threadID > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v4, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/PreHandleIntentActivity$1;->this$0:Lcom/android/mms/ui/PreHandleIntentActivity;

    invoke-virtual {v10}, Lcom/android/mms/ui/PreHandleIntentActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    const-class v11, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    .local v4, intent:Landroid/content/Intent;
    if-eqz v2, :cond_4

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 365
    :cond_4
    const-string v10, "sms_body"

    invoke-virtual {v4, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v10, "IsSendto"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    const-string v10, "thread_id"

    invoke-virtual {v4, v10, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 368
    const-string v10, "exit_on_sent"

    invoke-virtual {v4, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 370
    const-string v10, "address"

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    :cond_5
    iget-object v10, p0, Lcom/android/mms/ui/PreHandleIntentActivity$1;->this$0:Lcom/android/mms/ui/PreHandleIntentActivity;

    invoke-virtual {v10}, Lcom/android/mms/ui/PreHandleIntentActivity;->isFinishing()Z

    move-result v10

    if-nez v10, :cond_0

    .line 373
    iget-object v10, p0, Lcom/android/mms/ui/PreHandleIntentActivity$1;->this$0:Lcom/android/mms/ui/PreHandleIntentActivity;

    #calls: Lcom/android/mms/ui/PreHandleIntentActivity;->runTraditionModeFlow(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v10, v0, v1}, Lcom/android/mms/ui/PreHandleIntentActivity;->access$100(Lcom/android/mms/ui/PreHandleIntentActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 374
    iget-object v10, p0, Lcom/android/mms/ui/PreHandleIntentActivity$1;->this$0:Lcom/android/mms/ui/PreHandleIntentActivity;

    invoke-virtual {v10, v4}, Lcom/android/mms/ui/PreHandleIntentActivity;->startActivity(Landroid/content/Intent;)V

    .line 375
    iget-object v10, p0, Lcom/android/mms/ui/PreHandleIntentActivity$1;->this$0:Lcom/android/mms/ui/PreHandleIntentActivity;

    invoke-virtual {v10}, Lcom/android/mms/ui/PreHandleIntentActivity;->finish()V

    goto/16 :goto_0

    .line 355
    .end local v4           #intent:Landroid/content/Intent;
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 359
    iget-object v10, p0, Lcom/android/mms/ui/PreHandleIntentActivity$1;->this$0:Lcom/android/mms/ui/PreHandleIntentActivity;

    iget-object v11, p0, Lcom/android/mms/ui/PreHandleIntentActivity$1;->this$0:Lcom/android/mms/ui/PreHandleIntentActivity;

    invoke-virtual {v11}, Lcom/android/mms/ui/PreHandleIntentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    #calls: Lcom/android/mms/ui/PreHandleIntentActivity;->getSendToThreadIDbyNumber(Landroid/content/Intent;)J
    invoke-static {v10, v11}, Lcom/android/mms/ui/PreHandleIntentActivity;->access$000(Lcom/android/mms/ui/PreHandleIntentActivity;Landroid/content/Intent;)J

    move-result-wide v7

    goto :goto_1

    .line 360
    :cond_7
    const-wide/16 v7, 0x0

    goto :goto_1

    .line 381
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #body:Ljava/lang/String;
    .end local v2           #data:Landroid/net/Uri;
    .end local v3           #exitOnSent:Z
    .end local v5           #it:Landroid/content/Intent;
    .end local v6           #scheme:Ljava/lang/String;
    .end local v7           #threadID:J
    :sswitch_1
    iget-object v11, p0, Lcom/android/mms/ui/PreHandleIntentActivity$1;->this$0:Lcom/android/mms/ui/PreHandleIntentActivity;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/content/Intent;

    #calls: Lcom/android/mms/ui/PreHandleIntentActivity;->handleActionView(Landroid/content/Intent;)V
    invoke-static {v11, v10}, Lcom/android/mms/ui/PreHandleIntentActivity;->access$200(Lcom/android/mms/ui/PreHandleIntentActivity;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 321
    nop

    :sswitch_data_0
    .sparse-switch
        0x708 -> :sswitch_0
        0x4ee9 -> :sswitch_1
    .end sparse-switch
.end method
