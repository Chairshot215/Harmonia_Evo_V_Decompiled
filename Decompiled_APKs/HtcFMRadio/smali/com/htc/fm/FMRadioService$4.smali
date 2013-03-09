.class Lcom/htc/fm/FMRadioService$4;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadioService;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 376
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadioService] BroadcastReceiver onReceive() Action("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") mFMBinded("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mFMBinded:Z
    invoke-static {v4}, Lcom/htc/fm/FMRadioService;->access$900(Lcom/htc/fm/FMRadioService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, action:Ljava/lang/String;
    const-string v2, "command"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, cmd:Ljava/lang/String;
    const-string v2, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    sput-boolean v6, Lcom/htc/fm/FMRadioService;->mQuickBootPoweroff:Z

    .line 398
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->pause()V

    .line 400
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    #calls: Lcom/htc/fm/FMRadioService;->fmTurnOff()V
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$1000(Lcom/htc/fm/FMRadioService;)V

    .line 404
    :cond_0
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    #setter for: Lcom/htc/fm/FMRadioService;->mIsScreenOn:Z
    invoke-static {v2, v5}, Lcom/htc/fm/FMRadioService;->access$1102(Lcom/htc/fm/FMRadioService;Z)Z

    .line 406
    sput-boolean v5, Lcom/htc/fm/FMTunerController$TunerInfo;->isScreenOn:Z

    .line 407
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->isRssiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    const-string v2, "FMRadioService"

    const-string v3, "Screen Off, Stop query RSSI"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->setRssiOff()V

    .line 414
    :cond_1
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 415
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    #setter for: Lcom/htc/fm/FMRadioService;->mIsScreenOn:Z
    invoke-static {v2, v6}, Lcom/htc/fm/FMRadioService;->access$1102(Lcom/htc/fm/FMRadioService;Z)Z

    .line 416
    sput-boolean v6, Lcom/htc/fm/FMTunerController$TunerInfo;->isScreenOn:Z

    .line 417
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->isRssiEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 419
    const-string v2, "FMRadioService"

    const-string v3, "Screen On, Start query RSSI"

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->setRssiOn()V

    .line 424
    :cond_2
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FMRadioService] BroadcastReceiver onReceive() cmd("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") action("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/fm/FMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v2, "preset_data_changed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 427
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    #calls: Lcom/htc/fm/FMRadioService;->reloadPresets()V
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$1200(Lcom/htc/fm/FMRadioService;)V

    .line 462
    :cond_3
    :goto_0
    return-void

    .line 431
    :cond_4
    const-string v2, "next"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.htc.music.musicservicecommand.next"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.android.music.musicservicecommand.next"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 432
    :cond_5
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->next()V

    goto :goto_0

    .line 433
    :cond_6
    const-string v2, "previous"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "com.htc.music.musicservicecommand.previous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 434
    :cond_7
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->prev()V

    goto :goto_0

    .line 435
    :cond_8
    const-string v2, "togglepause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "com.htc.music.musicservicecommand.togglepause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 436
    :cond_9
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->isBroadcasting()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 437
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->pause()V

    goto :goto_0

    .line 439
    :cond_a
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->play()V

    goto :goto_0

    .line 441
    :cond_b
    const-string v2, "pause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "com.htc.music.musicservicecommand.pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 442
    :cond_c
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->pause()V

    goto/16 :goto_0

    .line 443
    :cond_d
    const-string v2, "play"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 444
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->play()V

    goto/16 :goto_0

    .line 445
    :cond_e
    const-string v2, "stop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 446
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->isBroadcasting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 447
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    invoke-virtual {v2}, Lcom/htc/fm/FMRadioService;->pause()V

    goto/16 :goto_0

    .line 449
    :cond_f
    const-string v2, "ffstart"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 450
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    iget-object v2, v2, Lcom/htc/fm/FMRadioService;->mFFSeekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 451
    :cond_10
    const-string v2, "rwstart"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 452
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    iget-object v2, v2, Lcom/htc/fm/FMRadioService;->mFFSeekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 453
    :cond_11
    const-string v2, "ffstop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v2, "rwstop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 454
    :cond_12
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    iget-object v2, v2, Lcom/htc/fm/FMRadioService;->mFFSeekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 455
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    iget-object v2, v2, Lcom/htc/fm/FMRadioService;->mFFSeekHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 456
    :cond_13
    const-string v2, "resume"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 457
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    #getter for: Lcom/htc/fm/FMRadioService;->mResumeAfterCall:Z
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$1300(Lcom/htc/fm/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    #calls: Lcom/htc/fm/FMRadioService;->startAndFadeIn()V
    invoke-static {v2}, Lcom/htc/fm/FMRadioService;->access$1400(Lcom/htc/fm/FMRadioService;)V

    .line 459
    iget-object v2, p0, Lcom/htc/fm/FMRadioService$4;->this$0:Lcom/htc/fm/FMRadioService;

    #setter for: Lcom/htc/fm/FMRadioService;->mResumeAfterCall:Z
    invoke-static {v2, v5}, Lcom/htc/fm/FMRadioService;->access$1302(Lcom/htc/fm/FMRadioService;Z)Z

    goto/16 :goto_0
.end method
