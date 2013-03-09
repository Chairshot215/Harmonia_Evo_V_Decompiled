.class Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadSetHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/utils/HeadSetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeadSetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/utils/HeadSetHelper;


# direct methods
.method constructor <init>(Lcom/htc/dmc/utils/HeadSetHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/dmc/utils/HeadSetHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 214
    iget-object v7, p0, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/dmc/utils/HeadSetHelper;

    iget-boolean v7, v7, Lcom/htc/dmc/utils/HeadSetHelper;->mIsWiredPlugged:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/dmc/utils/HeadSetHelper;

    iget-boolean v7, v7, Lcom/htc/dmc/utils/HeadSetHelper;->mIsBTPlugged:Z

    if-eqz v7, :cond_5

    :cond_0
    move v2, v6

    .line 215
    .local v2, isHeadsetPluggedLastTime:Z
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, action:Ljava/lang/String;
    const-string v7, "[HeadSethelper]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HeadSetReceiver, action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 218
    invoke-static {}, Lcom/htc/dmc/utils/HeadSetHelper;->isWiredHeadsetPlugged()Z

    move-result v3

    .line 220
    .local v3, isPlugged:Z
    iget-object v7, p0, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/dmc/utils/HeadSetHelper;

    iget-boolean v7, v7, Lcom/htc/dmc/utils/HeadSetHelper;->mIsWiredPlugged:Z

    if-eq v7, v3, :cond_1

    .line 221
    iget-object v7, p0, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/dmc/utils/HeadSetHelper;

    iput-boolean v3, v7, Lcom/htc/dmc/utils/HeadSetHelper;->mIsWiredPlugged:Z

    .line 222
    iget-object v7, p0, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/dmc/utils/HeadSetHelper;

    invoke-virtual {v7}, Lcom/htc/dmc/utils/HeadSetHelper;->notifyMonitorWiredHeadSetChange()V

    .line 251
    .end local v3           #isPlugged:Z
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/dmc/utils/HeadSetHelper;

    iget-boolean v7, v7, Lcom/htc/dmc/utils/HeadSetHelper;->mIsWiredPlugged:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/dmc/utils/HeadSetHelper;

    iget-boolean v7, v7, Lcom/htc/dmc/utils/HeadSetHelper;->mIsBTPlugged:Z

    if-eqz v7, :cond_3

    :cond_2
    move v5, v6

    :cond_3
    if-eq v2, v5, :cond_4

    .line 252
    iget-object v5, p0, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/dmc/utils/HeadSetHelper;

    invoke-virtual {v5}, Lcom/htc/dmc/utils/HeadSetHelper;->notifyMonitorHeadSetChange()V

    .line 255
    :cond_4
    return-void

    .end local v1           #action:Ljava/lang/String;
    .end local v2           #isHeadsetPluggedLastTime:Z
    :cond_5
    move v2, v5

    .line 214
    goto :goto_0

    .line 224
    .restart local v1       #action:Ljava/lang/String;
    .restart local v2       #isHeadsetPluggedLastTime:Z
    :cond_6
    const-string v7, "android.intent.action.ACTION_A2DP_PLUG"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 225
    const-string v7, "name"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, name:Ljava/lang/String;
    const-string v7, "state"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 228
    .local v0, a2dpOn:I
    const-string v7, "A2DP"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 232
    const-string v7, "[HeadSethelper]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HeadSetReceiver, ACTION_A2DP_PLUG, a2dpOn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/dmc/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-ne v0, v6, :cond_7

    .line 234
    iget-object v7, p0, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/dmc/utils/HeadSetHelper;

    iget-boolean v7, v7, Lcom/htc/dmc/utils/HeadSetHelper;->mIsBTPlugged:Z

    if-eq v6, v7, :cond_4

    .line 237
    iget-object v7, p0, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/dmc/utils/HeadSetHelper;

    invoke-static {p1}, Lcom/htc/dmc/utils/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/htc/dmc/utils/HeadSetHelper;->mIsBTPlugged:Z

    .line 248
    :goto_2
    iget-object v7, p0, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/dmc/utils/HeadSetHelper;

    invoke-virtual {v7}, Lcom/htc/dmc/utils/HeadSetHelper;->notifyMonitorBTHeadSetChange()V

    goto :goto_1

    .line 239
    :cond_7
    if-nez v0, :cond_4

    .line 240
    iget-object v7, p0, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/dmc/utils/HeadSetHelper;

    iget-boolean v7, v7, Lcom/htc/dmc/utils/HeadSetHelper;->mIsBTPlugged:Z

    if-eqz v7, :cond_4

    .line 243
    iget-object v7, p0, Lcom/htc/dmc/utils/HeadSetHelper$HeadSetReceiver;->this$0:Lcom/htc/dmc/utils/HeadSetHelper;

    invoke-static {p1}, Lcom/htc/dmc/utils/HeadSetHelper;->isBTHeadsetPlugged(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/htc/dmc/utils/HeadSetHelper;->mIsBTPlugged:Z

    goto :goto_2
.end method
