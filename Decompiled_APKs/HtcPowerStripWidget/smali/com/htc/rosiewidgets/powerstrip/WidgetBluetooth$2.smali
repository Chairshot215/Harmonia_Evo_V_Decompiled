.class Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$2;
.super Landroid/content/BroadcastReceiver;
.source "WidgetBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;


# direct methods
.method constructor <init>(Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, action:Ljava/lang/String;
    const-string v3, "WidgetBluetooth"

    const-string v4, "mBTStateReceiver: onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    invoke-virtual {v3}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->updateIcon()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    const-string v3, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 199
    .local v2, prev_state:I
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 200
    .local v1, cur_state:I
    const-string v3, "HtcPowerStripWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###### prev_state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cur_state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eq v1, v6, :cond_0

    .line 205
    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    .line 207
    const-string v3, "WidgetBluetooth"

    const-string v4, "playmarker_on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    invoke-virtual {v3}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->updateIcon()V

    .line 209
    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    #setter for: Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mbStateChanging:Z
    invoke-static {v3, v7}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->access$002(Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;Z)Z

    goto :goto_0

    .line 211
    :cond_2
    const/16 v3, 0xb

    if-eq v1, v3, :cond_3

    const/16 v3, 0xd

    if-ne v1, v3, :cond_4

    .line 215
    :cond_3
    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    const/4 v4, 0x1

    #setter for: Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mbStateChanging:Z
    invoke-static {v3, v4}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->access$002(Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;Z)Z

    goto :goto_0

    .line 217
    :cond_4
    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    .line 219
    const-string v3, "WidgetBluetooth"

    const-string v4, "playmarker_off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    invoke-virtual {v3}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->updateIcon()V

    .line 221
    iget-object v3, p0, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth$2;->this$0:Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;

    #setter for: Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->mbStateChanging:Z
    invoke-static {v3, v7}, Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;->access$002(Lcom/htc/rosiewidgets/powerstrip/WidgetBluetooth;Z)Z

    goto :goto_0
.end method
