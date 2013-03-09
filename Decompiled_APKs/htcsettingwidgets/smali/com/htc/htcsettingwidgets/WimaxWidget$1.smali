.class Lcom/htc/htcsettingwidgets/WimaxWidget$1;
.super Landroid/content/BroadcastReceiver;
.source "WimaxWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcsettingwidgets/WimaxWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcsettingwidgets/WimaxWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcsettingwidgets/WimaxWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/htc/htcsettingwidgets/WimaxWidget$1;->this$0:Lcom/htc/htcsettingwidgets/WimaxWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x4

    .line 237
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget$1;->this$0:Lcom/htc/htcsettingwidgets/WimaxWidget;

    #getter for: Lcom/htc/htcsettingwidgets/WimaxWidget;->mWimaxController:Lcom/htc/net/wimax/WimaxController;
    invoke-static {v0}, Lcom/htc/htcsettingwidgets/WimaxWidget;->access$300(Lcom/htc/htcsettingwidgets/WimaxWidget;)Lcom/htc/net/wimax/WimaxController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/htc/htcsettingwidgets/WimaxWidget$1;->this$0:Lcom/htc/htcsettingwidgets/WimaxWidget;

    const-string v1, "curWimaxEnabledState"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "preWimaxEnabledState"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/htc/htcsettingwidgets/WimaxWidget;->handleWimaxStateChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/htcsettingwidgets/WimaxWidget;->access$400(Lcom/htc/htcsettingwidgets/WimaxWidget;II)V

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 265
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.net.wimax.WIMAX_4G_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method
