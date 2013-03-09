.class Landroid/support/v13/dreams/BasicDream$1;
.super Landroid/content/BroadcastReceiver;
.source "BasicDream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/dreams/BasicDream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v13/dreams/BasicDream;


# direct methods
.method constructor <init>(Landroid/support/v13/dreams/BasicDream;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Landroid/support/v13/dreams/BasicDream$1;->this$0:Landroid/support/v13/dreams/BasicDream;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    const-string v3, "plugged"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 67
    .local v1, plugged:Z
    :goto_0
    iget-object v2, p0, Landroid/support/v13/dreams/BasicDream$1;->this$0:Landroid/support/v13/dreams/BasicDream;

    #getter for: Landroid/support/v13/dreams/BasicDream;->mPlugged:Z
    invoke-static {v2}, Landroid/support/v13/dreams/BasicDream;->access$000(Landroid/support/v13/dreams/BasicDream;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 68
    const-string v3, "BasicDream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "now "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string v2, "plugged in"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v2, p0, Landroid/support/v13/dreams/BasicDream$1;->this$0:Landroid/support/v13/dreams/BasicDream;

    #setter for: Landroid/support/v13/dreams/BasicDream;->mPlugged:Z
    invoke-static {v2, v1}, Landroid/support/v13/dreams/BasicDream;->access$002(Landroid/support/v13/dreams/BasicDream;Z)Z

    .line 71
    iget-object v2, p0, Landroid/support/v13/dreams/BasicDream$1;->this$0:Landroid/support/v13/dreams/BasicDream;

    #getter for: Landroid/support/v13/dreams/BasicDream;->mPlugged:Z
    invoke-static {v2}, Landroid/support/v13/dreams/BasicDream;->access$000(Landroid/support/v13/dreams/BasicDream;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    iget-object v2, p0, Landroid/support/v13/dreams/BasicDream$1;->this$0:Landroid/support/v13/dreams/BasicDream;

    invoke-virtual {v2}, Landroid/support/v13/dreams/BasicDream;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 78
    .end local v1           #plugged:Z
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v2

    .line 65
    goto :goto_0

    .line 68
    .restart local v1       #plugged:Z
    :cond_2
    const-string v2, "unplugged"

    goto :goto_1

    .line 74
    :cond_3
    iget-object v2, p0, Landroid/support/v13/dreams/BasicDream$1;->this$0:Landroid/support/v13/dreams/BasicDream;

    invoke-virtual {v2}, Landroid/support/v13/dreams/BasicDream;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2
.end method
