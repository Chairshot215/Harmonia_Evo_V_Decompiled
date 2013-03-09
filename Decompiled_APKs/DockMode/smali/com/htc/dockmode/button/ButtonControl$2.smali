.class Lcom/htc/dockmode/button/ButtonControl$2;
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
    .line 321
    iput-object p1, p0, Lcom/htc/dockmode/button/ButtonControl$2;->this$0:Lcom/htc/dockmode/button/ButtonControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 324
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 328
    .local v1, state:I
    if-nez v1, :cond_0

    .line 330
    iget-object v2, p0, Lcom/htc/dockmode/button/ButtonControl$2;->this$0:Lcom/htc/dockmode/button/ButtonControl;

    #getter for: Lcom/htc/dockmode/button/ButtonControl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/dockmode/button/ButtonControl;->access$200(Lcom/htc/dockmode/button/ButtonControl;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 336
    .end local v1           #state:I
    :cond_0
    return-void
.end method
