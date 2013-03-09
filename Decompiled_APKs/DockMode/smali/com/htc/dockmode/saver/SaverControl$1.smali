.class Lcom/htc/dockmode/saver/SaverControl$1;
.super Landroid/content/BroadcastReceiver;
.source "SaverControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/saver/SaverControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/saver/SaverControl;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/saver/SaverControl;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/dockmode/saver/SaverControl$1;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl$1;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mStopped:Z
    invoke-static {v1}, Lcom/htc/dockmode/saver/SaverControl;->access$000(Lcom/htc/dockmode/saver/SaverControl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl$1;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "level"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #calls: Lcom/htc/dockmode/saver/SaverControl;->handleBatteryUpdate(II)V
    invoke-static {v1, v2, v3}, Lcom/htc/dockmode/saver/SaverControl;->access$100(Lcom/htc/dockmode/saver/SaverControl;II)V

    goto :goto_0
.end method
