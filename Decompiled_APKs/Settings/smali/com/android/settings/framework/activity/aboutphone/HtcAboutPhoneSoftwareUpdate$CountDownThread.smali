.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;
.super Ljava/lang/Thread;
.source "HtcAboutPhoneSoftwareUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountDownThread"
.end annotation


# instance fields
.field protected stop:Z

.field final synthetic this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)V
    .locals 1
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->stop:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x3c

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 324
    const/4 v6, 0x1

    :try_start_0
    sput-boolean v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->threadIsRun:Z

    .line 325
    const-string v6, "OMADMLib"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+second:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 327
    .local v4, tmp:J
    const-wide/16 v0, 0x0

    .line 328
    .local v0, count:J
    :goto_0
    sget v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    if-lez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->stop:Z

    if-nez v6, :cond_0

    .line 331
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "OMC_RUNNING"

    invoke-static {v6, v9}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getIntkey(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->stop:Z

    .line 332
    iget-boolean v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->stop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    .line 362
    :cond_0
    const-string v6, "OMADMLib"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-second:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v6, :cond_1

    .line 365
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 366
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    const-string v9, "CountDownThread,mAlertDialog.dismiss()"

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 369
    :cond_1
    sput v12, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    .line 370
    const-string v6, "OMADMLib"

    const-string v9, "run session"

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->runSessionAction:Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v3, inner:Landroid/content/Intent;
    const-string v6, "RUN"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 373
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 374
    .end local v0           #count:J
    .end local v4           #tmp:J
    :goto_2
    sput-boolean v8, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->threadIsRun:Z

    .line 376
    return-void

    .end local v3           #inner:Landroid/content/Intent;
    .restart local v0       #count:J
    .restart local v4       #tmp:J
    :cond_2
    move v6, v8

    .line 331
    goto :goto_1

    .line 334
    :cond_3
    const-wide/16 v9, 0x3e8

    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 335
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "OMC_RUNNING"

    invoke-static {v6, v9}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->getIntkey(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->stop:Z

    .line 336
    iget-boolean v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->stop:Z

    if-nez v6, :cond_0

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v0, v9, v4

    .line 340
    sget v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    .line 343
    sget v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    if-gtz v6, :cond_4

    .line 344
    const/16 v6, 0x3c

    sput v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    .line 345
    const-string v6, "OMADMLib"

    const-string v9, "< re wait >"

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_4
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    #getter for: Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->countdownSecond:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->access$000(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .restart local v3       #inner:Landroid/content/Intent;
    const-string v6, "SECONDS"

    sget v9, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 357
    .end local v0           #count:J
    .end local v3           #inner:Landroid/content/Intent;
    .end local v4           #tmp:J
    :catch_0
    move-exception v2

    .line 358
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "OMADMLib"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CountDownThread:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 362
    const-string v6, "OMADMLib"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-second:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v6, :cond_5

    .line 365
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 366
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    const-string v9, "CountDownThread,mAlertDialog.dismiss()"

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 369
    :cond_5
    sput v12, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    .line 370
    const-string v6, "OMADMLib"

    const-string v9, "run session"

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->runSessionAction:Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .restart local v3       #inner:Landroid/content/Intent;
    const-string v6, "RUN"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 373
    iget-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v6, v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #inner:Landroid/content/Intent;
    .restart local v0       #count:J
    .restart local v4       #tmp:J
    :cond_6
    move v6, v8

    .line 335
    goto/16 :goto_3

    .line 362
    .end local v0           #count:J
    .end local v4           #tmp:J
    :catchall_0
    move-exception v6

    const-string v9, "OMADMLib"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-second:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v9, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v9, v9, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v9, :cond_7

    .line 365
    iget-object v9, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v9, v9, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 366
    iget-object v9, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v9, v9, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->TAG:Ljava/lang/String;

    const-string v10, "CountDownThread,mAlertDialog.dismiss()"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v9, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v9, v9, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 369
    :cond_7
    sput v12, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->second:I

    .line 370
    const-string v9, "OMADMLib"

    const-string v10, "run session"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v3, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v9, v9, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->runSessionAction:Ljava/lang/String;

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .restart local v3       #inner:Landroid/content/Intent;
    const-string v9, "RUN"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 373
    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate$CountDownThread;->this$0:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;

    iget-object v7, v7, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 374
    sput-boolean v8, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareUpdate;->threadIsRun:Z

    .line 362
    throw v6
.end method
