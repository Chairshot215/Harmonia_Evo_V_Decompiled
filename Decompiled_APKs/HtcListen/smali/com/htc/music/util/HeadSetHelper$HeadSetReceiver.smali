.class Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadSetHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/util/HeadSetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeadSetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/HeadSetHelper;


# direct methods
.method constructor <init>(Lcom/htc/music/util/HeadSetHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v9, v9, Lcom/htc/music/util/HeadSetHelper;->mIsWiredPlugged:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v9, v9, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    if-eqz v9, :cond_7

    :cond_0
    move v4, v8

    :goto_0
    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v3, v9, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsHeadset:Z

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v9, "[HeadSethelper]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HeadSetReceiver, action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Lcom/htc/music/util/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v5

    invoke-static {p1}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v2

    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v9, v9, Lcom/htc/music/util/HeadSetHelper;->mIsWiredPlugged:Z

    if-ne v9, v5, :cond_1

    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v9, v9, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsHeadset:Z

    if-eq v9, v2, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iput-boolean v5, v9, Lcom/htc/music/util/HeadSetHelper;->mIsWiredPlugged:Z

    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iput-boolean v2, v9, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsHeadset:Z

    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v9}, Lcom/htc/music/util/HeadSetHelper;->notifyMonitorWiredHeadSetChange()V

    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v9, v9, Lcom/htc/music/util/HeadSetHelper;->mIsWiredPlugged:Z

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v9, v9, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    if-eqz v9, :cond_4

    :cond_3
    move v7, v8

    :cond_4
    if-ne v4, v7, :cond_5

    iget-object v7, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v7, v7, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsHeadset:Z

    if-eq v3, v7, :cond_6

    :cond_5
    iget-object v7, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v7}, Lcom/htc/music/util/HeadSetHelper;->notifyMonitorHeadSetChange()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    move v4, v7

    goto :goto_0

    :cond_8
    const-string v9, "android.intent.action.ACTION_A2DP_PLUG"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "name"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "state"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v9, "[HeadSethelper]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HeadSetReceiver, ACTION_A2DP_PLUG, a2dpOn: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v8, :cond_9

    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v9, v9, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    if-eq v8, v9, :cond_6

    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    invoke-static {p1}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, v9, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    :goto_3
    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v9}, Lcom/htc/music/util/HeadSetHelper;->notifyMonitorBTHeadSetChange()V

    goto :goto_1

    :cond_9
    if-nez v0, :cond_6

    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v9, v9, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    invoke-static {p1}, Lcom/htc/music/util/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, v9, Lcom/htc/music/util/HeadSetHelper;->mIsBTPlugged:Z

    goto :goto_3

    :cond_a
    const-string v9, "com.htc.intent.action.BEATS_STATE_CHANGE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v8, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    const-string v9, "effect_on"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v8, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsOn:Z

    const-string v7, "[HeadSethelper]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HeadSetReceiver, ACTION_HTC_BEATS_STATE_CHANGE, mIsBeatsOn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    iget-boolean v9, v9, Lcom/htc/music/util/HeadSetHelper;->mIsBeatsOn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/htc/music/util/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/music/util/HeadSetHelper;

    invoke-virtual {v7}, Lcom/htc/music/util/HeadSetHelper;->notifyMonitorBeatsAudioStatusChange()V

    goto/16 :goto_2
.end method
