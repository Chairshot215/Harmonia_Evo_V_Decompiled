.class Lcom/htc/android/mail/eassvc/EASAppSvc$7;
.super Landroid/content/BroadcastReceiver;
.source "EASAppSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/EASAppSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/EASAppSvc;)V
    .locals 0
    .parameter

    .prologue
    .line 2362
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$7;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 2365
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "EASAppSvc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive(): intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    :cond_0
    if-nez p2, :cond_2

    .line 2415
    :cond_1
    :goto_0
    return-void

    .line 2369
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$7;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsServiceDestroy:Z
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$2400(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2370
    const-string v4, "EASAppSvc"

    const-string v5, "onReceive(): service is already destroy, skip this broadcast."

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2374
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2375
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.htc.eas.intent.pauseSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2376
    const-string v4, "com.htc.eas.extra.tag"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2377
    .local v3, tag:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "EASAppSvc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT_PAUSE_SYNC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2378
    :cond_4
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$7;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v4, v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->setPause(Ljava/lang/String;)V

    goto :goto_0

    .line 2379
    .end local v3           #tag:Ljava/lang/String;
    :cond_5
    const-string v4, "com.htc.eas.intent.resumeSync"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2380
    const-string v4, "com.htc.eas.extra.tag"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2381
    .restart local v3       #tag:Ljava/lang/String;
    const-string v4, "com.htc.eas.extra.delayTime"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2382
    .local v2, delayTime:I
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "EASAppSvc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT_RESUME_SYNC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    :cond_6
    if-lez v2, :cond_7

    .line 2384
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$7;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v4, v3, v2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->setResume(Ljava/lang/String;I)V

    goto :goto_0

    .line 2386
    :cond_7
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$7;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v4, v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->setResume(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2388
    .end local v2           #delayTime:I
    .end local v3           #tag:Ljava/lang/String;
    :cond_8
    const-string v4, "com.htc.content.Intent.ACTION_BACKGROUND_OP_STOP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2389
    const-string v4, "com.htc.content.Intent.EXTRA_SENDER"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2390
    .local v1, caller:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2391
    const-string v4, "EASAppSvc"

    const-string v5, "No Sender in HTC_LAUNCHER_INTENT_PAUSE."

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    const-string v1, "com.htc.android.launcher"

    .line 2394
    :cond_9
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "EASAppSvc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT_PAUSE_SYNC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    :cond_a
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$7;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v4, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->setPause(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2396
    .end local v1           #caller:Ljava/lang/String;
    :cond_b
    const-string v4, "com.htc.content.Intent.ACTION_BACKGROUND_OP_GO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2397
    const-string v4, "com.htc.content.Intent.EXTRA_SENDER"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2398
    .restart local v1       #caller:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2399
    const-string v4, "EASAppSvc"

    const-string v5, "No Sender in HTC_LAUNCHER_INTENT_RESUME."

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    const-string v1, "com.htc.android.launcher"

    .line 2402
    :cond_c
    const-string v4, "com.htc.content.Intent.EXTRA_BACKGROUND_GO_DELAYED"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2403
    .restart local v2       #delayTime:I
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "EASAppSvc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INTENT_RESUME_SYNC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    :cond_d
    if-lez v2, :cond_e

    .line 2405
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$7;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v4, v1, v2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->setResume(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2407
    :cond_e
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$7;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v4, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->setResume(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2409
    .end local v1           #caller:Ljava/lang/String;
    .end local v2           #delayTime:I
    :cond_f
    const-string v4, "intent.eas.mail.priority.high"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2410
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$7;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->forceResume()V

    goto/16 :goto_0

    .line 2411
    :cond_10
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2413
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$7;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->forceResume()V

    goto/16 :goto_0
.end method
