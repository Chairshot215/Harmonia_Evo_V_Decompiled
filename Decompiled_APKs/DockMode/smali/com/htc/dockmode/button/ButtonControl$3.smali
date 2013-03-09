.class Lcom/htc/dockmode/button/ButtonControl$3;
.super Landroid/content/BroadcastReceiver;
.source "ButtonControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/button/ButtonControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/button/ButtonControl;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/button/ButtonControl;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/htc/dockmode/button/ButtonControl$3;->this$0:Lcom/htc/dockmode/button/ButtonControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 342
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl$3;->this$0:Lcom/htc/dockmode/button/ButtonControl;

    #setter for: Lcom/htc/dockmode/button/ButtonControl;->mButtonEnabled:Z
    invoke-static {v0, v2}, Lcom/htc/dockmode/button/ButtonControl;->access$302(Lcom/htc/dockmode/button/ButtonControl;Z)Z

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl$3;->this$0:Lcom/htc/dockmode/button/ButtonControl;

    #getter for: Lcom/htc/dockmode/button/ButtonControl;->mStopped:Z
    invoke-static {v0}, Lcom/htc/dockmode/button/ButtonControl;->access$400(Lcom/htc/dockmode/button/ButtonControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl$3;->this$0:Lcom/htc/dockmode/button/ButtonControl;

    #setter for: Lcom/htc/dockmode/button/ButtonControl;->mMediaChanged:Z
    invoke-static {v0, v2}, Lcom/htc/dockmode/button/ButtonControl;->access$502(Lcom/htc/dockmode/button/ButtonControl;Z)Z

    .line 353
    :cond_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl$3;->this$0:Lcom/htc/dockmode/button/ButtonControl;

    const/4 v1, 0x0

    #setter for: Lcom/htc/dockmode/button/ButtonControl;->mButtonEnabled:Z
    invoke-static {v0, v1}, Lcom/htc/dockmode/button/ButtonControl;->access$302(Lcom/htc/dockmode/button/ButtonControl;Z)Z

    goto :goto_0
.end method
