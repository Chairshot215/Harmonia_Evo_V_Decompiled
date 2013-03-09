.class Lcom/htc/video/HeadSetHelper$HeadSetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadSetHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/HeadSetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeadSetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/HeadSetHelper;


# direct methods
.method constructor <init>(Lcom/htc/video/HeadSetHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/htc/video/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/video/HeadSetHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, -0x1

    .line 279
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, action:Ljava/lang/String;
    const/4 v2, 0x0

    .line 282
    .local v2, isPlugged:Z
    if-eqz v0, :cond_7

    const-string v9, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 284
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isHeadsetPlugged()Z

    move-result v4

    .line 285
    .local v4, isPluggedHeadset:Z
    iget-object v9, p0, Lcom/htc/video/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/video/HeadSetHelper;

    #getter for: Lcom/htc/video/HeadSetHelper;->mH2WStatus:Z
    invoke-static {v9}, Lcom/htc/video/HeadSetHelper;->access$100(Lcom/htc/video/HeadSetHelper;)Z

    move-result v9

    if-eq v9, v2, :cond_0

    .line 287
    iget-object v9, p0, Lcom/htc/video/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/video/HeadSetHelper;

    #setter for: Lcom/htc/video/HeadSetHelper;->mH2WStatus:Z
    invoke-static {v9, v2}, Lcom/htc/video/HeadSetHelper;->access$102(Lcom/htc/video/HeadSetHelper;Z)Z

    .line 291
    :cond_0
    invoke-static {}, Lcom/htc/video/HeadSetHelper;->isBeatsHeadsetPlugged()Z

    move-result v3

    .line 292
    .local v3, isPluggedBeats:Z
    iget-object v9, p0, Lcom/htc/video/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/video/HeadSetHelper;

    #getter for: Lcom/htc/video/HeadSetHelper;->mBeatsStatus:Z
    invoke-static {v9}, Lcom/htc/video/HeadSetHelper;->access$200(Lcom/htc/video/HeadSetHelper;)Z

    move-result v9

    if-eq v9, v2, :cond_1

    .line 294
    iget-object v9, p0, Lcom/htc/video/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/video/HeadSetHelper;

    #setter for: Lcom/htc/video/HeadSetHelper;->mBeatsStatus:Z
    invoke-static {v9, v2}, Lcom/htc/video/HeadSetHelper;->access$202(Lcom/htc/video/HeadSetHelper;Z)Z

    .line 297
    :cond_1
    if-nez v4, :cond_2

    if-eqz v3, :cond_6

    :cond_2
    move v2, v8

    .line 347
    .end local v3           #isPluggedBeats:Z
    .end local v4           #isPluggedHeadset:Z
    :cond_3
    :goto_0
    const-string v9, "HeadSethelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Beats State change = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "com.htc.intent.action.BEATS_STATE_CHANGE"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    if-eqz v0, :cond_4

    const-string v9, "com.htc.intent.action.BEATS_STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 350
    const-string v9, "effect_on"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 351
    .local v1, beatsState:I
    const-string v9, "HeadSethelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "beatsState"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-nez v1, :cond_d

    .line 353
    invoke-static {v7}, Lcom/htc/video/HeadSetHelper;->access$402(Z)Z

    .line 357
    :goto_1
    const-string v7, "HeadSethelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mBeatsEffectState"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/htc/video/HeadSetHelper;->access$400()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v1           #beatsState:I
    :cond_4
    iget-object v7, p0, Lcom/htc/video/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/video/HeadSetHelper;

    #getter for: Lcom/htc/video/HeadSetHelper;->mListener:Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;
    invoke-static {v7}, Lcom/htc/video/HeadSetHelper;->access$500(Lcom/htc/video/HeadSetHelper;)Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 362
    iget-object v7, p0, Lcom/htc/video/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/video/HeadSetHelper;

    #getter for: Lcom/htc/video/HeadSetHelper;->mListener:Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;
    invoke-static {v7}, Lcom/htc/video/HeadSetHelper;->access$500(Lcom/htc/video/HeadSetHelper;)Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/htc/video/HeadSetHelper$MonitorHeadSetStatus;->StatusChanged(Z)V

    .line 364
    :cond_5
    return-void

    .restart local v3       #isPluggedBeats:Z
    .restart local v4       #isPluggedHeadset:Z
    :cond_6
    move v2, v7

    .line 297
    goto :goto_0

    .line 299
    .end local v3           #isPluggedBeats:Z
    .end local v4           #isPluggedHeadset:Z
    :cond_7
    if-eqz v0, :cond_8

    const-string v9, "android.intent.action.ACTION_A2DP_PLUG"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 301
    const-string v9, "name"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 302
    .local v5, name:Ljava/lang/String;
    const-string v9, "A2DP"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 307
    invoke-static {p1}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v2

    .line 308
    iget-object v9, p0, Lcom/htc/video/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/video/HeadSetHelper;

    #getter for: Lcom/htc/video/HeadSetHelper;->mA2DPStatus:Z
    invoke-static {v9}, Lcom/htc/video/HeadSetHelper;->access$300(Lcom/htc/video/HeadSetHelper;)Z

    move-result v9

    if-eq v9, v2, :cond_3

    .line 310
    iget-object v9, p0, Lcom/htc/video/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/video/HeadSetHelper;

    #setter for: Lcom/htc/video/HeadSetHelper;->mA2DPStatus:Z
    invoke-static {v9, v2}, Lcom/htc/video/HeadSetHelper;->access$302(Lcom/htc/video/HeadSetHelper;Z)Z

    goto/16 :goto_0

    .line 329
    .end local v5           #name:Ljava/lang/String;
    :cond_8
    if-eqz v0, :cond_3

    const-string v9, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 331
    const-string v9, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 332
    .local v6, state:I
    invoke-static {p1}, Lcom/htc/video/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v2

    .line 333
    if-eqz v6, :cond_9

    if-ne v6, v12, :cond_b

    .line 335
    :cond_9
    const/4 v2, 0x0

    .line 342
    :cond_a
    :goto_2
    iget-object v9, p0, Lcom/htc/video/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/video/HeadSetHelper;

    #getter for: Lcom/htc/video/HeadSetHelper;->mA2DPStatus:Z
    invoke-static {v9}, Lcom/htc/video/HeadSetHelper;->access$300(Lcom/htc/video/HeadSetHelper;)Z

    move-result v9

    if-eq v9, v2, :cond_3

    .line 344
    iget-object v9, p0, Lcom/htc/video/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/video/HeadSetHelper;

    #setter for: Lcom/htc/video/HeadSetHelper;->mA2DPStatus:Z
    invoke-static {v9, v2}, Lcom/htc/video/HeadSetHelper;->access$302(Lcom/htc/video/HeadSetHelper;Z)Z

    goto/16 :goto_0

    .line 337
    :cond_b
    if-eq v6, v8, :cond_c

    const/4 v9, 0x2

    if-ne v6, v9, :cond_a

    .line 339
    :cond_c
    const/4 v2, 0x1

    goto :goto_2

    .line 355
    .end local v6           #state:I
    .restart local v1       #beatsState:I
    :cond_d
    invoke-static {v8}, Lcom/htc/video/HeadSetHelper;->access$402(Z)Z

    goto/16 :goto_1
.end method
