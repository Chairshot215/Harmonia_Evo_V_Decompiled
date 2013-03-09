.class Lcom/htc/dockmode/button/ButtonControl$4;
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
    .line 389
    iput-object p1, p0, Lcom/htc/dockmode/button/ButtonControl$4;->this$0:Lcom/htc/dockmode/button/ButtonControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 392
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.dockmode.shortcut.changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/htc/dockmode/button/ButtonControl$4;->this$0:Lcom/htc/dockmode/button/ButtonControl;

    #calls: Lcom/htc/dockmode/button/ButtonControl;->initView()V
    invoke-static {v0}, Lcom/htc/dockmode/button/ButtonControl;->access$600(Lcom/htc/dockmode/button/ButtonControl;)V

    .line 396
    :cond_0
    return-void
.end method
