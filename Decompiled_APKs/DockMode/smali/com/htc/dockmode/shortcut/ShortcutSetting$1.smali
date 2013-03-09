.class Lcom/htc/dockmode/shortcut/ShortcutSetting$1;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/shortcut/ShortcutSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/shortcut/ShortcutSetting;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/shortcut/ShortcutSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting$1;->this$0:Lcom/htc/dockmode/shortcut/ShortcutSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, action:Ljava/lang/String;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting$1;->this$0:Lcom/htc/dockmode/shortcut/ShortcutSetting;

    invoke-virtual {v1}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->releaseReceiver()V

    .line 110
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/ShortcutSetting$1;->this$0:Lcom/htc/dockmode/shortcut/ShortcutSetting;

    invoke-virtual {v1}, Lcom/htc/dockmode/shortcut/ShortcutSetting;->finish()V

    .line 112
    :cond_0
    return-void
.end method
