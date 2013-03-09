.class Lcom/htc/dockmode/shortcut/SelectAppActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SelectAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/shortcut/SelectAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/shortcut/SelectAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$3;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, state:I
    if-nez v1, :cond_0

    .line 146
    iget-object v2, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$3;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    invoke-virtual {v2}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->releaseReceiver()V

    .line 147
    iget-object v2, p0, Lcom/htc/dockmode/shortcut/SelectAppActivity$3;->this$0:Lcom/htc/dockmode/shortcut/SelectAppActivity;

    invoke-virtual {v2}, Lcom/htc/dockmode/shortcut/SelectAppActivity;->finish()V

    .line 151
    .end local v1           #state:I
    :cond_0
    return-void
.end method
